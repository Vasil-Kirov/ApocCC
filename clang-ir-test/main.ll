; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.33.31629"

%struct.Foo = type { %struct.anon, i32 }
%struct.anon = type { i16, i16 }
%struct.anon.0 = type { i16, i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_type() #0 {
  %1 = alloca %struct.Foo, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 8, i1 false)
  %2 = getelementptr inbounds %struct.Foo, ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0
  store i16 12, ptr %3, align 4
  %4 = getelementptr inbounds %struct.Foo, ptr %1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0
  %6 = load i16, ptr %5, align 4
  %7 = sext i16 %6 to i32
  %8 = mul nsw i32 %7, 12323
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %5, align 4
  %10 = load i64, ptr %1, align 4
  ret i64 %10
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.anon.0, align 2
  %3 = alloca %struct.Foo, align 4
  %4 = alloca %struct.Foo, align 4
  store i32 0, ptr %1, align 4
  %5 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 0
  store i16 12, ptr %5, align 2
  %6 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 1
  store i16 12, ptr %6, align 2
  %7 = call i64 @get_type()
  store i64 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.Foo, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.Foo, ptr %3, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.Foo, ptr %3, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 15.0.2"}
