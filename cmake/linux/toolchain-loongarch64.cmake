# See linux/toolchain-x86_64.cmake for details about multiple load of toolchain file.
include_guard(GLOBAL)

set (CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set (CMAKE_SYSTEM_NAME "Linux")
set (CMAKE_SYSTEM_PROCESSOR "loongarch64")
set (CMAKE_C_COMPILER_TARGET "loongarch64-linux-gnu")
set (CMAKE_CXX_COMPILER_TARGET "loongarch64-linux-gnu")
set (CMAKE_ASM_COMPILER_TARGET "loongarch64-linux-gnu")

#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mcmodel=large")
#set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -mcmodel=large")
#
#set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mcmodel=large")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mcmodel=large")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -mcmodel=large")

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -mcmodel=large")

set (CMAKE_SYSROOT "/")
set (TOOLCHAIN_PATH "/usr")

set (LINKER_NAME "/opt1/llvm/bin/ld.lld")

set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --gcc-toolchain=${TOOLCHAIN_PATH}")
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --gcc-toolchain=${TOOLCHAIN_PATH}")
set (CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} --gcc-toolchain=${TOOLCHAIN_PATH}")
