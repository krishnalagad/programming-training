# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/build

# Include any dependencies generated for this target.
include CMakeFiles/testmath.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testmath.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testmath.dir/flags.make

CMakeFiles/testmath.dir/main.cpp.o: CMakeFiles/testmath.dir/flags.make
CMakeFiles/testmath.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testmath.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testmath.dir/main.cpp.o -c /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/main.cpp

CMakeFiles/testmath.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testmath.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/main.cpp > CMakeFiles/testmath.dir/main.cpp.i

CMakeFiles/testmath.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testmath.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/main.cpp -o CMakeFiles/testmath.dir/main.cpp.s

# Object files for target testmath
testmath_OBJECTS = \
"CMakeFiles/testmath.dir/main.cpp.o"

# External object files for target testmath
testmath_EXTERNAL_OBJECTS =

testmath: CMakeFiles/testmath.dir/main.cpp.o
testmath: CMakeFiles/testmath.dir/build.make
testmath: CMakeFiles/testmath.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testmath"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testmath.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testmath.dir/build: testmath

.PHONY : CMakeFiles/testmath.dir/build

CMakeFiles/testmath.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testmath.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testmath.dir/clean

CMakeFiles/testmath.dir/depend:
	cd /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/build /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/build /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/LibraryDemo/cpp-test/build/CMakeFiles/testmath.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testmath.dir/depend

