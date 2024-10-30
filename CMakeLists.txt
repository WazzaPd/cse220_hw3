cmake_minimum_required(VERSION 3.10)
project(hw3 LANGUAGES C CXX)

# Option to build tests
option(BUILD_CODEGRADE_TESTS "Build test suites into separate executables" OFF)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 14)
include_directories(include)

# Build the normal executable. Suitable for use with Valgrind.
add_executable(hw3_main src/qtree.c src/image.c src/hw3_main.c tests/src/tests_utils.c)
target_compile_options(hw3_main PUBLIC 
    -g -Wall -Wextra -Wshadow -Wpedantic -Wdouble-promotion -Wformat=2 
    -Wundef -Werror)
target_include_directories(hw3_main PUBLIC include tests/include)
target_link_libraries(hw3_main PUBLIC m)

# Build an executable with ASAN linked in.
add_executable(hw3_main_asan src/qtree.c src/image.c src/hw3_main.c tests/src/tests_utils.c)
target_compile_options(hw3_main_asan PUBLIC 
    -g -fsanitize=address -fsanitize=leak -fsanitize=undefined 
    -Wall -Wextra -Wshadow -Wpedantic -Wdouble-promotion -Wformat=2 
    -Wundef -Werror)
target_link_options(hw3_main_asan PUBLIC 
    -fsanitize=address -fsanitize=leak -fsanitize=undefined)
target_include_directories(hw3_main_asan PUBLIC include tests/include)
target_link_libraries(hw3_main_asan PUBLIC m asan)

# Custom target to run Valgrind
add_custom_target(valgrind_hw3
    COMMAND valgrind --leak-check=full --track-origins=yes ./hw3_main
    DEPENDS hw3_main
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
    COMMENT "Running hw3_main under Valgrind"
)

# Enable testing if needed
enable_testing()

if(BUILD_CODEGRADE_TESTS)
    # Find GoogleTest
    find_package(GTest REQUIRED)
    include_directories(${GTEST_INCLUDE_DIRS})

    # Create the test executable
    add_executable(hw3_tests tests/src/test_hw3.cpp tests/src/tests_utils.c)

    # Link Google Test and your code
    target_link_libraries(hw3_tests ${GTEST_LIBRARIES} pthread m)

    # Add the test to CTest
    add_test(NAME hw3_tests COMMAND hw3_tests)
endif()
