; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.33.31629"

@null = internal global i8* inttoptr (i64 1234 to i8*), align 8, !dbg !0
@my_f_var = internal global i32 123, align 4, !dbg !7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @give_num() #0 !dbg !17 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 43, i32* %1, align 4, !dbg !23
  %2 = load i32, i32* %1, align 4, !dbg !24
  %3 = add nsw i32 %2, 3, !dbg !24
  store i32 %3, i32* %1, align 4, !dbg !24
  %4 = load i32, i32* %1, align 4, !dbg !25
  ret i32 %4, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 !dbg !26 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !29, metadata !DIExpression()), !dbg !30
  %2 = call i32 @give_num(), !dbg !30
  %3 = sext i32 %2 to i64, !dbg !30
  %4 = load i8*, i8** @null, align 8, !dbg !30
  %5 = ptrtoint i8* %4 to i64, !dbg !30
  %6 = add nsw i64 %3, %5, !dbg !30
  %7 = trunc i64 %6 to i32, !dbg !30
  store i32 %7, i32* %1, align 4, !dbg !30
  %8 = load i32, i32* %1, align 4, !dbg !31
  %9 = load i32, i32* @my_f_var, align 4, !dbg !31
  %10 = add nsw i32 %8, %9, !dbg !31
  ret void, !dbg !32
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "null", scope: !2, file: !3, line: 4, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "main.c", directory: "E:\\C_Projects\\Apocalypse\\clang-ir-test", checksumkind: CSK_MD5, checksum: "2206916472efe24bfa089c95afb1cf3b")
!4 = !{!5}
!5 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "my_f_var", scope: !2, file: !3, line: 3, type: !9, isLocal: true, isDefinition: true)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !{i32 2, !"CodeView", i32 1}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{!"clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "give_num", scope: !18, file: !18, line: 3, type: !19, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!18 = !DIFile(filename: "./other.c", directory: "E:\\C_Projects\\Apocalypse\\clang-ir-test", checksumkind: CSK_MD5, checksum: "7ab6dc52402943eb0c8ef00bc80d5717")
!19 = !DISubroutineType(types: !20)
!20 = !{!9}
!21 = !{}
!22 = !DILocalVariable(name: "a", scope: !17, file: !18, line: 5, type: !9)
!23 = !DILocation(line: 5, scope: !17)
!24 = !DILocation(line: 6, scope: !17)
!25 = !DILocation(line: 7, scope: !17)
!26 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 6, type: !27, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!27 = !DISubroutineType(types: !28)
!28 = !{null}
!29 = !DILocalVariable(name: "a", scope: !26, file: !3, line: 8, type: !9)
!30 = !DILocation(line: 8, scope: !26)
!31 = !DILocation(line: 9, scope: !26)
!32 = !DILocation(line: 10, scope: !26)
