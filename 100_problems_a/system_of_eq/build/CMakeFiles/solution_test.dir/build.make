# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.7/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/build

# Include any dependencies generated for this target.
include CMakeFiles/solution_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/solution_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/solution_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/solution_test.dir/flags.make

CMakeFiles/solution_test.dir/solution_test.cpp.o: CMakeFiles/solution_test.dir/flags.make
CMakeFiles/solution_test.dir/solution_test.cpp.o: /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/solution_test.cpp
CMakeFiles/solution_test.dir/solution_test.cpp.o: CMakeFiles/solution_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/solution_test.dir/solution_test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/solution_test.dir/solution_test.cpp.o -MF CMakeFiles/solution_test.dir/solution_test.cpp.o.d -o CMakeFiles/solution_test.dir/solution_test.cpp.o -c /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/solution_test.cpp

CMakeFiles/solution_test.dir/solution_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/solution_test.dir/solution_test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/solution_test.cpp > CMakeFiles/solution_test.dir/solution_test.cpp.i

CMakeFiles/solution_test.dir/solution_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/solution_test.dir/solution_test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/solution_test.cpp -o CMakeFiles/solution_test.dir/solution_test.cpp.s

CMakeFiles/solution_test.dir/solution.cpp.o: CMakeFiles/solution_test.dir/flags.make
CMakeFiles/solution_test.dir/solution.cpp.o: /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/solution.cpp
CMakeFiles/solution_test.dir/solution.cpp.o: CMakeFiles/solution_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/solution_test.dir/solution.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/solution_test.dir/solution.cpp.o -MF CMakeFiles/solution_test.dir/solution.cpp.o.d -o CMakeFiles/solution_test.dir/solution.cpp.o -c /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/solution.cpp

CMakeFiles/solution_test.dir/solution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/solution_test.dir/solution.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/solution.cpp > CMakeFiles/solution_test.dir/solution.cpp.i

CMakeFiles/solution_test.dir/solution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/solution_test.dir/solution.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/solution.cpp -o CMakeFiles/solution_test.dir/solution.cpp.s

# Object files for target solution_test
solution_test_OBJECTS = \
"CMakeFiles/solution_test.dir/solution_test.cpp.o" \
"CMakeFiles/solution_test.dir/solution.cpp.o"

# External object files for target solution_test
solution_test_EXTERNAL_OBJECTS =

solution_test: CMakeFiles/solution_test.dir/solution_test.cpp.o
solution_test: CMakeFiles/solution_test.dir/solution.cpp.o
solution_test: CMakeFiles/solution_test.dir/build.make
solution_test: /opt/homebrew/Cellar/googletest/1.14.0/lib/libgtest.a
solution_test: /opt/homebrew/Cellar/googletest/1.14.0/lib/libgtest_main.a
solution_test: CMakeFiles/solution_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable solution_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/solution_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/solution_test.dir/build: solution_test
.PHONY : CMakeFiles/solution_test.dir/build

CMakeFiles/solution_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/solution_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/solution_test.dir/clean

CMakeFiles/solution_test.dir/depend:
	cd /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/build /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/build /Users/bhorowitz/Documents/codeforces/100_problems_a/system_of_eq/build/CMakeFiles/solution_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/solution_test.dir/depend

