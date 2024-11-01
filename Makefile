# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/joseph/CSE220/cse220_hw3/CMakeFiles /home/joseph/CSE220/cse220_hw3//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/joseph/CSE220/cse220_hw3/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named hw3_main

# Build rule for target.
hw3_main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 hw3_main
.PHONY : hw3_main

# fast build rule for target.
hw3_main/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/build
.PHONY : hw3_main/fast

#=============================================================================
# Target rules for targets named hw3_main_asan

# Build rule for target.
hw3_main_asan: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 hw3_main_asan
.PHONY : hw3_main_asan

# fast build rule for target.
hw3_main_asan/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/build
.PHONY : hw3_main_asan/fast

#=============================================================================
# Target rules for targets named valgrind_hw3

# Build rule for target.
valgrind_hw3: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 valgrind_hw3
.PHONY : valgrind_hw3

# fast build rule for target.
valgrind_hw3/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/valgrind_hw3.dir/build.make CMakeFiles/valgrind_hw3.dir/build
.PHONY : valgrind_hw3/fast

src/hw3_main.o: src/hw3_main.c.o
.PHONY : src/hw3_main.o

# target to build an object file
src/hw3_main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/src/hw3_main.c.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/src/hw3_main.c.o
.PHONY : src/hw3_main.c.o

src/hw3_main.i: src/hw3_main.c.i
.PHONY : src/hw3_main.i

# target to preprocess a source file
src/hw3_main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/src/hw3_main.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/src/hw3_main.c.i
.PHONY : src/hw3_main.c.i

src/hw3_main.s: src/hw3_main.c.s
.PHONY : src/hw3_main.s

# target to generate assembly for a file
src/hw3_main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/src/hw3_main.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/src/hw3_main.c.s
.PHONY : src/hw3_main.c.s

src/image.o: src/image.c.o
.PHONY : src/image.o

# target to build an object file
src/image.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/src/image.c.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/src/image.c.o
.PHONY : src/image.c.o

src/image.i: src/image.c.i
.PHONY : src/image.i

# target to preprocess a source file
src/image.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/src/image.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/src/image.c.i
.PHONY : src/image.c.i

src/image.s: src/image.c.s
.PHONY : src/image.s

# target to generate assembly for a file
src/image.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/src/image.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/src/image.c.s
.PHONY : src/image.c.s

src/qtree.o: src/qtree.c.o
.PHONY : src/qtree.o

# target to build an object file
src/qtree.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/src/qtree.c.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/src/qtree.c.o
.PHONY : src/qtree.c.o

src/qtree.i: src/qtree.c.i
.PHONY : src/qtree.i

# target to preprocess a source file
src/qtree.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/src/qtree.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/src/qtree.c.i
.PHONY : src/qtree.c.i

src/qtree.s: src/qtree.c.s
.PHONY : src/qtree.s

# target to generate assembly for a file
src/qtree.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/src/qtree.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/src/qtree.c.s
.PHONY : src/qtree.c.s

tests/src/tests_utils.o: tests/src/tests_utils.c.o
.PHONY : tests/src/tests_utils.o

# target to build an object file
tests/src/tests_utils.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/tests/src/tests_utils.c.o
.PHONY : tests/src/tests_utils.c.o

tests/src/tests_utils.i: tests/src/tests_utils.c.i
.PHONY : tests/src/tests_utils.i

# target to preprocess a source file
tests/src/tests_utils.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/tests/src/tests_utils.c.i
.PHONY : tests/src/tests_utils.c.i

tests/src/tests_utils.s: tests/src/tests_utils.c.s
.PHONY : tests/src/tests_utils.s

# target to generate assembly for a file
tests/src/tests_utils.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main.dir/build.make CMakeFiles/hw3_main.dir/tests/src/tests_utils.c.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/hw3_main_asan.dir/build.make CMakeFiles/hw3_main_asan.dir/tests/src/tests_utils.c.s
.PHONY : tests/src/tests_utils.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... valgrind_hw3"
	@echo "... hw3_main"
	@echo "... hw3_main_asan"
	@echo "... src/hw3_main.o"
	@echo "... src/hw3_main.i"
	@echo "... src/hw3_main.s"
	@echo "... src/image.o"
	@echo "... src/image.i"
	@echo "... src/image.s"
	@echo "... src/qtree.o"
	@echo "... src/qtree.i"
	@echo "... src/qtree.s"
	@echo "... tests/src/tests_utils.o"
	@echo "... tests/src/tests_utils.i"
	@echo "... tests/src/tests_utils.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

