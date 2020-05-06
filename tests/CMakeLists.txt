set(TEST_PROJECT_NAME "${PROJECT_NAME}Test")

add_executable("${TEST_PROJECT_NAME}"
	../src/add.cpp

	./src/main.cpp
	./src/test_add.cpp
	)

target_include_directories("${TEST_PROJECT_NAME}" BEFORE
	PUBLIC
		../include
		./include
		"${CMAKE_CURRENT_SOURCE_DIR}/gtest/googletest-release-1.10.0/googletest/include"
		)

find_library(GTEST_LIB_DIR
	NAMES libgtest.a
	HINTS "${CMAKE_CURRENT_SOURCE_DIR}/gtest/googletest-release-1.10.0/build/googlemock/gtest/" "${CMAKE_CURRENT_SOURCE_DIR}/gtest/googletest-release-1.10.0/build/lib")

add_library(gtest STATIC IMPORTED)
set_target_properties(gtest PROPERTIES IMPORTED_LOCATION "${GTEST_LIB_DIR}")

target_link_libraries("${TEST_PROJECT_NAME}"
	PUBLIC
		gtest)
