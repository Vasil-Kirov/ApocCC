; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.32.31329"

%struct.My_Struct = type { ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test(ptr noundef %0) #0 !dbg !11 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !21, metadata !DIExpression()), !dbg !22
  %3 = load ptr, ptr %2, align 8, !dbg !23
  %4 = getelementptr inbounds %struct.My_Struct, ptr %3, i32 0, i32 0, !dbg !23
  %5 = load ptr, ptr %4, align 8, !dbg !23
  store i32 10, ptr %5, align 4, !dbg !23
  ret void, !dbg !24
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.My_Struct, align 8
  %4 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 10, ptr %2, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata ptr %3, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 8, i1 false), !dbg !31
  %5 = getelementptr inbounds %struct.My_Struct, ptr %3, i32 0, i32 0, !dbg !32
  store ptr %2, ptr %5, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata ptr %4, metadata !33, metadata !DIExpression()), !dbg !34
  store ptr %3, ptr %4, align 8, !dbg !34
  %6 = load ptr, ptr %4, align 8, !dbg !35
  call void @test(ptr noundef %6), !dbg !35
  %7 = load ptr, ptr %4, align 8, !dbg !36
  %8 = getelementptr inbounds %struct.My_Struct, ptr %7, i32 0, i32 0, !dbg !36
  %9 = load ptr, ptr %8, align 8, !dbg !36
  %10 = load i32, ptr %9, align 4, !dbg !36
  ret i32 %10, !dbg !36
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "main.c", directory: "W:\\Apocalypse\\clang-ir-test", checksumkind: CSK_MD5, checksum: "7f57b92032d71fcb1f6070d7bf826ef7")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 2, !"CodeView", i32 1}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"clang version 15.0.0"}
!11 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 8, type: !12, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "My_Struct", file: !1, line: 6, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "My_Struct", file: !1, line: 3, size: 64, elements: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !16, file: !1, line: 5, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !{}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !11, file: !1, line: 8, type: !14)
!22 = !DILocation(line: 8, scope: !11)
!23 = !DILocation(line: 10, scope: !11)
!24 = !DILocation(line: 11, scope: !11)
!25 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !26, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!26 = !DISubroutineType(types: !27)
!27 = !{!4}
!28 = !DILocalVariable(name: "a", scope: !25, file: !1, line: 16, type: !4)
!29 = !DILocation(line: 16, scope: !25)
!30 = !DILocalVariable(name: "d", scope: !25, file: !1, line: 17, type: !15)
!31 = !DILocation(line: 17, scope: !25)
!32 = !DILocation(line: 18, scope: !25)
!33 = !DILocalVariable(name: "b", scope: !25, file: !1, line: 19, type: !14)
!34 = !DILocation(line: 19, scope: !25)
!35 = !DILocation(line: 20, scope: !25)
!36 = !DILocation(line: 21, scope: !25)
