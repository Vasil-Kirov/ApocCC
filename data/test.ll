; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@constant_array = private constant [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0]
@0 = private unnamed_addr constant [11 x i8] c"number %d\0A\00", align 1
@1 = private unnamed_addr constant [11 x i8] c"number %d\0A\00", align 1
@2 = private unnamed_addr constant [11 x i8] c"number %d\0A\00", align 1
@3 = private unnamed_addr constant [11 x i8] c"number %d\0A\00", align 1
@4 = private unnamed_addr constant [11 x i8] c"number %d\0A\00", align 1

define i32 @_apoc_init() {
entry:
  %0 = call i32 @main()
  ret i32 %0
}

declare [256 x i16] @foo()

define i32 @main() {
entry:
  %compile_time_array = alloca [256 x i16], align 16
  %0 = getelementptr inbounds [256 x i16], ptr %compile_time_array, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %0, ptr align 16 @constant_array, i64 512, i1 false)
  %elem_ptr = getelementptr [256 x i16], ptr %compile_time_array, i64 0, i64 0
  %indexed_val = load i16, ptr %elem_ptr, align 2
  %cast = zext i16 %indexed_val to i32
  %1 = call i32 (ptr, ...) @printf(ptr @0, i32 %cast)
  %elem_ptr1 = getelementptr [256 x i16], ptr %compile_time_array, i64 0, i64 1
  %indexed_val2 = load i16, ptr %elem_ptr1, align 2
  %cast3 = zext i16 %indexed_val2 to i32
  %2 = call i32 (ptr, ...) @printf(ptr @1, i32 %cast3)
  %elem_ptr4 = getelementptr [256 x i16], ptr %compile_time_array, i64 0, i64 2
  %indexed_val5 = load i16, ptr %elem_ptr4, align 2
  %cast6 = zext i16 %indexed_val5 to i32
  %3 = call i32 (ptr, ...) @printf(ptr @2, i32 %cast6)
  %elem_ptr7 = getelementptr [256 x i16], ptr %compile_time_array, i64 0, i64 3
  %indexed_val8 = load i16, ptr %elem_ptr7, align 2
  %cast9 = zext i16 %indexed_val8 to i32
  %4 = call i32 (ptr, ...) @printf(ptr @3, i32 %cast9)
  %elem_ptr10 = getelementptr [256 x i16], ptr %compile_time_array, i64 0, i64 4
  %indexed_val11 = load i16, ptr %elem_ptr10, align 2
  %cast12 = zext i16 %indexed_val11 to i32
  %5 = call i32 (ptr, ...) @printf(ptr @4, i32 %cast12)
  %elem_ptr13 = getelementptr [256 x i16], ptr %compile_time_array, i64 0, i64 3
  %indexed_val14 = load i16, ptr %elem_ptr13, align 2
  %cast15 = zext i16 %indexed_val14 to i32
  ret i32 %cast15
}

declare ptr @malloc(i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @scanf(ptr, ...)

declare i32 @printf(ptr, ...)

declare void @srand(i32)

declare i32 @rand()

declare void @GetSystemTime(ptr)

define ptr @mem_alloc(i64 %size) {
entry:
  %result = alloca ptr, align 8
  %size1 = alloca i64, align 8
  store i64 %size, ptr %size1, align 4
  %0 = load i64, ptr %size1, align 4
  %1 = call ptr @malloc(i64 %0)
  store ptr %1, ptr %result, align 8
  %2 = load ptr, ptr %result, align 8
  %3 = load i64, ptr %size1, align 4
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3)
  %5 = load ptr, ptr %result, align 8
  ret ptr %5
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { argmemonly nofree nounwind willreturn }
