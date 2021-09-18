#!/usr/bin/env bash

PROJECT_DIR="swift-project/llvm-project"

cmake -S "${PROJECT_DIR}"/llvm -B "${PROJECT_DIR}"/build -DLLVM_ENABLE_PROJECTS='clang' -DCMAKE_BUILD_TYPE=Release -DLLVM_INCLUDE_TESTS=OFF

make -C swift-project/llvm-project/build -j $(sysctl -n hw.ncpu)
