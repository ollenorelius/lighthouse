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
include sharedlib/CMakeFiles/cjpeg.dir/depend.make

# Include the progress variables for this target.
include sharedlib/CMakeFiles/cjpeg.dir/progress.make

# Include the compile flags for this target's objects.
include sharedlib/CMakeFiles/cjpeg.dir/flags.make

sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o: ../cjpeg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cjpeg.dir/__/cjpeg.c.o   -c /home/pi/lighthouse/lib/libjpeg-turbo-master/cjpeg.c

sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/cjpeg.c.i"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lighthouse/lib/libjpeg-turbo-master/cjpeg.c > CMakeFiles/cjpeg.dir/__/cjpeg.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/cjpeg.c.s"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lighthouse/lib/libjpeg-turbo-master/cjpeg.c -o CMakeFiles/cjpeg.dir/__/cjpeg.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o.requires:

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o.requires

sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o.provides: sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o.requires
	$(MAKE) -f sharedlib/CMakeFiles/cjpeg.dir/build.make sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o.provides.build
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o.provides

sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o.provides.build: sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o


sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o: ../cdjpeg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cjpeg.dir/__/cdjpeg.c.o   -c /home/pi/lighthouse/lib/libjpeg-turbo-master/cdjpeg.c

sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/cdjpeg.c.i"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lighthouse/lib/libjpeg-turbo-master/cdjpeg.c > CMakeFiles/cjpeg.dir/__/cdjpeg.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/cdjpeg.c.s"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lighthouse/lib/libjpeg-turbo-master/cdjpeg.c -o CMakeFiles/cjpeg.dir/__/cdjpeg.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o.requires:

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o.requires

sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o.provides: sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o.requires
	$(MAKE) -f sharedlib/CMakeFiles/cjpeg.dir/build.make sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o.provides.build
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o.provides

sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o.provides.build: sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o


sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o: ../rdgif.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cjpeg.dir/__/rdgif.c.o   -c /home/pi/lighthouse/lib/libjpeg-turbo-master/rdgif.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdgif.c.i"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lighthouse/lib/libjpeg-turbo-master/rdgif.c > CMakeFiles/cjpeg.dir/__/rdgif.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdgif.c.s"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lighthouse/lib/libjpeg-turbo-master/rdgif.c -o CMakeFiles/cjpeg.dir/__/rdgif.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o.requires:

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o.requires

sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o.provides: sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o.requires
	$(MAKE) -f sharedlib/CMakeFiles/cjpeg.dir/build.make sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o.provides.build
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o.provides

sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o.provides.build: sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o


sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o: ../rdppm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cjpeg.dir/__/rdppm.c.o   -c /home/pi/lighthouse/lib/libjpeg-turbo-master/rdppm.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdppm.c.i"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lighthouse/lib/libjpeg-turbo-master/rdppm.c > CMakeFiles/cjpeg.dir/__/rdppm.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdppm.c.s"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lighthouse/lib/libjpeg-turbo-master/rdppm.c -o CMakeFiles/cjpeg.dir/__/rdppm.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o.requires:

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o.requires

sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o.provides: sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o.requires
	$(MAKE) -f sharedlib/CMakeFiles/cjpeg.dir/build.make sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o.provides.build
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o.provides

sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o.provides.build: sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o


sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o: ../rdswitch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cjpeg.dir/__/rdswitch.c.o   -c /home/pi/lighthouse/lib/libjpeg-turbo-master/rdswitch.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdswitch.c.i"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lighthouse/lib/libjpeg-turbo-master/rdswitch.c > CMakeFiles/cjpeg.dir/__/rdswitch.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdswitch.c.s"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lighthouse/lib/libjpeg-turbo-master/rdswitch.c -o CMakeFiles/cjpeg.dir/__/rdswitch.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o.requires:

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o.requires

sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o.provides: sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o.requires
	$(MAKE) -f sharedlib/CMakeFiles/cjpeg.dir/build.make sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o.provides.build
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o.provides

sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o.provides.build: sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o


sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o: ../rdbmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cjpeg.dir/__/rdbmp.c.o   -c /home/pi/lighthouse/lib/libjpeg-turbo-master/rdbmp.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdbmp.c.i"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lighthouse/lib/libjpeg-turbo-master/rdbmp.c > CMakeFiles/cjpeg.dir/__/rdbmp.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdbmp.c.s"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lighthouse/lib/libjpeg-turbo-master/rdbmp.c -o CMakeFiles/cjpeg.dir/__/rdbmp.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o.requires:

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o.requires

sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o.provides: sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o.requires
	$(MAKE) -f sharedlib/CMakeFiles/cjpeg.dir/build.make sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o.provides.build
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o.provides

sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o.provides.build: sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o


sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o: ../rdtarga.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cjpeg.dir/__/rdtarga.c.o   -c /home/pi/lighthouse/lib/libjpeg-turbo-master/rdtarga.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdtarga.c.i"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/lighthouse/lib/libjpeg-turbo-master/rdtarga.c > CMakeFiles/cjpeg.dir/__/rdtarga.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdtarga.c.s"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/lighthouse/lib/libjpeg-turbo-master/rdtarga.c -o CMakeFiles/cjpeg.dir/__/rdtarga.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o.requires:

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o.requires

sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o.provides: sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o.requires
	$(MAKE) -f sharedlib/CMakeFiles/cjpeg.dir/build.make sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o.provides.build
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o.provides

sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o.provides.build: sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o


# Object files for target cjpeg
cjpeg_OBJECTS = \
"CMakeFiles/cjpeg.dir/__/cjpeg.c.o" \
"CMakeFiles/cjpeg.dir/__/cdjpeg.c.o" \
"CMakeFiles/cjpeg.dir/__/rdgif.c.o" \
"CMakeFiles/cjpeg.dir/__/rdppm.c.o" \
"CMakeFiles/cjpeg.dir/__/rdswitch.c.o" \
"CMakeFiles/cjpeg.dir/__/rdbmp.c.o" \
"CMakeFiles/cjpeg.dir/__/rdtarga.c.o"

# External object files for target cjpeg
cjpeg_EXTERNAL_OBJECTS =

cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/build.make
cjpeg: libjpeg.so.62.3.0
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/lighthouse/lib/libjpeg-turbo-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable ../cjpeg"
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cjpeg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sharedlib/CMakeFiles/cjpeg.dir/build: cjpeg

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/build

sharedlib/CMakeFiles/cjpeg.dir/requires: sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.o.requires
sharedlib/CMakeFiles/cjpeg.dir/requires: sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.o.requires
sharedlib/CMakeFiles/cjpeg.dir/requires: sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.o.requires
sharedlib/CMakeFiles/cjpeg.dir/requires: sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.o.requires
sharedlib/CMakeFiles/cjpeg.dir/requires: sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.o.requires
sharedlib/CMakeFiles/cjpeg.dir/requires: sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.o.requires
sharedlib/CMakeFiles/cjpeg.dir/requires: sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.o.requires

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/requires

sharedlib/CMakeFiles/cjpeg.dir/clean:
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib && $(CMAKE_COMMAND) -P CMakeFiles/cjpeg.dir/cmake_clean.cmake
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/clean

sharedlib/CMakeFiles/cjpeg.dir/depend:
	cd /home/pi/lighthouse/lib/libjpeg-turbo-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/lighthouse/lib/libjpeg-turbo-master /home/pi/lighthouse/lib/libjpeg-turbo-master/sharedlib /home/pi/lighthouse/lib/libjpeg-turbo-master/build /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib /home/pi/lighthouse/lib/libjpeg-turbo-master/build/sharedlib/CMakeFiles/cjpeg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/depend

