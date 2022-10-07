; ModuleID = 'variable.apoc'
source_filename = "variable.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@global_var = constant i8 1
@global_var.1 = constant i8 0
@global_var.2 = constant ptr null

define i32 @main(ptr %__apoc_internal_context) {
entry:
  %my_var = alloca i32, align 4
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i32 0, ptr %my_var, align 4
  store i32 10, ptr %my_var, align 4
  %0 = load i32, ptr %my_var, align 4
  ret i32 %0
}

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)
