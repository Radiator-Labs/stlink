# Warning: This example assumes that you are building on a host with pkg-config available (e.g. linux).
# The logic required to build under windows/mingw was intentionally omitted to keep this CMakeLists as small as possible.

cmake_minimum_required(VERSION 3.4.2)

project(st-hello)
set(PROJECT_VERSION 0.1)

set(SRCS main.c)

include_directories(${STLINK_INCLUDE_DIRS})

find_package(PkgConfig)
pkg_check_modules(STLINK REQUIRED stlink)

set(CMAKE_C_FLAGS " ${STLINK_CFLAGS_OTHER} -Wall -Werror")

add_executable(${PROJECT_NAME} ${SRCS})

target_link_libraries(${PROJECT_NAME} ${STLINK_LIBRARIES})

install(TARGETS ${PROJECT_NAME} DESTINATION ${CMAKE_INSTALL_BINDIR})
