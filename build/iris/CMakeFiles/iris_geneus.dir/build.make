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
CMAKE_SOURCE_DIR = /home/catipsum/Documents/ngeteh/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/catipsum/Documents/ngeteh/build

# Utility rule file for iris_geneus.

# Include the progress variables for this target.
include iris/CMakeFiles/iris_geneus.dir/progress.make

iris_geneus: iris/CMakeFiles/iris_geneus.dir/build.make

.PHONY : iris_geneus

# Rule to build all files generated by this target.
iris/CMakeFiles/iris_geneus.dir/build: iris_geneus

.PHONY : iris/CMakeFiles/iris_geneus.dir/build

iris/CMakeFiles/iris_geneus.dir/clean:
	cd /home/catipsum/Documents/ngeteh/build/iris && $(CMAKE_COMMAND) -P CMakeFiles/iris_geneus.dir/cmake_clean.cmake
.PHONY : iris/CMakeFiles/iris_geneus.dir/clean

iris/CMakeFiles/iris_geneus.dir/depend:
	cd /home/catipsum/Documents/ngeteh/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/catipsum/Documents/ngeteh/src /home/catipsum/Documents/ngeteh/src/iris /home/catipsum/Documents/ngeteh/build /home/catipsum/Documents/ngeteh/build/iris /home/catipsum/Documents/ngeteh/build/iris/CMakeFiles/iris_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : iris/CMakeFiles/iris_geneus.dir/depend

