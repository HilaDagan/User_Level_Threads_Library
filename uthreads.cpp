// uthread.h
/*
 * User-Level Threads Library (uthreads)
 */ //check

#include "uthreads.h"
#include "Thread.cpp"
#include <vector>
#include <algorithm> // todo - is ok?
#include <map>


/* Containers */
static std::map<int, Thread> threadsDic; // contain all the existing threads.// todo - include the main?
// the current number of threads in the size of the dic + 1 (for the main thread)
static std::vector<int> blockedThreads; // contain all threads id that are currently
// blocked.
static std::vector<int> readyThreads; // contain all threads id that are currently ready
// to run.


static std::vector<unsigned int> unusedId; // threads id that are unused.
static unsigned int idCounter; // the first unused id.
static int quantum;  // the length of a quantum in micro-seconds.
static const int FAILURE = -1;


/*
 * Description: This function initializes the thread library.
 * You may assume that this function is called before any other thread library
 * function, and that it is called exactly once. The input to the function is
 * the length of a quantum in micro-seconds. It is an error to call this
 * function with non-positive quantum_usecs.
 * Return value: On success, return 0. On failure, return -1.
*/
int uthread_init(int quantum_usecs){
    if (quantum_usecs <= 0)
    {
        return FAILURE;
    }
    quantum = (unsigned int) quantum_usecs;
    Thread::curRunningId = 0; // the main thread.
    //todo - should we add it to the dic?
    idCounter = 1; // 0 is used by the main thread.
    return 0;
}


/*
 * Description: This function finds the samllest non-negative integer not already
 * taken by an existing thread.
 */
unsigned int findId()
{
    unsigned int newId;
    std::vector<unsigned int>::iterator minId = std::min_element(std::begin(unusedId),
                                                                 std::end(unusedId));
    if (idCounter < *minId)
    {
        newId = idCounter;
        idCounter++;
    } else {
        newId = *minId;
        unusedId.erase(minId);
    }
    return newId;
}


/*
 * Description: This function creates a new thread, whose entry point is the
 * function f with the signature void f(void). The thread is added to the end
 * of the READY threads list. The uthread_spawn function should fail if it
 * would cause the number of concurrent threads to exceed the limit
 * (MAX_THREAD_NUM). Each thread should be allocated with a stack of size
 * STACK_SIZE bytes.
 * Return value: On success, return the ID of the created thread.
 * On failure, return -1.
*/
int uthread_spawn(void (*f)(void)){
    int newId;

    if (threadsDic.size() == MAX_THREAD_NUM){
        return FAILURE;
    }
    newId = findId();
    Thread newThread = Thread(newId, f, STACK_SIZE);
    threadsDic[newId] = newThread;
    readyThreads.push_back(newId); // add the new thread to the end of the READY threads list.
    return newId;
}

/*
 * Remove the given terminated thread from the dependencies lists of other threads.
 */
void removeFromDependencyList(const Thread deadThread, const int id)
{
    // If the dead thread was dependent in other thread, remove it from the dependency list
    // of that thread:
    if (deadThread.getDependentIn() != nullptr) {
        threadsDic[deadThread.getDependentIn()].removeDependentThread(id);
    }

    // If there are threads that are dependent in the given dead thread,
    // remove it and change their state to READY.
    std::vector<int> vec = deadThread.getDependenciesList();
    for (int i = 0; i < vec.size(); ++i)
    {
        threadsDic[vec[i]].resetDependentIn();
        readyThreads.push_back(vec[0]);
    }
}


/*
 * Description: This function terminates the thread with ID tid and deletes
 * it from all relevant control structures. All the resources allocated by
 * the library for this thread should be released. If no thread with ID tid
 * exists it is considered as an error. Terminating the main thread
 * (tid == 0) will result in the termination of the entire process using
 * exit(0) [after releasing the assigned library memory].
 * Return value: The function returns 0 if the thread was successfully
 * terminated and -1 otherwise. If a thread terminates itself or the main
 * thread is terminated, the function does not return.
*/
int uthread_terminate(int tid){ //todo
    if (tid == 0) { // terminating the main thread
        //todo releasing the assigned library memory
        exit(0);
    }
    if (tid == Thread::curRunningId) {  // a thread terminates itself
        //todo - not return
    }
    if (threadsDic.find(tid) == threadsDic.end()) { // no thread with ID tid exist
        return FAILURE;
    }

    Thread threadToTerminate = threadsDic[tid];
    ThreadState tstate = threadToTerminate.getState();
    if (tstate == READY) { // removes from the READY threads list.
        readyThreads.erase(remove(readyThreads.begin(), readyThreads.end(), tid),
                           readyThreads.end());

    } else if (tstate == BLOCKED) {  // removes from the BLOCKED threads list.
        blockedThreads.erase(remove(blockedThreads.begin(), blockedThreads.end(), tid),
                             blockedThreads.end());
    }

    removeFromDependencyList(threadToTerminate, tid);
    threadsDic.erase(tid);
    return 0;
}



