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
CMAKE_SOURCE_DIR = /mnt/c/Users/Aritra/Desktop/programming/Refract

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Aritra/Desktop/programming/Refract/cmake-build-debug-wsl-clang

# Include any dependencies generated for this target.
include CMakeFiles/Refract.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Refract.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Refract.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Refract.dir/flags.make

CMakeFiles/Refract.dir/main.cpp.o: CMakeFiles/Refract.dir/flags.make
CMakeFiles/Refract.dir/main.cpp.o: ../main.cpp
CMakeFiles/Refract.dir/main.cpp.o: CMakeFiles/Refract.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Aritra/Desktop/programming/Refract/cmake-build-debug-wsl-clang/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Refract.dir/main.cpp.o"
	/usr/bin/clang++-15 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Refract.dir/main.cpp.o -MF CMakeFiles/Refract.dir/main.cpp.o.d -o CMakeFiles/Refract.dir/main.cpp.o -c /mnt/c/Users/Aritra/Desktop/programming/Refract/main.cpp

CMakeFiles/Refract.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Refract.dir/main.cpp.i"
	/usr/bin/clang++-15 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Aritra/Desktop/programming/Refract/main.cpp > CMakeFiles/Refract.dir/main.cpp.i

CMakeFiles/Refract.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Refract.dir/main.cpp.s"
	/usr/bin/clang++-15 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Aritra/Desktop/programming/Refract/main.cpp -o CMakeFiles/Refract.dir/main.cpp.s

# Object files for target Refract
Refract_OBJECTS = \
"CMakeFiles/Refract.dir/main.cpp.o"

# External object files for target Refract
Refract_EXTERNAL_OBJECTS =

Refract: CMakeFiles/Refract.dir/main.cpp.o
Refract: CMakeFiles/Refract.dir/build.make
Refract: CMakeFiles/Refract.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Aritra/Desktop/programming/Refract/cmake-build-debug-wsl-clang/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Refract"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Refract.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Refract.dir/build: Refract
.PHONY : CMakeFiles/Refract.dir/build

CMakeFiles/Refract.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Refract.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Refract.dir/clean

CMakeFiles/Refract.dir/depend:
	cd /mnt/c/Users/Aritra/Desktop/programming/Refract/cmake-build-debug-wsl-clang && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Aritra/Desktop/programming/Refract /mnt/c/Users/Aritra/Desktop/programming/Refract /mnt/c/Users/Aritra/Desktop/programming/Refract/cmake-build-debug-wsl-clang /mnt/c/Users/Aritra/Desktop/programming/Refract/cmake-build-debug-wsl-clang /mnt/c/Users/Aritra/Desktop/programming/Refract/cmake-build-debug-wsl-clang/CMakeFiles/Refract.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Refract.dir/depend
