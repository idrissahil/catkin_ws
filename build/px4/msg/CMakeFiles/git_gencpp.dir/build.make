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

# Utility rule file for git_gencpp.

# Include the progress variables for this target.
include msg/CMakeFiles/git_gencpp.dir/progress.make

msg/CMakeFiles/git_gencpp: msg/git_init_tools_gencpp.stamp


msg/git_init_tools_gencpp.stamp: /home/idris/catkin_ws/src/px4/.gitmodules
msg/git_init_tools_gencpp.stamp: /home/idris/catkin_ws/src/px4/msg/tools/gencpp/.git
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "git submodule msg/tools/gencpp"
	cd /home/idris/catkin_ws/src/px4 && Tools/check_submodules.sh msg/tools/gencpp
	cd /home/idris/catkin_ws/src/px4 && /usr/bin/cmake -E touch /home/idris/catkin_ws/build/px4/msg/git_init_tools_gencpp.stamp

git_gencpp: msg/CMakeFiles/git_gencpp
git_gencpp: msg/git_init_tools_gencpp.stamp
git_gencpp: msg/CMakeFiles/git_gencpp.dir/build.make

.PHONY : git_gencpp

# Rule to build all files generated by this target.
msg/CMakeFiles/git_gencpp.dir/build: git_gencpp

.PHONY : msg/CMakeFiles/git_gencpp.dir/build

msg/CMakeFiles/git_gencpp.dir/clean:
	cd /home/idris/catkin_ws/build/px4/msg && $(CMAKE_COMMAND) -P CMakeFiles/git_gencpp.dir/cmake_clean.cmake
.PHONY : msg/CMakeFiles/git_gencpp.dir/clean

msg/CMakeFiles/git_gencpp.dir/depend:
	cd /home/idris/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/src/px4/msg /home/idris/catkin_ws/build/px4 /home/idris/catkin_ws/build/px4/msg /home/idris/catkin_ws/build/px4/msg/CMakeFiles/git_gencpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : msg/CMakeFiles/git_gencpp.dir/depend

