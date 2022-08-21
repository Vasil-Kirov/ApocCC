; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Actual_Window = type { i32, i32 }

@global_var = constant i32 10
@global_var.1 = constant i8 1
@global_var.2 = constant i8 0
@global_var.3 = constant i64 12
@0 = private unnamed_addr constant [16 x i8] c"\0AExit Code: %d\0A\00", align 1
@1 = private unnamed_addr constant [13 x i8] c"Is True?: %d\00", align 1

define i32 @_apoc_init() {
entry:
  %out_val = alloca i32, align 4
  %0 = call i32 @main()
  call void @llvm.memset.p0.i64(ptr align 4 %out_val, i8 0, i64 4, i1 false)
  store i32 %0, ptr %out_val, align 4
  %1 = load i32, ptr %out_val, align 4
  %2 = call i32 (ptr, ...) @printf(ptr @0, i32 %1)
  %3 = load i32, ptr %out_val, align 4
  ret i32 %3
}

define i32 @main() {
entry:
  %i = alloca i64, align 8
  %val = alloca i8, align 1
  call void @llvm.memset.p0.i64(ptr align 1 %val, i8 0, i64 1, i1 false)
  store i8 1, ptr %val, align 1
  %0 = load i8, ptr %val, align 1
  %1 = call i32 (ptr, ...) @printf(ptr @1, i8 %0)
  call void @llvm.memset.p0.i64(ptr align 8 %i, i8 0, i64 8, i1 false)
  store i64 0, ptr %i, align 4
  %2 = load i8, ptr %val, align 1
  %boolean_expr = trunc i8 %2 to i1
  br i1 %boolean_expr, label %for_true, label %for_false

for_true_jump:                                    ; preds = %for_true
  %3 = load i64, ptr %i, align 4
  %4 = add i64 %3, 1
  store i64 %4, ptr %i, align 4
  %5 = load i8, ptr %val, align 1
  %boolean_expr1 = trunc i8 %5 to i1
  br i1 %boolean_expr1, label %for_true, label %for_false

for_false:                                        ; preds = %entry, %for_true_jump
  ret i32 0

for_true:                                         ; preds = %entry, %for_true_jump
  store i8 0, ptr %val, align 1
  br label %for_true_jump
}

define ptr @get_window(i32 %a) {
entry:
  %window = alloca ptr, align 8
  %a1 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %a1, i8 0, i64 4, i1 false)
  store i32 %a, ptr %a1, align 4
  %0 = call ptr @mem_alloc(i64 8)
  call void @llvm.memset.p0.i64(ptr align 8 %window, i8 0, i64 8, i1 false)
  store ptr %0, ptr %window, align 8
  %1 = load i32, ptr %a1, align 4
  %"derefrence struct" = load ptr, ptr %window, align 8
  %"struct member ptr" = getelementptr inbounds %Actual_Window, ptr %"derefrence struct", i32 0, i32 0
  store i32 %1, ptr %"struct member ptr", align 4
  %"derefrence struct2" = load ptr, ptr %window, align 8
  %"struct member ptr3" = getelementptr inbounds %Actual_Window, ptr %"derefrence struct2", i32 0, i32 1
  store i32 10, ptr %"struct member ptr3", align 4
  %2 = load ptr, ptr %window, align 8
  ret ptr %2
}

define i32 @something(ptr %window) {
entry:
  %actual_window = alloca ptr, align 8
  %window1 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %window1, i8 0, i64 8, i1 false)
  store ptr %window, ptr %window1, align 8
  %0 = load ptr, ptr %window1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %actual_window, i8 0, i64 8, i1 false)
  store ptr %0, ptr %actual_window, align 8
  %"derefrence struct" = load ptr, ptr %actual_window, align 8
  %"struct member ptr" = getelementptr inbounds %Actual_Window, ptr %"derefrence struct", i32 0, i32 0
  %selected = load i32, ptr %"struct member ptr", align 4
  ret i32 %selected
}

declare ptr @malloc(i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @scanf(ptr, ...)

declare i32 @printf(ptr, ...)

declare void @srand(i32)

declare i32 @rand()

declare void @GetSystemTime(ptr)

declare i32 @puts(ptr)

define ptr @mem_alloc(i64 %size) {
entry:
  %result = alloca ptr, align 8
  %size1 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %size1, i8 0, i64 8, i1 false)
  store i64 %size, ptr %size1, align 4
  %0 = load i64, ptr %size1, align 4
  %1 = call ptr @malloc(i64 %0)
  call void @llvm.memset.p0.i64(ptr align 8 %result, i8 0, i64 8, i1 false)
  store ptr %1, ptr %result, align 8
  %2 = load ptr, ptr %result, align 8
  %3 = load i64, ptr %size1, align 4
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3)
  %5 = load ptr, ptr %result, align 8
  ret ptr %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { argmemonly nofree nounwind willreturn writeonly }
