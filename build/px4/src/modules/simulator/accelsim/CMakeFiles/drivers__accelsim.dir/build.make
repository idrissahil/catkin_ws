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
include src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/depend.make

# Include the progress variables for this target.
include src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/progress.make

# Include the compile flags for this target's objects.
include src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/flags.make

src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o: src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/flags.make
src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o: /home/idris/catkin_ws/src/px4/src/modules/simulator/accelsim/accelsim.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o"
	cd /home/idris/catkin_ws/build/px4/src/modules/simulator/accelsim && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o -c /home/idris/catkin_ws/src/px4/src/modules/simulator/accelsim/accelsim.cpp

src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drivers__accelsim.dir/accelsim.cpp.i"
	cd /home/idris/catkin_ws/build/px4/src/modules/simulator/accelsim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/idris/catkin_ws/src/px4/src/modules/simulator/accelsim/accelsim.cpp > CMakeFiles/drivers__accelsim.dir/accelsim.cpp.i

src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drivers__accelsim.dir/accelsim.cpp.s"
	cd /home/idris/catkin_ws/build/px4/src/modules/simulator/accelsim && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/idris/catkin_ws/src/px4/src/modules/simulator/accelsim/accelsim.cpp -o CMakeFiles/drivers__accelsim.dir/accelsim.cpp.s

src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o.requires:

.PHONY : src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o.requires

src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o.provides: src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o.requires
	$(MAKE) -f src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/build.make src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o.provides.build
.PHONY : src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o.provides

src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o.provides.build: src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o


# Object files for target drivers__accelsim
drivers__accelsim_OBJECTS = \
"CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o"

# External object files for target drivers__accelsim
drivers__accelsim_EXTERNAL_OBJECTS =

/home/idris/catkin_ws/devel/.private/px4/lib/libdrivers__accelsim.a: src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o
/home/idris/catkin_ws/devel/.private/px4/lib/libdrivers__accelsim.a: src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/build.make
/home/idris/catkin_ws/devel/.private/px4/lib/libdrivers__accelsim.a: src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/idris/catkin_ws/devel/.private/px4/lib/libdrivers__accelsim.a"
	cd /home/idris/catkin_ws/build/px4/src/modules/simulator/accelsim && $(CMAKE_COMMAND) -P CMakeFiles/drivers__accelsim.dir/cmake_clean_target.cmake
	cd /home/idris/catkin_ws/build/px4/src/modules/simulator/accelsim && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drivers__accelsim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/build: /home/idris/catkin_ws/devel/.private/px4/lib/libdrivers__accelsim.a

.PHONY : src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/build

src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/requires: src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/accelsim.cpp.o.requires

.PHONY : src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/requires

src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/clean:
	cd /home/idris/catkin_ws/build/px4/src/modules/simulator/accelsim && $(CMAKE_COMMAND) -P CMakeFiles/drivers__accelsim.dir/cmake_clean.cmake
.PHONY : src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/clean

src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/depend:
	cd /home/idris/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/src/px4/src/modules/simulator/accelsim /home/idris/catkin_ws/build/px4 /home/idris/catkin_ws/build/px4/src/modules/simulator/accelsim /home/idris/catkin_ws/build/px4/src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/modules/simulator/accelsim/CMakeFiles/drivers__accelsim.dir/depend
