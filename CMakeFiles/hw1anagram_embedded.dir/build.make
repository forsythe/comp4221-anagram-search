# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search

# Include any dependencies generated for this target.
include CMakeFiles/hw1anagram_embedded.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hw1anagram_embedded.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw1anagram_embedded.dir/flags.make

CMakeFiles/hw1anagram_embedded.dir/main.cpp.o: CMakeFiles/hw1anagram_embedded.dir/flags.make
CMakeFiles/hw1anagram_embedded.dir/main.cpp.o: main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/hw1anagram_embedded.dir/main.cpp.o"
	/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hw1anagram_embedded.dir/main.cpp.o -c /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search/main.cpp

CMakeFiles/hw1anagram_embedded.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1anagram_embedded.dir/main.cpp.i"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search/main.cpp > CMakeFiles/hw1anagram_embedded.dir/main.cpp.i

CMakeFiles/hw1anagram_embedded.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1anagram_embedded.dir/main.cpp.s"
	/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search/main.cpp -o CMakeFiles/hw1anagram_embedded.dir/main.cpp.s

CMakeFiles/hw1anagram_embedded.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/hw1anagram_embedded.dir/main.cpp.o.requires

CMakeFiles/hw1anagram_embedded.dir/main.cpp.o.provides: CMakeFiles/hw1anagram_embedded.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/hw1anagram_embedded.dir/build.make CMakeFiles/hw1anagram_embedded.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/hw1anagram_embedded.dir/main.cpp.o.provides

CMakeFiles/hw1anagram_embedded.dir/main.cpp.o.provides.build: CMakeFiles/hw1anagram_embedded.dir/main.cpp.o

# Object files for target hw1anagram_embedded
hw1anagram_embedded_OBJECTS = \
"CMakeFiles/hw1anagram_embedded.dir/main.cpp.o"

# External object files for target hw1anagram_embedded
hw1anagram_embedded_EXTERNAL_OBJECTS =

hw1anagram_embedded: CMakeFiles/hw1anagram_embedded.dir/main.cpp.o
hw1anagram_embedded: CMakeFiles/hw1anagram_embedded.dir/build.make
hw1anagram_embedded: CMakeFiles/hw1anagram_embedded.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable hw1anagram_embedded"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw1anagram_embedded.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw1anagram_embedded.dir/build: hw1anagram_embedded
.PHONY : CMakeFiles/hw1anagram_embedded.dir/build

CMakeFiles/hw1anagram_embedded.dir/requires: CMakeFiles/hw1anagram_embedded.dir/main.cpp.o.requires
.PHONY : CMakeFiles/hw1anagram_embedded.dir/requires

CMakeFiles/hw1anagram_embedded.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw1anagram_embedded.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw1anagram_embedded.dir/clean

CMakeFiles/hw1anagram_embedded.dir/depend:
	cd /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search /homes/hsuab/comp4221_nlp/anagram_embedded/comp4221_anagram_search/CMakeFiles/hw1anagram_embedded.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw1anagram_embedded.dir/depend

