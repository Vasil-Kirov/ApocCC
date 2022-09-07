; ModuleID = 'quick_test.a'
source_filename = "quick_test.a"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

define double @main() {
entry:
  %a = alloca double, align 8
  store double 6.123000e+00, ptr %a, align 8
  %0 = load double, ptr %a, align 8
  ret double %0
}
