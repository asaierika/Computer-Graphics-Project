# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.24.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.24.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/build"

# Include any dependencies generated for this target.
include CMakeFiles/Lab3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Lab3.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab3.dir/flags.make

CMakeFiles/Lab3.dir/main.cpp.o: CMakeFiles/Lab3.dir/flags.make
CMakeFiles/Lab3.dir/main.cpp.o: /Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/main.cpp
CMakeFiles/Lab3.dir/main.cpp.o: CMakeFiles/Lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lab3.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab3.dir/main.cpp.o -MF CMakeFiles/Lab3.dir/main.cpp.o.d -o CMakeFiles/Lab3.dir/main.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/main.cpp"

CMakeFiles/Lab3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab3.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/main.cpp" > CMakeFiles/Lab3.dir/main.cpp.i

CMakeFiles/Lab3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab3.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/main.cpp" -o CMakeFiles/Lab3.dir/main.cpp.s

CMakeFiles/Lab3.dir/image_io.cpp.o: CMakeFiles/Lab3.dir/flags.make
CMakeFiles/Lab3.dir/image_io.cpp.o: /Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/image_io.cpp
CMakeFiles/Lab3.dir/image_io.cpp.o: CMakeFiles/Lab3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Lab3.dir/image_io.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab3.dir/image_io.cpp.o -MF CMakeFiles/Lab3.dir/image_io.cpp.o.d -o CMakeFiles/Lab3.dir/image_io.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/image_io.cpp"

CMakeFiles/Lab3.dir/image_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab3.dir/image_io.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/image_io.cpp" > CMakeFiles/Lab3.dir/image_io.cpp.i

CMakeFiles/Lab3.dir/image_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab3.dir/image_io.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/image_io.cpp" -o CMakeFiles/Lab3.dir/image_io.cpp.s

# Object files for target Lab3
Lab3_OBJECTS = \
"CMakeFiles/Lab3.dir/main.cpp.o" \
"CMakeFiles/Lab3.dir/image_io.cpp.o"

# External object files for target Lab3
Lab3_EXTERNAL_OBJECTS =

/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3: CMakeFiles/Lab3.dir/main.cpp.o
/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3: CMakeFiles/Lab3.dir/image_io.cpp.o
/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3: CMakeFiles/Lab3.dir/build.make
/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/System/Library/Frameworks/GLUT.framework/GLUT.tbd
/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/System/Library/Frameworks/Cocoa.framework/Cocoa.tbd
/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3: CMakeFiles/Lab3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable \"/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3\""
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab3.dir/build: /Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/Lab3
.PHONY : CMakeFiles/Lab3.dir/build

CMakeFiles/Lab3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab3.dir/clean

CMakeFiles/Lab3.dir/depend:
	cd "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)" "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)" "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/build" "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/build" "/Users/jiang_zhimeng/Downloads/Lab3_todo_(xplat-cmake)/build/CMakeFiles/Lab3.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Lab3.dir/depend

