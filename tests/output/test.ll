; ModuleID = '00016.apoc'
source_filename = "00016.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@global_var = constant i8 1
@global_var.1 = constant i8 0
@global_var.2 = constant ptr null

define i32 @main() {
entry:
  %p = alloca ptr, align 8
  %arr = alloca [2 x i32], align 4
  store i64 0, ptr %arr, align 4
  store i64 0, ptr %p, align 8
  %elem_ptr = getelementptr [2 x i32], ptr %arr, i64 0, i64 1
  store ptr %elem_ptr, ptr %p, align 8
  %ptr_addr = load ptr, ptr %p, align 8
  store i32 0, ptr %ptr_addr, align 4
  %elem_ptr1 = getelementptr [2 x i32], ptr %arr, i64 0, i64 1
  %indexed_val = load i32, ptr %elem_ptr1, align 4
  ret i32 %indexed_val
}

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)
