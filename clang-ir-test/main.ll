; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.32.31329"

$"??_C@_0BA@OOGDFDF@some?5string?5duh?$AA@" = comdat any

@"??_C@_0BA@OOGDFDF@some?5string?5duh?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"some string duh\00", comdat, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @foo() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@OOGDFDF@some?5string?5duh?$AA@", i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i8* @foo()
  %3 = getelementptr inbounds i8, i8* %2, i64 0
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  ret i32 %5
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.5"}
