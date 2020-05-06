# Replace values
# ProjectName: Change to your project name

cmake_minimum_required(VERSION 3.2 FATAL_ERROR)
set(PROJECT_NAME hello)
project("${PROJECT_NAME}" VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX STANDARD 17)
set(CMAKE_CXX_STANARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Insert Dependencies here
# find_package
# add_library
# set_target_properties ## Where applicable

# Build the app
add_executable("${PROJECT_NAME}"
	# List your files to include in the project
	src/main.cpp
	)

# Include directories for your dependencies so that the #include directive
# works
# target_include_directories()

# Link personally-made dependencies
# add_subdirectory

# Link your dependencies
# target_link_libraries()

# Add Tests
# add_subdirectory(tests)


# INSTALL
install(TARGETS "${PROJECT_NAME}" DESTINATION bin)
