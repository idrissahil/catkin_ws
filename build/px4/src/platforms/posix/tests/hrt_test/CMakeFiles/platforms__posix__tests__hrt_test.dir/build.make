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
include src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/depend.make

# Include the progress variables for this target.
include src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/progress.make

# Include the compile flags for this target's objects.
include src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/flags.make

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/flags.make
src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o: /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o -c /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test_main.cpp

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.i"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test_main.cpp > CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.i

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.s"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test_main.cpp -o CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.s

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o.requires:

.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o.requires

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o.provides: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o.requires
	$(MAKE) -f src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/build.make src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o.provides.build
.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o.provides

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o.provides.build: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o


src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/flags.make
src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o: /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test_start_posix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o -c /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test_start_posix.cpp

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.i"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test_start_posix.cpp > CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.i

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.s"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test_start_posix.cpp -o CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.s

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o.requires:

.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o.requires

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o.provides: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o.requires
	$(MAKE) -f src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/build.make src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o.provides.build
.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o.provides

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o.provides.build: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o


src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/flags.make
src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o: /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o -c /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test.cpp

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.i"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test.cpp > CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.i

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.s"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test/hrt_test.cpp -o CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.s

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o.requires:

.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o.requires

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o.provides: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o.requires
	$(MAKE) -f src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/build.make src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o.provides.build
.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o.provides

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o.provides.build: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o


# Object files for target platforms__posix__tests__hrt_test
platforms__posix__tests__hrt_test_OBJECTS = \
"CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o" \
"CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o" \
"CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o"

# External object files for target platforms__posix__tests__hrt_test
platforms__posix__tests__hrt_test_EXTERNAL_OBJECTS =

/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__posix__tests__hrt_test.a: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__posix__tests__hrt_test.a: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__posix__tests__hrt_test.a: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__posix__tests__hrt_test.a: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/build.make
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__posix__tests__hrt_test.a: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library /home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__posix__tests__hrt_test.a"
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && $(CMAKE_COMMAND) -P CMakeFiles/platforms__posix__tests__hrt_test.dir/cmake_clean_target.cmake
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/platforms__posix__tests__hrt_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/build: /home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__posix__tests__hrt_test.a

.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/build

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/requires: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_main.cpp.o.requires
src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/requires: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test_start_posix.cpp.o.requires
src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/requires: src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/hrt_test.cpp.o.requires

.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/requires

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/clean:
	cd /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test && $(CMAKE_COMMAND) -P CMakeFiles/platforms__posix__tests__hrt_test.dir/cmake_clean.cmake
.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/clean

src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/depend:
	cd /home/idris/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/src/px4/src/platforms/posix/tests/hrt_test /home/idris/catkin_ws/build/px4 /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test /home/idris/catkin_ws/build/px4/src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/platforms/posix/tests/hrt_test/CMakeFiles/platforms__posix__tests__hrt_test.dir/depend

