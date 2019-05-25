cmake_minimum_required (VERSION 2.6)
project (lighthouse)
set (lighthouse_VERSION_MAJOR 1)
set (lighthouse_VERSION_MINOR 0)

set (PROJECT_SOURCE_DIR ./src)
set (PROJECT_BINARY_DIR ./build)
set (PROJECT_INCLUDE_DIR ./include)



configure_file ( "${PROJECT_SOURCE_DIR}/config.h.in"
                 "${PROJECT_BINARY_DIR}/config.h")

include_directories("${PROJECT_BINARY_DIR}")
include_directories("${PROJECT_SOURCE_DIR}")
include_directories("${PROJECT_INCLUDE_DIR}")

set(THREADS_PREFER_PTHREAD_FLAG ON)

find_package(Threads REQUIRED)
find_package(OpenCV REQUIRED)

add_executable(lighthouse 
src/main.cpp
src/CameraController.cpp
src/ClientListModel.cpp
src/ClientModel.cpp
src/ConnectionReceiver.cpp
src/ImageContainerModel.cpp
src/ImageModel.cpp
src/Signal.cpp
src/SendImageController.cpp
)

target_link_libraries(lighthouse Threads::Threads)
target_link_libraries(lighthouse ${OpenCV_LIBS})
