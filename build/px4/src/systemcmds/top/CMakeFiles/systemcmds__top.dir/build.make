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
include src/systemcmds/top/CMakeFiles/systemcmds__top.dir/depend.make

# Include the progress variables for this target.
include src/systemcmds/top/CMakeFiles/systemcmds__top.dir/progress.make

# Include the compile flags for this target's objects.
include src/systemcmds/top/CMakeFiles/systemcmds__top.dir/flags.make

src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o: src/systemcmds/top/CMakeFiles/systemcmds__top.dir/flags.make
src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o: /home/idris/catkin_ws/src/px4/src/systemcmds/top/top.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o"
	cd /home/idris/catkin_ws/build/px4/src/systemcmds/top && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/systemcmds__top.dir/top.c.o   -c /home/idris/catkin_ws/src/px4/src/systemcmds/top/top.c

src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/systemcmds__top.dir/top.c.i"
	cd /home/idris/catkin_ws/build/px4/src/systemcmds/top && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/idris/catkin_ws/src/px4/src/systemcmds/top/top.c > CMakeFiles/systemcmds__top.dir/top.c.i

src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/systemcmds__top.dir/top.c.s"
	cd /home/idris/catkin_ws/build/px4/src/systemcmds/top && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/idris/catkin_ws/src/px4/src/systemcmds/top/top.c -o CMakeFiles/systemcmds__top.dir/top.c.s

src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o.requires:

.PHONY : src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o.requires

src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o.provides: src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o.requires
	$(MAKE) -f src/systemcmds/top/CMakeFiles/systemcmds__top.dir/build.make src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o.provides.build
.PHONY : src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o.provides

src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o.provides.build: src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o


# Object files for target systemcmds__top
systemcmds__top_OBJECTS = \
"CMakeFiles/systemcmds__top.dir/top.c.o"

# External object files for target systemcmds__top
systemcmds__top_EXTERNAL_OBJECTS =

/home/idris/catkin_ws/devel/.private/px4/lib/libsystemcmds__top.a: src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o
/home/idris/catkin_ws/devel/.private/px4/lib/libsystemcmds__top.a: src/systemcmds/top/CMakeFiles/systemcmds__top.dir/build.make
/home/idris/catkin_ws/devel/.private/px4/lib/libsystemcmds__top.a: src/systemcmds/top/CMakeFiles/systemcmds__top.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/idris/catkin_ws/devel/.private/px4/lib/libsystemcmds__top.a"
	cd /home/idris/catkin_ws/build/px4/src/systemcmds/top && $(CMAKE_COMMAND) -P CMakeFiles/systemcmds__top.dir/cmake_clean_target.cmake
	cd /home/idris/catkin_ws/build/px4/src/systemcmds/top && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/systemcmds__top.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/systemcmds/top/CMakeFiles/systemcmds__top.dir/build: /home/idris/catkin_ws/devel/.private/px4/lib/libsystemcmds__top.a

.PHONY : src/systemcmds/top/CMakeFiles/systemcmds__top.dir/build

src/systemcmds/top/CMakeFiles/systemcmds__top.dir/requires: src/systemcmds/top/CMakeFiles/systemcmds__top.dir/top.c.o.requires

.PHONY : src/systemcmds/top/CMakeFiles/systemcmds__top.dir/requires

src/systemcmds/top/CMakeFiles/systemcmds__top.dir/clean:
	cd /home/idris/catkin_ws/build/px4/src/systemcmds/top && $(CMAKE_COMMAND) -P CMakeFiles/systemcmds__top.dir/cmake_clean.cmake
.PHONY : src/systemcmds/top/CMakeFiles/systemcmds__top.dir/clean

src/systemcmds/top/CMakeFiles/systemcmds__top.dir/depend:
	cd /home/idris/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/src/px4/src/systemcmds/top /home/idris/catkin_ws/build/px4 /home/idris/catkin_ws/build/px4/src/systemcmds/top /home/idris/catkin_ws/build/px4/src/systemcmds/top/CMakeFiles/systemcmds__top.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/systemcmds/top/CMakeFiles/systemcmds__top.dir/depend

