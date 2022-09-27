; ModuleID = 'quick_test_2.apoc'
source_filename = "quick_test_2.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@global_var = constant i8 1
@global_var.1 = constant i8 0
@global_var.2 = constant ptr null

declare i32 @printf(ptr, ...)

define i32 @print_passed(ptr %__apoc_internal_context) {
entry:
  %the_float = alloca float, align 4
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i32 0, ptr %the_float, align 4
  store float 0x405A4EB860000000, ptr %the_float, align 4
  %0 = load float, ptr %the_float, align 4
  %cast = fptosi float %0 to i32
  ret i32 %cast
}
