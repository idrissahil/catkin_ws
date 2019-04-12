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
include src/lib/perf/CMakeFiles/perf.dir/depend.make

# Include the progress variables for this target.
include src/lib/perf/CMakeFiles/perf.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/perf/CMakeFiles/perf.dir/flags.make

src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o: src/lib/perf/CMakeFiles/perf.dir/flags.make
src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o: /home/idris/catkin_ws/src/px4/src/lib/perf/perf_counter.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o"
	cd /home/idris/catkin_ws/build/px4/src/lib/perf && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/perf.dir/perf_counter.c.o   -c /home/idris/catkin_ws/src/px4/src/lib/perf/perf_counter.c

src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/perf.dir/perf_counter.c.i"
	cd /home/idris/catkin_ws/build/px4/src/lib/perf && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/idris/catkin_ws/src/px4/src/lib/perf/perf_counter.c > CMakeFiles/perf.dir/perf_counter.c.i

src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/perf.dir/perf_counter.c.s"
	cd /home/idris/catkin_ws/build/px4/src/lib/perf && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/idris/catkin_ws/src/px4/src/lib/perf/perf_counter.c -o CMakeFiles/perf.dir/perf_counter.c.s

src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o.requires:

.PHONY : src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o.requires

src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o.provides: src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o.requires
	$(MAKE) -f src/lib/perf/CMakeFiles/perf.dir/build.make src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o.provides.build
.PHONY : src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o.provides

src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o.provides.build: src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o


# Object files for target perf
perf_OBJECTS = \
"CMakeFiles/perf.dir/perf_counter.c.o"

# External object files for target perf
perf_EXTERNAL_OBJECTS =

/home/idris/catkin_ws/devel/.private/px4/lib/libperf.a: src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o
/home/idris/catkin_ws/devel/.private/px4/lib/libperf.a: src/lib/perf/CMakeFiles/perf.dir/build.make
/home/idris/catkin_ws/devel/.private/px4/lib/libperf.a: src/lib/perf/CMakeFiles/perf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library /home/idris/catkin_ws/devel/.private/px4/lib/libperf.a"
	cd /home/idris/catkin_ws/build/px4/src/lib/perf && $(CMAKE_COMMAND) -P CMakeFiles/perf.dir/cmake_clean_target.cmake
	cd /home/idris/catkin_ws/build/px4/src/lib/perf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/perf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/perf/CMakeFiles/perf.dir/build: /home/idris/catkin_ws/devel/.private/px4/lib/libperf.a

.PHONY : src/lib/perf/CMakeFiles/perf.dir/build

src/lib/perf/CMakeFiles/perf.dir/requires: src/lib/perf/CMakeFiles/perf.dir/perf_counter.c.o.requires

.PHONY : src/lib/perf/CMakeFiles/perf.dir/requires

src/lib/perf/CMakeFiles/perf.dir/clean:
	cd /home/idris/catkin_ws/build/px4/src/lib/perf && $(CMAKE_COMMAND) -P CMakeFiles/perf.dir/cmake_clean.cmake
.PHONY : src/lib/perf/CMakeFiles/perf.dir/clean

src/lib/perf/CMakeFiles/perf.dir/depend:
	cd /home/idris/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/src/px4/src/lib/perf /home/idris/catkin_ws/build/px4 /home/idris/catkin_ws/build/px4/src/lib/perf /home/idris/catkin_ws/build/px4/src/lib/perf/CMakeFiles/perf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/perf/CMakeFiles/perf.dir/depend
