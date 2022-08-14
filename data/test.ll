; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@global_var = constant i64 12
@constant_array = private constant [256 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
@0 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define i32 @add(i32 %a, i32 %b) {
entry:
  %b2 = alloca i32, align 4
  %a1 = alloca i32, align 4
  store i32 %a, ptr %a1, align 4
  store i32 %b, ptr %b2, align 4
  %0 = load i32, ptr %a1, align 4
  %1 = load i32, ptr %b2, align 4
  %2 = add i32 %0, %1
  ret i32 %2
}

define i32 @_apoc_init() {
entry:
  %0 = call i32 @main()
  ret i32 %0
}

declare [256 x i8] @foo()

define i32 @main() {
entry:
  %i = alloca i64, align 8
  %compile_time_array = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [256 x i8], ptr %compile_time_array, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %0, ptr align 16 @constant_array, i64 256, i1 false)
  store i64 0, ptr %i, align 4
  %1 = load i64, ptr %i, align 4
  %2 = icmp sle i64 %1, 25
  br i1 %2, label %for_true, label %for_false

for_true_jump:                                    ; preds = %for_true
  %3 = load i64, ptr %i, align 4
  %4 = add i64 %3, 1
  store i64 %4, ptr %i, align 4
  %5 = load i64, ptr %i, align 4
  %6 = icmp sle i64 %5, 25
  br i1 %6, label %for_true, label %for_false

for_false:                                        ; preds = %entry, %for_true_jump
  ret i32 0

for_true:                                         ; preds = %entry, %for_true_jump
  %7 = load i64, ptr %i, align 4
  %elem_ptr = getelementptr [256 x i8], ptr %compile_time_array, i64 0, i64 %7
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %8 = add i8 %indexed_val, 65
  %9 = load i64, ptr %i, align 4
  %elem_ptr1 = getelementptr [256 x i8], ptr %compile_time_array, i64 0, i64 %9
  store i8 %8, ptr %elem_ptr1, align 1
  %10 = load i64, ptr %i, align 4
  %elem_ptr2 = getelementptr [256 x i8], ptr %compile_time_array, i64 0, i64 %10
  %indexed_val3 = load i8, ptr %elem_ptr2, align 1
  %cast = sext i8 %indexed_val3 to i32
  %11 = call i32 (ptr, ...) @printf(ptr @0, i32 %cast)
  br label %for_true_jump
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
