# Haiku's executable linker needs PIC references for GCC's std::thread helper.
# CMake loads this override after compiler/platform rules in try_compile too.
if(CMAKE_SYSTEM_NAME STREQUAL "Haiku")
    set(CMAKE_CXX_COMPILE_OPTIONS_PIE "-fPIC")
endif()
