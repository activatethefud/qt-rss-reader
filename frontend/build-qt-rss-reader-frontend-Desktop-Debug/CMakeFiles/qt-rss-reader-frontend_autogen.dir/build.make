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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug

# Utility rule file for qt-rss-reader-frontend_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/qt-rss-reader-frontend_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/qt-rss-reader-frontend_autogen.dir/progress.make

CMakeFiles/qt-rss-reader-frontend_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target qt-rss-reader-frontend"
	/usr/bin/cmake -E cmake_autogen /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/CMakeFiles/qt-rss-reader-frontend_autogen.dir/AutogenInfo.json Debug

qt-rss-reader-frontend_autogen: CMakeFiles/qt-rss-reader-frontend_autogen
qt-rss-reader-frontend_autogen: CMakeFiles/qt-rss-reader-frontend_autogen.dir/build.make
.PHONY : qt-rss-reader-frontend_autogen

# Rule to build all files generated by this target.
CMakeFiles/qt-rss-reader-frontend_autogen.dir/build: qt-rss-reader-frontend_autogen
.PHONY : CMakeFiles/qt-rss-reader-frontend_autogen.dir/build

CMakeFiles/qt-rss-reader-frontend_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/qt-rss-reader-frontend_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/qt-rss-reader-frontend_autogen.dir/clean

CMakeFiles/qt-rss-reader-frontend_autogen.dir/depend:
	cd /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/qt-rss-reader-frontend /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug /home/nikola/Documents/Faks/AZRS/qt-rss-reader/frontend/build-qt-rss-reader-frontend-Desktop-Debug/CMakeFiles/qt-rss-reader-frontend_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/qt-rss-reader-frontend_autogen.dir/depend
