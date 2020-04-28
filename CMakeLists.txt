cmake_minimum_required(VERSION 3.5)
project(distropia)

# Set the  the ISO/IEC 14882 standard for distropia application.
set(CMAKE_CXX_STANDARD 14)

add_definitions(-DUSE_IMPORT_EXPORT)

# Find the required Qt Libraries.
find_package(Qt5 REQUIRED COMPONENTS Core Gui Qml Multimedia)

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)

# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)

add_subdirectory(src)

# Install the executable
install(TARGETS distropia DESTINATION bin)
