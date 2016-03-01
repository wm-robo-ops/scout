# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/afnan/Programming/scout/image_capture/panorama

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/afnan/Programming/scout/image_capture/panorama/build

# Include any dependencies generated for this target.
include CMakeFiles/pano.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pano.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pano.dir/flags.make

CMakeFiles/pano.dir/opencv_pano.cpp.o: CMakeFiles/pano.dir/flags.make
CMakeFiles/pano.dir/opencv_pano.cpp.o: ../opencv_pano.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/afnan/Programming/scout/image_capture/panorama/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/pano.dir/opencv_pano.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pano.dir/opencv_pano.cpp.o -c /home/afnan/Programming/scout/image_capture/panorama/opencv_pano.cpp

CMakeFiles/pano.dir/opencv_pano.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pano.dir/opencv_pano.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/afnan/Programming/scout/image_capture/panorama/opencv_pano.cpp > CMakeFiles/pano.dir/opencv_pano.cpp.i

CMakeFiles/pano.dir/opencv_pano.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pano.dir/opencv_pano.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/afnan/Programming/scout/image_capture/panorama/opencv_pano.cpp -o CMakeFiles/pano.dir/opencv_pano.cpp.s

CMakeFiles/pano.dir/opencv_pano.cpp.o.requires:
.PHONY : CMakeFiles/pano.dir/opencv_pano.cpp.o.requires

CMakeFiles/pano.dir/opencv_pano.cpp.o.provides: CMakeFiles/pano.dir/opencv_pano.cpp.o.requires
	$(MAKE) -f CMakeFiles/pano.dir/build.make CMakeFiles/pano.dir/opencv_pano.cpp.o.provides.build
.PHONY : CMakeFiles/pano.dir/opencv_pano.cpp.o.provides

CMakeFiles/pano.dir/opencv_pano.cpp.o.provides.build: CMakeFiles/pano.dir/opencv_pano.cpp.o

# Object files for target pano
pano_OBJECTS = \
"CMakeFiles/pano.dir/opencv_pano.cpp.o"

# External object files for target pano
pano_EXTERNAL_OBJECTS =

pano: CMakeFiles/pano.dir/opencv_pano.cpp.o
pano: CMakeFiles/pano.dir/build.make
pano: /usr/local/lib/libopencv_viz.so.3.0.0
pano: /usr/local/lib/libopencv_videostab.so.3.0.0
pano: /usr/local/lib/libopencv_superres.so.3.0.0
pano: /usr/local/lib/libopencv_stitching.so.3.0.0
pano: /usr/local/lib/libopencv_shape.so.3.0.0
pano: /usr/local/lib/libopencv_photo.so.3.0.0
pano: /usr/local/lib/libopencv_objdetect.so.3.0.0
pano: /usr/local/lib/libopencv_hal.a
pano: /usr/local/lib/libopencv_calib3d.so.3.0.0
pano: /usr/local/lib/libopencv_features2d.so.3.0.0
pano: /usr/local/lib/libopencv_ml.so.3.0.0
pano: /usr/local/lib/libopencv_highgui.so.3.0.0
pano: /usr/local/lib/libopencv_videoio.so.3.0.0
pano: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
pano: /usr/local/lib/libopencv_flann.so.3.0.0
pano: /usr/local/lib/libopencv_video.so.3.0.0
pano: /usr/local/lib/libopencv_imgproc.so.3.0.0
pano: /usr/local/lib/libopencv_core.so.3.0.0
pano: /usr/local/lib/libopencv_hal.a
pano: /usr/lib/x86_64-linux-gnu/libGLU.so
pano: /usr/lib/x86_64-linux-gnu/libGL.so
pano: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
pano: CMakeFiles/pano.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable pano"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pano.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pano.dir/build: pano
.PHONY : CMakeFiles/pano.dir/build

CMakeFiles/pano.dir/requires: CMakeFiles/pano.dir/opencv_pano.cpp.o.requires
.PHONY : CMakeFiles/pano.dir/requires

CMakeFiles/pano.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pano.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pano.dir/clean

CMakeFiles/pano.dir/depend:
	cd /home/afnan/Programming/scout/image_capture/panorama/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/afnan/Programming/scout/image_capture/panorama /home/afnan/Programming/scout/image_capture/panorama /home/afnan/Programming/scout/image_capture/panorama/build /home/afnan/Programming/scout/image_capture/panorama/build /home/afnan/Programming/scout/image_capture/panorama/build/CMakeFiles/pano.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pano.dir/depend
