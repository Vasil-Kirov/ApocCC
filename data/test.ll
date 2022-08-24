; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Any = type { ptr, ptr }
%Type_Info = type { %Type_Struct.1 }
%Type_Struct.1 = type { i32, i32, i8, i8, ptr, ptr, ptr }
%Type_Primitive.2 = type { i32, i32 }

@0 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

declare void @var_arg_start(ptr)

define i32 @test_var_args(i32 %a, ...) !dbg !6 {
entry:
  %list = alloca ptr, align 8
  %a1 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %a1, i8 0, i64 4, i1 false)
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 %a, ptr %a1, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %list, i8 0, i64 8, i1 false), !dbg !13
  store i64 0, ptr %list, align 4, !dbg !13
  call void @llvm.dbg.declare(metadata ptr %list, metadata !14, metadata !DIExpression()), !dbg !13
  %0 = load ptr, ptr %list, align 8, !dbg !80
  call void @llvm.va_start(ptr %list), !dbg !80
  %ptr_load = load ptr, ptr %list, align 8, !dbg !81
  %elem_ptr = getelementptr %Any, ptr %ptr_load, i64 0, !dbg !81
  %"struct member ptr" = getelementptr inbounds %Any, ptr %elem_ptr, i32 0, i32 0, !dbg !81
  %"derefrence struct" = load ptr, ptr %"struct member ptr", align 8, !dbg !81
  %"union member ptr" = getelementptr inbounds %Type_Info, ptr %"derefrence struct", i32 0, i32 0, !dbg !81
  %selected = load i32, ptr %"union member ptr", align 4, !dbg !81
  %1 = icmp eq i32 %selected, 3, !dbg !81
  br i1 %1, label %if_true, label %if_false, !dbg !81

if_false:                                         ; preds = %entry
  %2 = load i32, ptr %a1, align 4, !dbg !82
  ret i32 %2, !dbg !82

if_true:                                          ; preds = %entry
  %ptr_load2 = load ptr, ptr %list, align 8, !dbg !83
  %elem_ptr3 = getelementptr %Any, ptr %ptr_load2, i64 0, !dbg !83
  %"struct member ptr4" = getelementptr inbounds %Any, ptr %elem_ptr3, i32 0, i32 1, !dbg !83
  %selected5 = load ptr, ptr %"struct member ptr4", align 8, !dbg !83
  %3 = load i32, ptr %selected5, align 4, !dbg !83
  ret i32 %3, !dbg !83
}

define i32 @_apoc_init() !dbg !84 {
entry:
  %to_any = alloca %Any, align 16
  %any_val = alloca i64, align 8
  %runtime_type_info = alloca %Type_Info, align 16
  %0 = getelementptr inbounds %Type_Info, ptr %runtime_type_info, i32 0, i32 0, !dbg !87
  store i32 3, ptr %0, align 4, !dbg !87
  %1 = getelementptr inbounds %Type_Primitive.2, ptr %runtime_type_info, i32 0, i32 1, !dbg !87
  store i32 4, ptr %1, align 4, !dbg !87
  call void @llvm.memset.p0.i64(ptr align 8 %any_val, i8 0, i64 8, i1 false), !dbg !87
  store i64 34, ptr %any_val, align 4, !dbg !87
  call void @llvm.memset.p0.i64(ptr align 16 %to_any, i8 0, i64 16, i1 false), !dbg !87
  %2 = getelementptr inbounds %Any, ptr %to_any, i32 0, i32 0, !dbg !87
  %3 = getelementptr inbounds %Any, ptr %to_any, i32 0, i32 1, !dbg !87
  store ptr %runtime_type_info, ptr %2, align 8, !dbg !87
  store ptr %any_val, ptr %3, align 8, !dbg !87
  %any_pass = load %Any, ptr %to_any, align 8, !dbg !87
  %4 = call i32 (i32, ...) @test_var_args(i32 10, %Any %any_pass), !dbg !87
  %5 = call i32 (ptr, ...) @printf(ptr @0, i32 %4), !dbg !87
  ret i32 0, !dbg !88
}

declare i32 @printf(ptr, ...)

declare void @puts(ptr)

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

