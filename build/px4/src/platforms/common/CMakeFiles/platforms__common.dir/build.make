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
include src/platforms/common/CMakeFiles/platforms__common.dir/depend.make

# Include the progress variables for this target.
include src/platforms/common/CMakeFiles/platforms__common.dir/progress.make

# Include the compile flags for this target's objects.
include src/platforms/common/CMakeFiles/platforms__common.dir/flags.make

src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o: src/platforms/common/CMakeFiles/platforms__common.dir/flags.make
src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o: /home/idris/catkin_ws/src/px4/src/platforms/common/module.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/platforms__common.dir/module.cpp.o -c /home/idris/catkin_ws/src/px4/src/platforms/common/module.cpp

src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platforms__common.dir/module.cpp.i"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/idris/catkin_ws/src/px4/src/platforms/common/module.cpp > CMakeFiles/platforms__common.dir/module.cpp.i

src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platforms__common.dir/module.cpp.s"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/idris/catkin_ws/src/px4/src/platforms/common/module.cpp -o CMakeFiles/platforms__common.dir/module.cpp.s

src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o.requires:

.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o.requires

src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o.provides: src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o.requires
	$(MAKE) -f src/platforms/common/CMakeFiles/platforms__common.dir/build.make src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o.provides.build
.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o.provides

src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o.provides.build: src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o


src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o: src/platforms/common/CMakeFiles/platforms__common.dir/flags.make
src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o: /home/idris/catkin_ws/src/px4/src/platforms/common/px4_getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/platforms__common.dir/px4_getopt.c.o   -c /home/idris/catkin_ws/src/px4/src/platforms/common/px4_getopt.c

src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/platforms__common.dir/px4_getopt.c.i"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/idris/catkin_ws/src/px4/src/platforms/common/px4_getopt.c > CMakeFiles/platforms__common.dir/px4_getopt.c.i

src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/platforms__common.dir/px4_getopt.c.s"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/idris/catkin_ws/src/px4/src/platforms/common/px4_getopt.c -o CMakeFiles/platforms__common.dir/px4_getopt.c.s

src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o.requires:

.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o.requires

src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o.provides: src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o.requires
	$(MAKE) -f src/platforms/common/CMakeFiles/platforms__common.dir/build.make src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o.provides.build
.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o.provides

src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o.provides.build: src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o


src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o: src/platforms/common/CMakeFiles/platforms__common.dir/flags.make
src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o: /home/idris/catkin_ws/src/px4/src/platforms/common/px4_cli.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/platforms__common.dir/px4_cli.cpp.o -c /home/idris/catkin_ws/src/px4/src/platforms/common/px4_cli.cpp

src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platforms__common.dir/px4_cli.cpp.i"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/idris/catkin_ws/src/px4/src/platforms/common/px4_cli.cpp > CMakeFiles/platforms__common.dir/px4_cli.cpp.i

src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platforms__common.dir/px4_cli.cpp.s"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/idris/catkin_ws/src/px4/src/platforms/common/px4_cli.cpp -o CMakeFiles/platforms__common.dir/px4_cli.cpp.s

src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o.requires:

.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o.requires

src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o.provides: src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o.requires
	$(MAKE) -f src/platforms/common/CMakeFiles/platforms__common.dir/build.make src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o.provides.build
.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o.provides

src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o.provides.build: src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o


src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o: src/platforms/common/CMakeFiles/platforms__common.dir/flags.make
src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o: /home/idris/catkin_ws/src/px4/src/platforms/common/shutdown.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/platforms__common.dir/shutdown.cpp.o -c /home/idris/catkin_ws/src/px4/src/platforms/common/shutdown.cpp

src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platforms__common.dir/shutdown.cpp.i"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/idris/catkin_ws/src/px4/src/platforms/common/shutdown.cpp > CMakeFiles/platforms__common.dir/shutdown.cpp.i

src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platforms__common.dir/shutdown.cpp.s"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/idris/catkin_ws/src/px4/src/platforms/common/shutdown.cpp -o CMakeFiles/platforms__common.dir/shutdown.cpp.s

