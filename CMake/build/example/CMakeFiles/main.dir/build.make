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
CMAKE_SOURCE_DIR = /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build

# Include any dependencies generated for this target.
include example/CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include example/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/main.dir/flags.make

example/CMakeFiles/main.dir/main.cpp.o: example/CMakeFiles/main.dir/flags.make
example/CMakeFiles/main.dir/main.cpp.o: ../example/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/CMakeFiles/main.dir/main.cpp.o"
	cd /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build/example && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/main.cpp.o -c /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/example/main.cpp

example/CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	cd /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/example/main.cpp > CMakeFiles/main.dir/main.cpp.i

example/CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	cd /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/example/main.cpp -o CMakeFiles/main.dir/main.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

example/main: example/CMakeFiles/main.dir/main.cpp.o
example/main: example/CMakeFiles/main.dir/build.make
example/main: src/libsimplecmake.a
example/main: example/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main"
	cd /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/main.dir/build: example/main

.PHONY : example/CMakeFiles/main.dir/build

example/CMakeFiles/main.dir/clean:
	cd /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build/example && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/main.dir/clean

example/CMakeFiles/main.dir/depend:
	cd /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/example /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build/example /home/kpit/Desktop/C-Training-KPIT/c-programming/CMake/build/example/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/main.dir/depend

