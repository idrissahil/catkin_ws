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

# Utility rule file for jmavsim_plane_callgrind.

# Include the progress variables for this target.
include platforms/posix/CMakeFiles/jmavsim_plane_callgrind.dir/progress.make

platforms/posix/CMakeFiles/jmavsim_plane_callgrind:
	cd /home/idris/catkin_ws/build/px4/tmp && /home/idris/catkin_ws/src/px4/Tools/sitl_run.sh /home/idris/catkin_ws/build/px4/bin/px4 callgrind jmavsim plane /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/build/px4

jmavsim_plane_callgrind: platforms/posix/CMakeFiles/jmavsim_plane_callgrind
jmavsim_plane_callgrind: platforms/posix/CMakeFiles/jmavsim_plane_callgrind.dir/build.make

.PHONY : jmavsim_plane_callgrind

# Rule to build all files generated by this target.
platforms/posix/CMakeFiles/jmavsim_plane_callgrind.dir/build: jmavsim_plane_callgrind

.PHONY : platforms/posix/CMakeFiles/jmavsim_plane_callgrind.dir/build

platforms/posix/CMakeFiles/jmavsim_plane_callgrind.dir/clean:
	cd /home/idris/catkin_ws/build/px4/platforms/posix && $(CMAKE_COMMAND) -P CMakeFiles/jmavsim_plane_callgrind.dir/cmake_clean.cmake
.PHONY : platforms/posix/CMakeFiles/jmavsim_plane_callgrind.dir/clean

platforms/posix/CMakeFiles/jmavsim_plane_callgrind.dir/depend:
	cd /home/idris/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/src/px4/platforms/posix /home/idris/catkin_ws/build/px4 /home/idris/catkin_ws/build/px4/platforms/posix /home/idris/catkin_ws/build/px4/platforms/posix/CMakeFiles/jmavsim_plane_callgrind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/posix/CMakeFiles/jmavsim_plane_callgrind.dir/depend

