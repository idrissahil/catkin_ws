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
include src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/depend.make

# Include the progress variables for this target.
include src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/flags.make

src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o: src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/flags.make
src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o: /home/idris/catkin_ws/src/px4/src/lib/ecl/airdata/WindEstimator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o"
	cd /home/idris/catkin_ws/build/px4/src/lib/ecl/airdata && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o -c /home/idris/catkin_ws/src/px4/src/lib/ecl/airdata/WindEstimator.cpp

src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.i"
	cd /home/idris/catkin_ws/build/px4/src/lib/ecl/airdata && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/idris/catkin_ws/src/px4/src/lib/ecl/airdata/WindEstimator.cpp > CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.i

src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.s"
	cd /home/idris/catkin_ws/build/px4/src/lib/ecl/airdata && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/idris/catkin_ws/src/px4/src/lib/ecl/airdata/WindEstimator.cpp -o CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.s

src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o.requires:

.PHONY : src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o.requires

src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o.provides: src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o.requires
	$(MAKE) -f src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/build.make src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o.provides.build
.PHONY : src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o.provides

src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o.provides.build: src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o


# Object files for target ecl_airdata
ecl_airdata_OBJECTS = \
"CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o"

# External object files for target ecl_airdata
ecl_airdata_EXTERNAL_OBJECTS =

/home/idris/catkin_ws/devel/.private/px4/lib/libecl_airdata.a: src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o
/home/idris/catkin_ws/devel/.private/px4/lib/libecl_airdata.a: src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/build.make
/home/idris/catkin_ws/devel/.private/px4/lib/libecl_airdata.a: src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/idris/catkin_ws/devel/.private/px4/lib/libecl_airdata.a"
	cd /home/idris/catkin_ws/build/px4/src/lib/ecl/airdata && $(CMAKE_COMMAND) -P CMakeFiles/ecl_airdata.dir/cmake_clean_target.cmake
	cd /home/idris/catkin_ws/build/px4/src/lib/ecl/airdata && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ecl_airdata.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/build: /home/idris/catkin_ws/devel/.private/px4/lib/libecl_airdata.a

.PHONY : src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/build

src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/requires: src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/WindEstimator.cpp.o.requires

.PHONY : src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/requires

src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/clean:
	cd /home/idris/catkin_ws/build/px4/src/lib/ecl/airdata && $(CMAKE_COMMAND) -P CMakeFiles/ecl_airdata.dir/cmake_clean.cmake
.PHONY : src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/clean

src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/depend:
	cd /home/idris/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/src/px4/src/lib/ecl/airdata /home/idris/catkin_ws/build/px4 /home/idris/catkin_ws/build/px4/src/lib/ecl/airdata /home/idris/catkin_ws/build/px4/src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/ecl/airdata/CMakeFiles/ecl_airdata.dir/depend

