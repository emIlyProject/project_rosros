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

# Include any dependencies generated for this target.
include iris/CMakeFiles/ball.dir/depend.make

# Include the progress variables for this target.
include iris/CMakeFiles/ball.dir/progress.make

# Include the compile flags for this target's objects.
include iris/CMakeFiles/ball.dir/flags.make

iris/CMakeFiles/ball.dir/src/ball.cpp.o: iris/CMakeFiles/ball.dir/flags.make
iris/CMakeFiles/ball.dir/src/ball.cpp.o: /home/catipsum/Documents/ngeteh/src/iris/src/ball.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/catipsum/Documents/ngeteh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object iris/CMakeFiles/ball.dir/src/ball.cpp.o"
	cd /home/catipsum/Documents/ngeteh/build/iris && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ball.dir/src/ball.cpp.o -c /home/catipsum/Documents/ngeteh/src/iris/src/ball.cpp

iris/CMakeFiles/ball.dir/src/ball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ball.dir/src/ball.cpp.i"
	cd /home/catipsum/Documents/ngeteh/build/iris && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/catipsum/Documents/ngeteh/src/iris/src/ball.cpp > CMakeFiles/ball.dir/src/ball.cpp.i

iris/CMakeFiles/ball.dir/src/ball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ball.dir/src/ball.cpp.s"
	cd /home/catipsum/Documents/ngeteh/build/iris && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/catipsum/Documents/ngeteh/src/iris/src/ball.cpp -o CMakeFiles/ball.dir/src/ball.cpp.s

# Object files for target ball
ball_OBJECTS = \
"CMakeFiles/ball.dir/src/ball.cpp.o"

# External object files for target ball
ball_EXTERNAL_OBJECTS =

/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: iris/CMakeFiles/ball.dir/src/ball.cpp.o
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: iris/CMakeFiles/ball.dir/build.make
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /opt/ros/noetic/lib/libroscpp.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /opt/ros/noetic/lib/librosconsole.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /opt/ros/noetic/lib/librostime.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /opt/ros/noetic/lib/libcpp_common.so
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_gapi.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_highgui.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_ml.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_objdetect.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_photo.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_stitching.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_video.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_videoio.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_imgcodecs.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_dnn.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_calib3d.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_features2d.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_flann.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_imgproc.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: /usr/local/lib/libopencv_core.so.4.9.0
/home/catipsum/Documents/ngeteh/devel/lib/iris/ball: iris/CMakeFiles/ball.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/catipsum/Documents/ngeteh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/catipsum/Documents/ngeteh/devel/lib/iris/ball"
	cd /home/catipsum/Documents/ngeteh/build/iris && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ball.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
iris/CMakeFiles/ball.dir/build: /home/catipsum/Documents/ngeteh/devel/lib/iris/ball

.PHONY : iris/CMakeFiles/ball.dir/build

iris/CMakeFiles/ball.dir/clean:
	cd /home/catipsum/Documents/ngeteh/build/iris && $(CMAKE_COMMAND) -P CMakeFiles/ball.dir/cmake_clean.cmake
.PHONY : iris/CMakeFiles/ball.dir/clean

iris/CMakeFiles/ball.dir/depend:
	cd /home/catipsum/Documents/ngeteh/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/catipsum/Documents/ngeteh/src /home/catipsum/Documents/ngeteh/src/iris /home/catipsum/Documents/ngeteh/build /home/catipsum/Documents/ngeteh/build/iris /home/catipsum/Documents/ngeteh/build/iris/CMakeFiles/ball.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : iris/CMakeFiles/ball.dir/depend

