# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joseph/CSE220/cse220_hw3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joseph/CSE220/cse220_hw3

# Include any dependencies generated for this target.
include CMakeFiles/hw3_main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hw3_main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hw3_main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw3_main.dir/flags.make

CMakeFiles/hw3_main.dir/src/qtree.c.o: CMakeFiles/hw3_main.dir/flags.make
CMakeFiles/hw3_main.dir/src/qtree.c.o: src/qtree.c
CMakeFiles/hw3_main.dir/src/qtree.c.o: CMakeFiles/hw3_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joseph/CSE220/cse220_hw3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/hw3_main.dir/src/qtree.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/hw3_main.dir/src/qtree.c.o -MF CMakeFiles/hw3_main.dir/src/qtree.c.o.d -o CMakeFiles/hw3_main.dir/src/qtree.c.o -c /home/joseph/CSE220/cse220_hw3/src/qtree.c

CMakeFiles/hw3_main.dir/src/qtree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hw3_main.dir/src/qtree.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joseph/CSE220/cse220_hw3/src/qtree.c > CMakeFiles/hw3_main.dir/src/qtree.c.i

CMakeFiles/hw3_main.dir/src/qtree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hw3_main.dir/src/qtree.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joseph/CSE220/cse220_hw3/src/qtree.c -o CMakeFiles/hw3_main.dir/src/qtree.c.s

CMakeFiles/hw3_main.dir/src/image.c.o: CMakeFiles/hw3_main.dir/flags.make
CMakeFiles/hw3_main.dir/src/image.c.o: src/image.c
CMakeFiles/hw3_main.dir/src/image.c.o: CMakeFiles/hw3_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joseph/CSE220/cse220_hw3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/hw3_main.dir/src/image.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/hw3_main.dir/src/image.c.o -MF CMakeFiles/hw3_main.dir/src/image.c.o.d -o CMakeFiles/hw3_main.dir/src/image.c.o -c /home/joseph/CSE220/cse220_hw3/src/image.c

CMakeFiles/hw3_main.dir/src/image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hw3_main.dir/src/image.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joseph/CSE220/cse220_hw3/src/image.c > CMakeFiles/hw3_main.dir/src/image.c.i

CMakeFiles/hw3_main.dir/src/image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hw3_main.dir/src/image.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joseph/CSE220/cse220_hw3/src/image.c -o CMakeFiles/hw3_main.dir/src/image.c.s

CMakeFiles/hw3_main.dir/src/hw3_main.c.o: CMakeFiles/hw3_main.dir/flags.make
CMakeFiles/hw3_main.dir/src/hw3_main.c.o: src/hw3_main.c
CMakeFiles/hw3_main.dir/src/hw3_main.c.o: CMakeFiles/hw3_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joseph/CSE220/cse220_hw3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/hw3_main.dir/src/hw3_main.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/hw3_main.dir/src/hw3_main.c.o -MF CMakeFiles/hw3_main.dir/src/hw3_main.c.o.d -o CMakeFiles/hw3_main.dir/src/hw3_main.c.o -c /home/joseph/CSE220/cse220_hw3/src/hw3_main.c

CMakeFiles/hw3_main.dir/src/hw3_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hw3_main.dir/src/hw3_main.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joseph/CSE220/cse220_hw3/src/hw3_main.c > CMakeFiles/hw3_main.dir/src/hw3_main.c.i

CMakeFiles/hw3_main.dir/src/hw3_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hw3_main.dir/src/hw3_main.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joseph/CSE220/cse220_hw3/src/hw3_main.c -o CMakeFiles/hw3_main.dir/src/hw3_main.c.s

CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o: CMakeFiles/hw3_main.dir/flags.make
CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o: tests/src/tests_utils.c
CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o: CMakeFiles/hw3_main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joseph/CSE220/cse220_hw3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o -MF CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o.d -o CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o -c /home/joseph/CSE220/cse220_hw3/tests/src/tests_utils.c

CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/joseph/CSE220/cse220_hw3/tests/src/tests_utils.c > CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.i

CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/joseph/CSE220/cse220_hw3/tests/src/tests_utils.c -o CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.s

# Object files for target hw3_main
hw3_main_OBJECTS = \
"CMakeFiles/hw3_main.dir/src/qtree.c.o" \
"CMakeFiles/hw3_main.dir/src/image.c.o" \
"CMakeFiles/hw3_main.dir/src/hw3_main.c.o" \
"CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o"

# External object files for target hw3_main
hw3_main_EXTERNAL_OBJECTS =

hw3_main: CMakeFiles/hw3_main.dir/src/qtree.c.o
hw3_main: CMakeFiles/hw3_main.dir/src/image.c.o
hw3_main: CMakeFiles/hw3_main.dir/src/hw3_main.c.o
hw3_main: CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o
hw3_main: CMakeFiles/hw3_main.dir/build.make
hw3_main: CMakeFiles/hw3_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joseph/CSE220/cse220_hw3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable hw3_main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw3_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw3_main.dir/build: hw3_main
.PHONY : CMakeFiles/hw3_main.dir/build

CMakeFiles/hw3_main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw3_main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw3_main.dir/clean

CMakeFiles/hw3_main.dir/depend:
	cd /home/joseph/CSE220/cse220_hw3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joseph/CSE220/cse220_hw3 /home/joseph/CSE220/cse220_hw3 /home/joseph/CSE220/cse220_hw3 /home/joseph/CSE220/cse220_hw3 /home/joseph/CSE220/cse220_hw3/CMakeFiles/hw3_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw3_main.dir/depend

