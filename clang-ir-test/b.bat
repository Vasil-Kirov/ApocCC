@echo off
clang -g -S -emit-llvm main.c
clang main.c
