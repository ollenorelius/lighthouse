# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/pi/lighthouse/lib/libjpeg-turbo-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/lighthouse/lib/libjpeg-turbo-master/build

# Include any dependencies generated for this target.
include CMakeFiles/tjexample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tjexample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tjexample.dir/flags.make

CMakeFiles/tjexample.dir/tjexample.c.o: CMakeFiles/tjexample.dir/flags.make
CMakeFiles/tjexample.dir/tjexample.c.o: ../tjexample.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tjexample.dir/tjexample.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tjexample.dir/tjexample.c.o   -c /home/pi/lighthouse/lib/libjpeg-turbo-master/tjexample.c

CMakeFiles/tjexample.dir/tjexample.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tjexample.dir/tjexample.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lighthouse/lib/libjpeg-turbo-master/tjexample.c > CMakeFiles/tjexample.dir/tjexample.c.i

CMakeFiles/tjexample.dir/tjexample.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tjexample.dir/tjexample.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lighthouse/lib/libjpeg-turbo-master/tjexample.c -o CMakeFiles/tjexample.dir/tjexample.c.s

CMakeFiles/tjexample.dir/tjexample.c.o.requires:

.PHONY : CMakeFiles/tjexample.dir/tjexample.c.o.requires

CMakeFiles/tjexample.dir/tjexample.c.o.provides: CMakeFiles/tjexample.dir/tjexample.c.o.requires
	$(MAKE) -f CMakeFiles/tjexample.dir/build.make CMakeFiles/tjexample.dir/tjexample.c.o.provides.build
.PHONY : CMakeFiles/tjexample.dir/tjexample.c.o.provides

CMakeFiles/tjexample.dir/tjexample.c.o.provides.build: CMakeFiles/tjexample.dir/tjexample.c.o


# Object files for target tjexample
tjexample_OBJECTS = \
"CMakeFiles/tjexample.dir/tjexample.c.o"

# External object files for target tjexample
tjexample_EXTERNAL_OBJECTS =

tjexample: CMakeFiles/tjexample.dir/tjexample.c.o
tjexample: CMakeFiles/tjexample.dir/build.make
tjexample: libturbojpeg.so.0.2.0
tjexample: CMakeFiles/tjexample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tjexample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tjexample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tjexample.dir/build: tjexample

.PHONY : CMakeFiles/tjexample.dir/build

CMakeFiles/tjexample.dir/requires: CMakeFiles/tjexample.dir/tjexample.c.o.requires

.PHONY : CMakeFiles/tjexample.dir/requires

CMakeFiles/tjexample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tjexample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tjexample.dir/clean

CMakeFiles/tjexample.dir/depend:
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/lighthouse/lib/libjpeg-turbo-master /home/pi/lighthouse/lib/libjpeg-turbo-master /home/pi/lighthouse/lib/libjpeg-turbo-master/build /home/pi/lighthouse/lib/libjpeg-turbo-master/build /home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles/tjexample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tjexample.dir/depend