/*
 * Description: This function blocks the thread with ID tid. The thread may
 * be resumed later using uthread_resume. If no thread with ID tid exists it
 * is considered as an error. In addition, it is an error to try blocking the
 * main thread (tid == 0). If a thread blocks itself, a scheduling decision
 * should be made. Blocking a thread in BLOCKED state has no
 * effect and is not considered as an error.
 * Return value: On success, return 0. On failure, return -1.
*/
int uthread_block(int tid) {
    // no thread with ID tid exist or trying to block the main thread:
    if ((threadsDic.find(tid) == threadsDic.end()) or (tid == 0)) {
        return FAILURE;
    }
    if (Thread::curRunningId == tid) {  // a thread blocks itself
        // todo - a scheduling decision should be made.
    }
    if (threadsDic[tid].getState() == READY) {
        readyThreads.erase(remove(readyThreads.begin(), readyThreads.end(), tid),
                           readyThreads.end());
    }
    if (threadsDic[tid].getState() != BLOCKED and threadsDic[tid].getState() != SYNCED)
    {
        threadsDic[tid].setState(BLOCKED);
        blockedThreads.push_back(tid);
    }
    return 0;
}


/*
 * Description: This function resumes a blocked thread with ID tid and moves
 * it to the READY state. Resuming a thread in a RUNNING or READY state
 * has no effect and is not considered as an error. If no thread with
 * ID tid exists it is considered as an error.
 * Return value: On success, return 0. On failure, return -1.
*/
int uthread_resume(int tid)
{
    // no thread with ID tid exist or trying to block the main thread:
    if ((threadsDic.find(tid) == threadsDic.end()) or (tid == 0)) {
        return FAILURE;
    }
    if (threadsDic[tid].getState() != RUNNING and threadsDic[tid].getState() != READY){
        threadsDic[tid].setState(READY);
        readyThreads.push_back(tid);
    }
    return 0;
}


/*
 * Description: This function blocks the RUNNING thread until thread with
 * ID tid will terminate. It is considered an error if no thread with ID tid
 * exists or if the main thread (tid==0) calls this function. Immediately after the
 * RUNNING thread transitions to the BLOCKED state a scheduling decision should be made.
 * Return value: On success, return 0. On failure, return -1.
*/
int uthread_sync(int tid){
    // no thread with ID tid exist or trying to sync the main thread:
    if ((threadsDic.find(tid) == threadsDic.end()) or (tid == 0)) {
        return FAILURE;
    }

    Thread curThread = threadsDic[Thread::curRunningId];
    curThread.setState(SYNCED);
    curThread.setDependentIn(tid); // the current thread is dependent on tid.

    threadsDic[tid].addToDependenciesList(Thread::curRunningId); // add this thread to the list.
    //todo -  a scheduling decision should be made. here? or outside this function?
    return 0;
}


/*
 * Description: This function returns the thread ID of the calling thread.
 * Return value: The ID of the calling thread.
*/
int uthread_get_tid(){
    return Thread::curRunningId;
}


/*
 * Description: This function returns the total number of quantums that were
 * started since the library was initialized, including the current quantum.
 * Right after the call to uthread_init, the value should be 1.
 * Each time a new quantum starts, regardless of the reason, this number
 * should be increased by 1.
 * Return value: The total number of quantums.
*/
int uthread_get_total_quantums();//todo


/*
 * Description: This function returns the number of quantums the thread with
 * ID tid was in RUNNING state. On the first time a thread runs, the function
 * should return 1. Every additional quantum that the thread starts should
 * increase this value by 1 (so if the thread with ID tid is in RUNNING state
 * when this function is called, include also the current quantum). If no
 * thread with ID tid exists it is considered as an error.
 * Return value: On success, return the number of quantums of the thread with ID tid. On failure, return -1.
*/
int uthread_get_quantums(int tid);//todo


