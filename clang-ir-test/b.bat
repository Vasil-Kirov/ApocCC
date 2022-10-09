@echo off
clang -S -emit-llvm main.c
clang main.c