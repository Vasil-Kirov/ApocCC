; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Actual_Window = type { i32, i32 }

@global_var = constant i64 12
@0 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define i32 @_apoc_init() {
entry:
  %0 = call i32 @main()
  ret i32 %0
}

define i32 @main() {
entry:
  %window = alloca ptr, align 8
  %0 = call ptr @get_window()
  store ptr %0, ptr %window, align 8
  %1 = load ptr, ptr %window, align 8
  %2 = call i32 @something(ptr %1)
  %3 = call i32 (ptr, ...) @printf(ptr @0, i32 %2)
  ret i32 0
}

define ptr @get_window() {
entry:
  %window = alloca ptr, align 8
  %0 = call ptr @mem_alloc(i64 8)
  store ptr %0, ptr %window, align 8
  %1 = load ptr, ptr %window, align 8
  %2 = getelementptr inbounds %Actual_Window, ptr %1, i32 0, i32 0
  store i32 10, ptr %2, align 4
  %3 = load ptr, ptr %window, align 8
  %4 = getelementptr inbounds %Actual_Window, ptr %3, i32 0, i32 1
  store i32 10, ptr %4, align 4
  %5 = load ptr, ptr %window, align 8
  ret ptr %5
}

define i32 @something(ptr %window) {
entry:
  %actual_window = alloca ptr, align 8
  %window1 = alloca ptr, align 8
  store ptr %window, ptr %window1, align 8
  %0 = load ptr, ptr %window1, align 8
  store ptr %0, ptr %actual_window, align 8
  %"derefrence struct" = load ptr, ptr %actual_window, align 8
  %struct_member_ptr = getelementptr inbounds %Actual_Window, ptr %"derefrence struct", i32 0, i32 0
  %struct_member = load i32, ptr %struct_member_ptr, align 4
  ret i32 %struct_member
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
