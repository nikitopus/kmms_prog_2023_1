cmake_minimum_required(VERSION 3.0.0)
project(homework_obuchaika VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

add_executable(homework_obuchaika npushkarev_menu_main.cpp npushkarev_menu_functions.cpp npushkarev_menu_items.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
