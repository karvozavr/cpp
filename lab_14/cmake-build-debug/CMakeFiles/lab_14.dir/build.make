# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/karvozavr/lessons/cpp/forked/cpp/lab_14

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/karvozavr/lessons/cpp/forked/cpp/lab_14/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab_14.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab_14.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab_14.dir/flags.make

CMakeFiles/lab_14.dir/src/main.cpp.o: CMakeFiles/lab_14.dir/flags.make
CMakeFiles/lab_14.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karvozavr/lessons/cpp/forked/cpp/lab_14/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab_14.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab_14.dir/src/main.cpp.o -c /home/karvozavr/lessons/cpp/forked/cpp/lab_14/src/main.cpp

CMakeFiles/lab_14.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab_14.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karvozavr/lessons/cpp/forked/cpp/lab_14/src/main.cpp > CMakeFiles/lab_14.dir/src/main.cpp.i

CMakeFiles/lab_14.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab_14.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karvozavr/lessons/cpp/forked/cpp/lab_14/src/main.cpp -o CMakeFiles/lab_14.dir/src/main.cpp.s

CMakeFiles/lab_14.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/lab_14.dir/src/main.cpp.o.requires

CMakeFiles/lab_14.dir/src/main.cpp.o.provides: CMakeFiles/lab_14.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab_14.dir/build.make CMakeFiles/lab_14.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/lab_14.dir/src/main.cpp.o.provides

CMakeFiles/lab_14.dir/src/main.cpp.o.provides.build: CMakeFiles/lab_14.dir/src/main.cpp.o


CMakeFiles/lab_14.dir/src/matrix.cpp.o: CMakeFiles/lab_14.dir/flags.make
CMakeFiles/lab_14.dir/src/matrix.cpp.o: ../src/matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karvozavr/lessons/cpp/forked/cpp/lab_14/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lab_14.dir/src/matrix.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab_14.dir/src/matrix.cpp.o -c /home/karvozavr/lessons/cpp/forked/cpp/lab_14/src/matrix.cpp

CMakeFiles/lab_14.dir/src/matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab_14.dir/src/matrix.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karvozavr/lessons/cpp/forked/cpp/lab_14/src/matrix.cpp > CMakeFiles/lab_14.dir/src/matrix.cpp.i

CMakeFiles/lab_14.dir/src/matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab_14.dir/src/matrix.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karvozavr/lessons/cpp/forked/cpp/lab_14/src/matrix.cpp -o CMakeFiles/lab_14.dir/src/matrix.cpp.s

CMakeFiles/lab_14.dir/src/matrix.cpp.o.requires:

.PHONY : CMakeFiles/lab_14.dir/src/matrix.cpp.o.requires

CMakeFiles/lab_14.dir/src/matrix.cpp.o.provides: CMakeFiles/lab_14.dir/src/matrix.cpp.o.requires
	$(MAKE) -f CMakeFiles/lab_14.dir/build.make CMakeFiles/lab_14.dir/src/matrix.cpp.o.provides.build
.PHONY : CMakeFiles/lab_14.dir/src/matrix.cpp.o.provides

CMakeFiles/lab_14.dir/src/matrix.cpp.o.provides.build: CMakeFiles/lab_14.dir/src/matrix.cpp.o


# Object files for target lab_14
lab_14_OBJECTS = \
"CMakeFiles/lab_14.dir/src/main.cpp.o" \
"CMakeFiles/lab_14.dir/src/matrix.cpp.o"

# External object files for target lab_14
lab_14_EXTERNAL_OBJECTS =

lab_14: CMakeFiles/lab_14.dir/src/main.cpp.o
lab_14: CMakeFiles/lab_14.dir/src/matrix.cpp.o
lab_14: CMakeFiles/lab_14.dir/build.make
lab_14: CMakeFiles/lab_14.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/karvozavr/lessons/cpp/forked/cpp/lab_14/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable lab_14"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab_14.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab_14.dir/build: lab_14

.PHONY : CMakeFiles/lab_14.dir/build

CMakeFiles/lab_14.dir/requires: CMakeFiles/lab_14.dir/src/main.cpp.o.requires
CMakeFiles/lab_14.dir/requires: CMakeFiles/lab_14.dir/src/matrix.cpp.o.requires

.PHONY : CMakeFiles/lab_14.dir/requires

CMakeFiles/lab_14.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab_14.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab_14.dir/clean

CMakeFiles/lab_14.dir/depend:
	cd /home/karvozavr/lessons/cpp/forked/cpp/lab_14/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/karvozavr/lessons/cpp/forked/cpp/lab_14 /home/karvozavr/lessons/cpp/forked/cpp/lab_14 /home/karvozavr/lessons/cpp/forked/cpp/lab_14/cmake-build-debug /home/karvozavr/lessons/cpp/forked/cpp/lab_14/cmake-build-debug /home/karvozavr/lessons/cpp/forked/cpp/lab_14/cmake-build-debug/CMakeFiles/lab_14.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab_14.dir/depend

