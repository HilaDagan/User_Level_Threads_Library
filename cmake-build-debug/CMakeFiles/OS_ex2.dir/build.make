# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/jetbrains/clion-2017.2.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/jetbrains/clion-2017.2.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/OS_ex2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OS_ex2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OS_ex2.dir/flags.make

CMakeFiles/OS_ex2.dir/main.cpp.o: CMakeFiles/OS_ex2.dir/flags.make
CMakeFiles/OS_ex2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OS_ex2.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OS_ex2.dir/main.cpp.o -c /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/main.cpp

CMakeFiles/OS_ex2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OS_ex2.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/main.cpp > CMakeFiles/OS_ex2.dir/main.cpp.i

CMakeFiles/OS_ex2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OS_ex2.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/main.cpp -o CMakeFiles/OS_ex2.dir/main.cpp.s

CMakeFiles/OS_ex2.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/OS_ex2.dir/main.cpp.o.requires

CMakeFiles/OS_ex2.dir/main.cpp.o.provides: CMakeFiles/OS_ex2.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/OS_ex2.dir/build.make CMakeFiles/OS_ex2.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/OS_ex2.dir/main.cpp.o.provides

CMakeFiles/OS_ex2.dir/main.cpp.o.provides.build: CMakeFiles/OS_ex2.dir/main.cpp.o


CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o: CMakeFiles/OS_ex2.dir/flags.make
CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o: ../uthreads_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o -c /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/uthreads_test.cpp

CMakeFiles/OS_ex2.dir/uthreads_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OS_ex2.dir/uthreads_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/uthreads_test.cpp > CMakeFiles/OS_ex2.dir/uthreads_test.cpp.i

CMakeFiles/OS_ex2.dir/uthreads_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OS_ex2.dir/uthreads_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/uthreads_test.cpp -o CMakeFiles/OS_ex2.dir/uthreads_test.cpp.s

CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o.requires:

.PHONY : CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o.requires

CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o.provides: CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/OS_ex2.dir/build.make CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o.provides.build
.PHONY : CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o.provides

CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o.provides.build: CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o


CMakeFiles/OS_ex2.dir/Thread.cpp.o: CMakeFiles/OS_ex2.dir/flags.make
CMakeFiles/OS_ex2.dir/Thread.cpp.o: ../Thread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OS_ex2.dir/Thread.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OS_ex2.dir/Thread.cpp.o -c /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/Thread.cpp

CMakeFiles/OS_ex2.dir/Thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OS_ex2.dir/Thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/Thread.cpp > CMakeFiles/OS_ex2.dir/Thread.cpp.i

CMakeFiles/OS_ex2.dir/Thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OS_ex2.dir/Thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/Thread.cpp -o CMakeFiles/OS_ex2.dir/Thread.cpp.s

CMakeFiles/OS_ex2.dir/Thread.cpp.o.requires:

.PHONY : CMakeFiles/OS_ex2.dir/Thread.cpp.o.requires

CMakeFiles/OS_ex2.dir/Thread.cpp.o.provides: CMakeFiles/OS_ex2.dir/Thread.cpp.o.requires
	$(MAKE) -f CMakeFiles/OS_ex2.dir/build.make CMakeFiles/OS_ex2.dir/Thread.cpp.o.provides.build
.PHONY : CMakeFiles/OS_ex2.dir/Thread.cpp.o.provides

CMakeFiles/OS_ex2.dir/Thread.cpp.o.provides.build: CMakeFiles/OS_ex2.dir/Thread.cpp.o


# Object files for target OS_ex2
OS_ex2_OBJECTS = \
"CMakeFiles/OS_ex2.dir/main.cpp.o" \
"CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o" \
"CMakeFiles/OS_ex2.dir/Thread.cpp.o"

# External object files for target OS_ex2
OS_ex2_EXTERNAL_OBJECTS =

OS_ex2: CMakeFiles/OS_ex2.dir/main.cpp.o
OS_ex2: CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o
OS_ex2: CMakeFiles/OS_ex2.dir/Thread.cpp.o
OS_ex2: CMakeFiles/OS_ex2.dir/build.make
OS_ex2: CMakeFiles/OS_ex2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable OS_ex2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OS_ex2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OS_ex2.dir/build: OS_ex2

.PHONY : CMakeFiles/OS_ex2.dir/build

CMakeFiles/OS_ex2.dir/requires: CMakeFiles/OS_ex2.dir/main.cpp.o.requires
CMakeFiles/OS_ex2.dir/requires: CMakeFiles/OS_ex2.dir/uthreads_test.cpp.o.requires
CMakeFiles/OS_ex2.dir/requires: CMakeFiles/OS_ex2.dir/Thread.cpp.o.requires

.PHONY : CMakeFiles/OS_ex2.dir/requires

CMakeFiles/OS_ex2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OS_ex2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OS_ex2.dir/clean

CMakeFiles/OS_ex2.dir/depend:
	cd /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2 /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2 /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/cmake-build-debug /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/cmake-build-debug /cs/usr/dan.kovalsky/safe/OSProj/OS_ex2/cmake-build-debug/CMakeFiles/OS_ex2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OS_ex2.dir/depend

