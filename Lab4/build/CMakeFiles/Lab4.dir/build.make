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
CMAKE_SOURCE_DIR = "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build"

# Include any dependencies generated for this target.
include CMakeFiles/Lab4.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Lab4.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab4.dir/flags.make

CMakeFiles/Lab4.dir/Main.cpp.o: CMakeFiles/Lab4.dir/flags.make
CMakeFiles/Lab4.dir/Main.cpp.o: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Main.cpp
CMakeFiles/Lab4.dir/Main.cpp.o: CMakeFiles/Lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Lab4.dir/Main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab4.dir/Main.cpp.o -MF CMakeFiles/Lab4.dir/Main.cpp.o.d -o CMakeFiles/Lab4.dir/Main.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Main.cpp"

CMakeFiles/Lab4.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab4.dir/Main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Main.cpp" > CMakeFiles/Lab4.dir/Main.cpp.i

CMakeFiles/Lab4.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab4.dir/Main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Main.cpp" -o CMakeFiles/Lab4.dir/Main.cpp.s

CMakeFiles/Lab4.dir/Camera.cpp.o: CMakeFiles/Lab4.dir/flags.make
CMakeFiles/Lab4.dir/Camera.cpp.o: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Camera.cpp
CMakeFiles/Lab4.dir/Camera.cpp.o: CMakeFiles/Lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Lab4.dir/Camera.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab4.dir/Camera.cpp.o -MF CMakeFiles/Lab4.dir/Camera.cpp.o.d -o CMakeFiles/Lab4.dir/Camera.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Camera.cpp"

CMakeFiles/Lab4.dir/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab4.dir/Camera.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Camera.cpp" > CMakeFiles/Lab4.dir/Camera.cpp.i

CMakeFiles/Lab4.dir/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab4.dir/Camera.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Camera.cpp" -o CMakeFiles/Lab4.dir/Camera.cpp.s

CMakeFiles/Lab4.dir/Image.cpp.o: CMakeFiles/Lab4.dir/flags.make
CMakeFiles/Lab4.dir/Image.cpp.o: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Image.cpp
CMakeFiles/Lab4.dir/Image.cpp.o: CMakeFiles/Lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Lab4.dir/Image.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab4.dir/Image.cpp.o -MF CMakeFiles/Lab4.dir/Image.cpp.o.d -o CMakeFiles/Lab4.dir/Image.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Image.cpp"

CMakeFiles/Lab4.dir/Image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab4.dir/Image.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Image.cpp" > CMakeFiles/Lab4.dir/Image.cpp.i

CMakeFiles/Lab4.dir/Image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab4.dir/Image.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Image.cpp" -o CMakeFiles/Lab4.dir/Image.cpp.s

CMakeFiles/Lab4.dir/ImageIO.cpp.o: CMakeFiles/Lab4.dir/flags.make
CMakeFiles/Lab4.dir/ImageIO.cpp.o: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/ImageIO.cpp
CMakeFiles/Lab4.dir/ImageIO.cpp.o: CMakeFiles/Lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Lab4.dir/ImageIO.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab4.dir/ImageIO.cpp.o -MF CMakeFiles/Lab4.dir/ImageIO.cpp.o.d -o CMakeFiles/Lab4.dir/ImageIO.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/ImageIO.cpp"

CMakeFiles/Lab4.dir/ImageIO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab4.dir/ImageIO.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/ImageIO.cpp" > CMakeFiles/Lab4.dir/ImageIO.cpp.i

CMakeFiles/Lab4.dir/ImageIO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab4.dir/ImageIO.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/ImageIO.cpp" -o CMakeFiles/Lab4.dir/ImageIO.cpp.s

CMakeFiles/Lab4.dir/Raytrace.cpp.o: CMakeFiles/Lab4.dir/flags.make
CMakeFiles/Lab4.dir/Raytrace.cpp.o: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Raytrace.cpp
CMakeFiles/Lab4.dir/Raytrace.cpp.o: CMakeFiles/Lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Lab4.dir/Raytrace.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab4.dir/Raytrace.cpp.o -MF CMakeFiles/Lab4.dir/Raytrace.cpp.o.d -o CMakeFiles/Lab4.dir/Raytrace.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Raytrace.cpp"

CMakeFiles/Lab4.dir/Raytrace.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab4.dir/Raytrace.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Raytrace.cpp" > CMakeFiles/Lab4.dir/Raytrace.cpp.i

CMakeFiles/Lab4.dir/Raytrace.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab4.dir/Raytrace.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Raytrace.cpp" -o CMakeFiles/Lab4.dir/Raytrace.cpp.s