attributes #0 = { argmemonly nofree nounwind willreturn writeonly }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "Test.apoc", directory: "W:\\Apocalypse")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "Basic.apoc", directory: "W:\\Apocalypse")
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 2, !"CodeView", i32 1}
!6 = distinct !DISubprogram(name: "test_var_args", scope: !1, file: !1, line: 4, type: !7, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !10)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9}
!9 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!10 = !{}
!11 = !DILocalVariable(name: "a", scope: !6, file: !1, line: 4, type: !9)
!12 = !DILocation(line: 4, scope: !6)
!13 = !DILocation(line: 6, column: 2, scope: !6)
!14 = !DILocalVariable(name: "list", scope: !6, file: !1, line: 6, type: !15, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "Any", scope: !3, file: !3, line: 47, size: 128, align: 64, elements: !17)
!17 = !{!18, !77}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 48, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !3, file: !3, line: 52, size: 320, align: 64, elements: !21)
!21 = !{!22, !23, !28, !44, !53, !60, !68}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !3, file: !3, line: 53, baseType: !9, size: 32, align: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !3, file: !3, line: 62, baseType: !24, size: 64, align: 128)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Primitive", scope: !3, file: !3, line: 62, size: 64, align: 32, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !3, file: !3, line: 63, baseType: !9, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3, file: !3, line: 64, baseType: !9, size: 32, align: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !3, file: !3, line: 67, baseType: !29, size: 320, align: 128)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Struct", scope: !3, file: !3, line: 67, size: 320, align: 64, elements: !30)
!30 = !{!31, !32, !33, !35, !36, !39, !41}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !3, file: !3, line: 68, baseType: !9, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "member_count", scope: !3, file: !3, line: 69, baseType: !9, size: 32, align: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "is_union", scope: !3, file: !3, line: 70, baseType: !34, size: 8, align: 8, offset: 64)
!34 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "is_packed", scope: !3, file: !3, line: 71, baseType: !34, size: 8, align: 8, offset: 72)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3, file: !3, line: 72, baseType: !37, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "member_names", scope: !3, file: !3, line: 73, baseType: !40, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "member_types", scope: !3, file: !3, line: 74, baseType: !42, size: 64, align: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !3, file: !3, line: 74, size: 320, align: 64, elements: !21)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !3, file: !3, line: 77, baseType: !45, size: 192, align: 128)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Array", scope: !3, file: !3, line: 77, size: 192, align: 64, elements: !46)
!46 = !{!47, !48, !51}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !3, file: !3, line: 78, baseType: !9, size: 32, align: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 79, baseType: !49, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !3, file: !3, line: 79, size: 320, align: 64, elements: !21)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "elem_count", scope: !3, file: !3, line: 80, baseType: !52, size: 64, align: 64, offset: 128)
!52 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3, file: !3, line: 83, baseType: !54, size: 128, align: 128)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Pointer", scope: !3, file: !3, line: 83, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !3, file: !3, line: 84, baseType: !9, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pointed", scope: !3, file: !3, line: 85, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !3, file: !3, line: 85, size: 320, align: 64, elements: !21)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "enumerator", scope: !3, file: !3, line: 88, baseType: !61, size: 256, align: 128)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Enum", scope: !3, file: !3, line: 88, size: 256, align: 64, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !3, file: !3, line: 89, baseType: !9, size: 32, align: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 90, baseType: !24, size: 64, align: 128, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !3, file: !3, line: 91, baseType: !40, size: 64, align: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !3, file: !3, line: 92, baseType: !67, size: 64, align: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3, file: !3, line: 95, baseType: !69, size: 256, align: 128)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Func", scope: !3, file: !3, line: 95, size: 256, align: 64, elements: !70)
!70 = !{!71, !72, !75, !76}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !3, file: !3, line: 96, baseType: !9, size: 32, align: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "param_types", scope: !3, file: !3, line: 97, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !3, file: !3, line: 97, size: 320, align: 64, elements: !21)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "return_type", scope: !3, file: !3, line: 98, baseType: !73, size: 64, align: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "calling_convention", scope: !3, file: !3, line: 99, baseType: !9, size: 32, align: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3, file: !3, line: 49, baseType: !78, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!80 = !DILocation(line: 7, column: 15, scope: !6)
!81 = !DILocation(line: 8, column: 2, scope: !6)
!82 = !DILocation(line: 10, column: 5, scope: !6)
!83 = !DILocation(line: 9, column: 6, scope: !6)
!84 = distinct !DISubprogram(name: "_apoc_init", scope: !1, file: !1, line: 14, type: !85, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !10)
!85 = !DISubroutineType(types: !86)
!86 = !{!9}
!87 = !DILocation(line: 16, column: 8, scope: !84)
!88 = !DILocation(line: 17, column: 5, scope: !84)
