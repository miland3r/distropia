qt5_add_resources(distropia_RCS ../resources/distropia.qrc)

set(distropia_HEADERS "../include/")

set(distropia_SRC
  distropia.cpp
)

set(HEADER_FILES 
${distropia_HEADERS}/distropia.h
${distropia_HEADERS}/process.h
)

add_library(distropia_LIBS ${distropia_SRC} ${HEADER_FILES})
target_link_libraries(distropia_LIBS Qt5::Core Qt5::Multimedia)

target_include_directories(distropia_LIBS PRIVATE ${distropia_HEADERS})

add_executable(distropia main.cpp ${distropia_RCS} ${HEADER_FILES})

target_include_directories(distropia PRIVATE ${distropia_HEADERS})

target_link_libraries(distropia Qt5::Core Qt5::Qml Qt5::Gui Qt5::Multimedia pthread distropia_LIBS pugixml)

target_compile_options(distropia PRIVATE "-Wall" "-Werror" "--static")

