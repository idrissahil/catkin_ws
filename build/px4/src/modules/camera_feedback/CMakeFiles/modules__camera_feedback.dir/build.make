# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/idris/catkin_ws/src/px4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/idris/catkin_ws/build/px4

# Include any dependencies generated for this target.
include src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/depend.make

# Include the progress variables for this target.
include src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/progress.make

# Include the compile flags for this target's objects.
include src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/flags.make

src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o: src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/flags.make
src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o: /home/idris/catkin_ws/src/px4/src/modules/camera_feedback/camera_feedback.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o"
	cd /home/idris/catkin_ws/build/px4/src/modules/camera_feedback && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o -c /home/idris/catkin_ws/src/px4/src/modules/camera_feedback/camera_feedback.cpp

src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.i"
	cd /home/idris/catkin_ws/build/px4/src/modules/camera_feedback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/idris/catkin_ws/src/px4/src/modules/camera_feedback/camera_feedback.cpp > CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.i

src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.s"
	cd /home/idris/catkin_ws/build/px4/src/modules/camera_feedback && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/idris/catkin_ws/src/px4/src/modules/camera_feedback/camera_feedback.cpp -o CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.s

src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o.requires:

.PHONY : src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o.requires

src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o.provides: src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o.requires
	$(MAKE) -f src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/build.make src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o.provides.build
.PHONY : src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o.provides

src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o.provides.build: src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o


# Object files for target modules__camera_feedback
modules__camera_feedback_OBJECTS = \
"CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o"

# External object files for target modules__camera_feedback
modules__camera_feedback_EXTERNAL_OBJECTS =

/home/idris/catkin_ws/devel/.private/px4/lib/libmodules__camera_feedback.a: src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o
/home/idris/catkin_ws/devel/.private/px4/lib/libmodules__camera_feedback.a: src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/build.make
/home/idris/catkin_ws/devel/.private/px4/lib/libmodules__camera_feedback.a: src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/idris/catkin_ws/devel/.private/px4/lib/libmodules__camera_feedback.a"
	cd /home/idris/catkin_ws/build/px4/src/modules/camera_feedback && $(CMAKE_COMMAND) -P CMakeFiles/modules__camera_feedback.dir/cmake_clean_target.cmake
	cd /home/idris/catkin_ws/build/px4/src/modules/camera_feedback && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/modules__camera_feedback.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/build: /home/idris/catkin_ws/devel/.private/px4/lib/libmodules__camera_feedback.a

.PHONY : src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/build

src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/requires: src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/camera_feedback.cpp.o.requires

.PHONY : src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/requires

src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/clean:
	cd /home/idris/catkin_ws/build/px4/src/modules/camera_feedback && $(CMAKE_COMMAND) -P CMakeFiles/modules__camera_feedback.dir/cmake_clean.cmake
.PHONY : src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/clean

src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/depend:
	cd /home/idris/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/src/px4/src/modules/camera_feedback /home/idris/catkin_ws/build/px4 /home/idris/catkin_ws/build/px4/src/modules/camera_feedback /home/idris/catkin_ws/build/px4/src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/modules/camera_feedback/CMakeFiles/modules__camera_feedback.dir/depend