src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o.requires:

.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o.requires

src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o.provides: src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o.requires
	$(MAKE) -f src/platforms/common/CMakeFiles/platforms__common.dir/build.make src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o.provides.build
.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o.provides

src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o.provides.build: src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o


src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o: src/platforms/common/CMakeFiles/platforms__common.dir/flags.make
src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o: /home/idris/catkin_ws/src/px4/src/platforms/common/px4_log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/platforms__common.dir/px4_log.c.o   -c /home/idris/catkin_ws/src/px4/src/platforms/common/px4_log.c

src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/platforms__common.dir/px4_log.c.i"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/idris/catkin_ws/src/px4/src/platforms/common/px4_log.c > CMakeFiles/platforms__common.dir/px4_log.c.i

src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/platforms__common.dir/px4_log.c.s"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/idris/catkin_ws/src/px4/src/platforms/common/px4_log.c -o CMakeFiles/platforms__common.dir/px4_log.c.s

src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o.requires:

.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o.requires

src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o.provides: src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o.requires
	$(MAKE) -f src/platforms/common/CMakeFiles/platforms__common.dir/build.make src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o.provides.build
.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o.provides

src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o.provides.build: src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o


# Object files for target platforms__common
platforms__common_OBJECTS = \
"CMakeFiles/platforms__common.dir/module.cpp.o" \
"CMakeFiles/platforms__common.dir/px4_getopt.c.o" \
"CMakeFiles/platforms__common.dir/px4_cli.cpp.o" \
"CMakeFiles/platforms__common.dir/shutdown.cpp.o" \
"CMakeFiles/platforms__common.dir/px4_log.c.o"

# External object files for target platforms__common
platforms__common_EXTERNAL_OBJECTS =

/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__common.a: src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__common.a: src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__common.a: src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__common.a: src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__common.a: src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__common.a: src/platforms/common/CMakeFiles/platforms__common.dir/build.make
/home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__common.a: src/platforms/common/CMakeFiles/platforms__common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/idris/catkin_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library /home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__common.a"
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && $(CMAKE_COMMAND) -P CMakeFiles/platforms__common.dir/cmake_clean_target.cmake
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/platforms__common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/platforms/common/CMakeFiles/platforms__common.dir/build: /home/idris/catkin_ws/devel/.private/px4/lib/libplatforms__common.a

.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/build

src/platforms/common/CMakeFiles/platforms__common.dir/requires: src/platforms/common/CMakeFiles/platforms__common.dir/module.cpp.o.requires
src/platforms/common/CMakeFiles/platforms__common.dir/requires: src/platforms/common/CMakeFiles/platforms__common.dir/px4_getopt.c.o.requires
src/platforms/common/CMakeFiles/platforms__common.dir/requires: src/platforms/common/CMakeFiles/platforms__common.dir/px4_cli.cpp.o.requires
src/platforms/common/CMakeFiles/platforms__common.dir/requires: src/platforms/common/CMakeFiles/platforms__common.dir/shutdown.cpp.o.requires
src/platforms/common/CMakeFiles/platforms__common.dir/requires: src/platforms/common/CMakeFiles/platforms__common.dir/px4_log.c.o.requires

.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/requires

src/platforms/common/CMakeFiles/platforms__common.dir/clean:
	cd /home/idris/catkin_ws/build/px4/src/platforms/common && $(CMAKE_COMMAND) -P CMakeFiles/platforms__common.dir/cmake_clean.cmake
.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/clean

src/platforms/common/CMakeFiles/platforms__common.dir/depend:
	cd /home/idris/catkin_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/idris/catkin_ws/src/px4 /home/idris/catkin_ws/src/px4/src/platforms/common /home/idris/catkin_ws/build/px4 /home/idris/catkin_ws/build/px4/src/platforms/common /home/idris/catkin_ws/build/px4/src/platforms/common/CMakeFiles/platforms__common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/platforms/common/CMakeFiles/platforms__common.dir/depend

