; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

define i8 @increment_u8(i8 %a) {
entry:
  %a1 = alloca i8, align 1
  store i8 %a, ptr %a1, align 1
  %0 = load i8, ptr %a1, align 1
  %1 = icmp ne i8 %0, 2
  br i1 %1, label %if_true, label %if_false

if_false:                                         ; preds = %entry, %if_true
  %2 = load i8, ptr %a1, align 1
  ret i8 %2

if_true:                                          ; preds = %entry
  %3 = load i8, ptr %a1, align 1
  %4 = add i8 %3, 1
  store i8 %4, ptr %a1, align 1
  br label %if_false
}
