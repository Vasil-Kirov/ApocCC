; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@global_var = constant i64 12
@constant_array = private constant [256 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
@0 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

define i32 @_apoc_init() {
entry:
  %0 = call i32 @main()
  ret i32 %0
}

declare [256 x i8] @foo()

define i32 @main() {
entry:
  %compile_time_array = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], ptr %compile_time_array, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %0, ptr align 16 @constant_array, i64 256, i1 false)
  %elem_ptr = getelementptr [256 x i8], ptr %compile_time_array, i64 0
  %1 = call i32 (ptr, ...) @printf(ptr @0, ptr %elem_ptr)
  ret i32 0
}

declare ptr @malloc(i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @scanf(ptr, ...)

declare i32 @printf(ptr, ...)

declare void @srand(i32)

declare i32 @rand()

declare void @GetSystemTime(ptr)

define void @change_arr(ptr %arr) {
entry:
  %i2 = alloca i64, align 8
  %i = alloca i64, align 8
  %some_ptr = alloca ptr, align 8
  %arr1 = alloca ptr, align 8
  store ptr %arr, ptr %arr1, align 8
  %0 = call ptr @mem_alloc(i64 16)
  store ptr %0, ptr %some_ptr, align 8
  store i64 0, ptr %i, align 4
  %1 = load i64, ptr %i, align 4
  %2 = icmp slt i64 %1, 2
  br i1 %2, label %for_true10, label %for_false

for_true_jump:                                    ; preds = %for_true10
  %3 = load i64, ptr %i2, align 4
  %4 = add i64 %3, 1
  store i64 %4, ptr %i2, align 4
  %5 = load i64, ptr %i2, align 4
  %6 = icmp slt i64 %5, 2
  br i1 %6, label %for_true10, label %for_false

for_false:                                        ; preds = %entry, %for_true_jump
  store i64 0, ptr %i2, align 4
  %7 = load i64, ptr %i2, align 4
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %for_true, label %for_false4

for_true_jump3:                                   ; preds = %for_true
  %9 = load i64, ptr %i2, align 4
  %10 = add i64 %9, 1
  store i64 %10, ptr %i2, align 4
  %11 = load i64, ptr %i2, align 4
  %12 = icmp slt i64 %11, 2
  br i1 %12, label %for_true, label %for_false4

for_false4:                                       ; preds = %for_false, %for_true_jump3
  ret void

for_true:                                         ; preds = %for_false, %for_true_jump3
  %ptr_load = load ptr, ptr %arr1, align 8
  %elem_ptr = getelementptr i16, ptr %ptr_load, i64 3
  %indexed_val = load i16, ptr %elem_ptr, align 2
  %13 = load i64, ptr %i2, align 4
  %ptr_load5 = load ptr, ptr %some_ptr, align 8
  %elem_ptr6 = getelementptr i16, ptr %ptr_load5, i64 %13
  %indexed_val7 = load i16, ptr %elem_ptr6, align 2
  %14 = load i64, ptr %i2, align 4
  %cast = trunc i64 %14 to i16
  %15 = add i16 %indexed_val7, %cast
  %16 = add i16 %indexed_val, %15
  %ptr_load8 = load ptr, ptr %arr1, align 8
  %elem_ptr9 = getelementptr i16, ptr %ptr_load8, i64 3
  store i16 %16, ptr %elem_ptr9, align 2
  br label %for_true_jump3

for_true10:                                       ; preds = %entry, %for_true_jump
  %17 = load i64, ptr %i2, align 4
  %18 = load i64, ptr %i2, align 4
  %19 = mul i64 %17, %18
  %cast11 = trunc i64 %19 to i16
  %20 = load i64, ptr %i2, align 4
  %ptr_load12 = load ptr, ptr %some_ptr, align 8
  %elem_ptr13 = getelementptr i16, ptr %ptr_load12, i64 %20
  store i16 %cast11, ptr %elem_ptr13, align 2
  br label %for_true_jump
}

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
