; ModuleID = 'quick_test.a'
source_filename = "quick_test.a"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

define float @give_num() {
entry:
  %the_float = alloca float, align 4
  store float 0x3FF4CCCCC0000000, float* %the_float, align 4
  %0 = load float, float* %the_float, align 4
  ret float %0
}
