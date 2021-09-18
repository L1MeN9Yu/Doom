#!/usr/bin/env bash

echo build non obfuscate
swift-project/llvm-project/build/bin/clang demos/main.c \
-o demos/main.c.o \
-x c \
-isysroot `xcrun --show-sdk-path` \
-O3

echo build obfuscate
swift-project/llvm-project/build/bin/clang demos/main.c \
-o demos/main.c.obfuscate.o \
-x c \
-isysroot `xcrun --show-sdk-path` \
-O3 \
-mllvm -seed='00000000deadbeef00000000deadbeef' \
-mllvm -sobf