CMakeFiles/Lab4.dir/Util.cpp.o: CMakeFiles/Lab4.dir/flags.make
CMakeFiles/Lab4.dir/Util.cpp.o: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Util.cpp
CMakeFiles/Lab4.dir/Util.cpp.o: CMakeFiles/Lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Lab4.dir/Util.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab4.dir/Util.cpp.o -MF CMakeFiles/Lab4.dir/Util.cpp.o.d -o CMakeFiles/Lab4.dir/Util.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Util.cpp"

CMakeFiles/Lab4.dir/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab4.dir/Util.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Util.cpp" > CMakeFiles/Lab4.dir/Util.cpp.i

CMakeFiles/Lab4.dir/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab4.dir/Util.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Util.cpp" -o CMakeFiles/Lab4.dir/Util.cpp.s

CMakeFiles/Lab4.dir/Plane.cpp.o: CMakeFiles/Lab4.dir/flags.make
CMakeFiles/Lab4.dir/Plane.cpp.o: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Plane.cpp
CMakeFiles/Lab4.dir/Plane.cpp.o: CMakeFiles/Lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Lab4.dir/Plane.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab4.dir/Plane.cpp.o -MF CMakeFiles/Lab4.dir/Plane.cpp.o.d -o CMakeFiles/Lab4.dir/Plane.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Plane.cpp"

CMakeFiles/Lab4.dir/Plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab4.dir/Plane.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Plane.cpp" > CMakeFiles/Lab4.dir/Plane.cpp.i

CMakeFiles/Lab4.dir/Plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab4.dir/Plane.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Plane.cpp" -o CMakeFiles/Lab4.dir/Plane.cpp.s

CMakeFiles/Lab4.dir/Sphere.cpp.o: CMakeFiles/Lab4.dir/flags.make
CMakeFiles/Lab4.dir/Sphere.cpp.o: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Sphere.cpp
CMakeFiles/Lab4.dir/Sphere.cpp.o: CMakeFiles/Lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Lab4.dir/Sphere.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab4.dir/Sphere.cpp.o -MF CMakeFiles/Lab4.dir/Sphere.cpp.o.d -o CMakeFiles/Lab4.dir/Sphere.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Sphere.cpp"

CMakeFiles/Lab4.dir/Sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab4.dir/Sphere.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Sphere.cpp" > CMakeFiles/Lab4.dir/Sphere.cpp.i

CMakeFiles/Lab4.dir/Sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab4.dir/Sphere.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Sphere.cpp" -o CMakeFiles/Lab4.dir/Sphere.cpp.s

CMakeFiles/Lab4.dir/Triangle.cpp.o: CMakeFiles/Lab4.dir/flags.make
CMakeFiles/Lab4.dir/Triangle.cpp.o: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Triangle.cpp
CMakeFiles/Lab4.dir/Triangle.cpp.o: CMakeFiles/Lab4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Lab4.dir/Triangle.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Lab4.dir/Triangle.cpp.o -MF CMakeFiles/Lab4.dir/Triangle.cpp.o.d -o CMakeFiles/Lab4.dir/Triangle.cpp.o -c "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Triangle.cpp"

CMakeFiles/Lab4.dir/Triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Lab4.dir/Triangle.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Triangle.cpp" > CMakeFiles/Lab4.dir/Triangle.cpp.i

CMakeFiles/Lab4.dir/Triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Lab4.dir/Triangle.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Triangle.cpp" -o CMakeFiles/Lab4.dir/Triangle.cpp.s

# Object files for target Lab4
Lab4_OBJECTS = \
"CMakeFiles/Lab4.dir/Main.cpp.o" \
"CMakeFiles/Lab4.dir/Camera.cpp.o" \
"CMakeFiles/Lab4.dir/Image.cpp.o" \
"CMakeFiles/Lab4.dir/ImageIO.cpp.o" \
"CMakeFiles/Lab4.dir/Raytrace.cpp.o" \
"CMakeFiles/Lab4.dir/Util.cpp.o" \
"CMakeFiles/Lab4.dir/Plane.cpp.o" \
"CMakeFiles/Lab4.dir/Sphere.cpp.o" \
"CMakeFiles/Lab4.dir/Triangle.cpp.o"

# External object files for target Lab4
Lab4_EXTERNAL_OBJECTS =

/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/Main.cpp.o
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/Camera.cpp.o
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/Image.cpp.o
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/ImageIO.cpp.o
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/Raytrace.cpp.o
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/Util.cpp.o
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/Plane.cpp.o
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/Sphere.cpp.o
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/Triangle.cpp.o
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/build.make
/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4: CMakeFiles/Lab4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable \"/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4\""
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab4.dir/build: /Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/Lab4
.PHONY : CMakeFiles/Lab4.dir/build

CMakeFiles/Lab4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab4.dir/clean

CMakeFiles/Lab4.dir/depend:
	cd "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)" "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)" "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build" "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build" "/Users/jiang_zhimeng/Downloads/Lab4_todo_(xplat-cmake)/build/CMakeFiles/Lab4.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Lab4.dir/depend

