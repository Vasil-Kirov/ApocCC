; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%My_Nums = type { i8, i32, i64, i32 }

@global_var = global i64 10
@0 = private unnamed_addr constant [2 x i8] c"a\00", align 1

define i32 @_apoc_init() !dbg !8 {
entry:
  %c = alloca i64, align 8
  %My_Nums = alloca %My_Nums, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %My_Nums, i8 0, i64 24, i1 false), !dbg !13
  %0 = getelementptr inbounds %My_Nums, ptr %My_Nums, i32 0, i32 0, !dbg !13
  store i8 40, ptr %0, align 1, !dbg !13
  %1 = getelementptr inbounds %My_Nums, ptr %My_Nums, i32 0, i32 1, !dbg !13
  store i32 20, ptr %1, align 4, !dbg !13
  %2 = getelementptr inbounds %My_Nums, ptr %My_Nums, i32 0, i32 2, !dbg !13
  store i64 10, ptr %2, align 4, !dbg !13
  %3 = getelementptr inbounds %My_Nums, ptr %My_Nums, i32 0, i32 3, !dbg !13
  store i32 5, ptr %3, align 4, !dbg !13
  call void @llvm.dbg.declare(metadata ptr %My_Nums, metadata !14, metadata !DIExpression()), !dbg !13
  call void @llvm.memset.p0.i64(ptr align 8 %c, i8 0, i64 8, i1 false), !dbg !22
  store i64 24, ptr %c, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !22
  %"struct member ptr" = getelementptr inbounds %My_Nums, ptr %My_Nums, i32 0, i32 3, !dbg !24
  %selected = load i32, ptr %"struct member ptr", align 4, !dbg !24
  %4 = call i32 @change_a(i32 %selected), !dbg !24
  %"struct member ptr1" = getelementptr inbounds %My_Nums, ptr %My_Nums, i32 0, i32 3, !dbg !24
  store i32 %4, ptr %"struct member ptr1", align 4, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %"struct member ptr1", metadata !25, metadata !DIExpression()), !dbg !24
  %"struct member ptr2" = getelementptr inbounds %My_Nums, ptr %My_Nums, i32 0, i32 3, !dbg !26
  %selected3 = load i32, ptr %"struct member ptr2", align 4, !dbg !26
  %5 = icmp eq i32 %selected3, 3, !dbg !26
  br i1 %5, label %if_true7, label %if_false, !dbg !26

if_false:                                         ; preds = %entry
  %"struct member ptr4" = getelementptr inbounds %My_Nums, ptr %My_Nums, i32 0, i32 3, !dbg !27
  %selected5 = load i32, ptr %"struct member ptr4", align 4, !dbg !27
  %6 = icmp eq i32 %selected5, 2, !dbg !27
  br i1 %6, label %if_true, label %if_false6, !dbg !27

if_false6:                                        ; preds = %if_false
  ret i32 0, !dbg !28

if_true:                                          ; preds = %if_false
  ret i32 1, !dbg !29

if_true7:                                         ; preds = %entry
  call void @puts(ptr @0), !dbg !30
  ret i32 0, !dbg !31
}

declare void @puts(ptr)

define i32 @change_a(i32 %a) !dbg !32 {
entry:
  %a1 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %a1, i8 0, i64 4, i1 false)
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %a, ptr %a1, align 4
  %0 = load i32, ptr %a1, align 4, !dbg !37
  %1 = sdiv i32 %0, 2, !dbg !37
  ret i32 %1, !dbg !37
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { argmemonly nofree nounwind willreturn writeonly }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !2)
!1 = !DIFile(filename: "Test.apoc", directory: "W:\\Apocalypse")
!2 = !{!3}
!3 = !DIGlobalVariableExpression(var: !4, expr: !DIExpression())
!4 = distinct !DIGlobalVariable(name: "global_var", scope: !1, file: !1, line: 2, type: !5, isLocal: true, isDefinition: true)
!5 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 2, !"CodeView", i32 1}
!8 = distinct !DISubprogram(name: "_apoc_init", scope: !1, file: !1, line: 4, type: !9, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!12 = !{}
!13 = !DILocation(line: 6, column: 5, scope: !8)
!14 = !DILocalVariable(name: "a", scope: !8, file: !1, line: 6, type: !15, align: 128)
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "My_Nums", scope: !1, file: !1, line: 29, size: 192, align: 64, elements: !16)
!16 = !{!17, !19, !20, !21}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1, file: !1, line: 31, baseType: !18, size: 8, align: 8)
!18 = !DIBasicType(name: "i8", size: 8, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1, file: !1, line: 32, baseType: !11, size: 32, align: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1, file: !1, line: 33, baseType: !5, size: 64, align: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1, file: !1, line: 34, baseType: !11, size: 32, align: 32, offset: 128)
!22 = !DILocation(line: 7, column: 5, scope: !8)
!23 = !DILocalVariable(name: "c", scope: !8, file: !1, line: 7, type: !5, align: 64)
!24 = !DILocation(line: 8, column: 5, scope: !8)
!25 = !DILocalVariable(scope: !8, file: !1, line: 8, type: !11, align: 32)
!26 = !DILocation(line: 9, column: 5, scope: !8)
!27 = !DILocation(line: 14, column: 10, scope: !8)
!28 = !DILocation(line: 17, column: 12, scope: !8)
!29 = !DILocation(line: 15, column: 12, scope: !8)
!30 = !DILocation(line: 11, column: 13, scope: !8)
!31 = !DILocation(line: 12, column: 12, scope: !8)
!32 = distinct !DISubprogram(name: "change_a", scope: !1, file: !1, line: 23, type: !33, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!33 = !DISubroutineType(types: !34)
!34 = !{!11, !11}
!35 = !DILocalVariable(name: "a", scope: !32, file: !1, line: 23, type: !11)
!36 = !DILocation(line: 23, scope: !32)
!37 = !DILocation(line: 25, column: 8, scope: !32)
