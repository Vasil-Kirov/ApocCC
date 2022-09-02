; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Any = type { ptr, ptr }
%Type_Info = type { %Type_Struct.1 }
%Type_Struct.1 = type { i32, i32, i8, i8, ptr, ptr, ptr }
%__Internal_Context = type { ptr }
%string = type { ptr, i64 }
%String_Builder = type { [256 x i8], i64, ptr }
%Type_Primitive.2 = type { i32, i32 }

@global_var = constant i8 1, !dbg !0
@global_var.1 = constant i8 0, !dbg !4
@global_var.2 = constant ptr null, !dbg !6
@global_var.3 = constant i64 256, !dbg !10
@global_var.4 = constant i64 65536, !dbg !14
@global_var.5 = constant i64 131072, !dbg !17
@global_var.6 = constant i64 262144, !dbg !19
@global_var.7 = constant i64 524288, !dbg !21
@global_var.8 = constant i64 1048576, !dbg !23
@0 = private unnamed_addr constant [14 x i8] c"my big string\00", align 1
@1 = private unnamed_addr constant [13 x i8] c" more text %\00", align 1
@2 = private unnamed_addr constant [10 x i8] c"Number: %\00", align 1
@3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)

define i32 @main(ptr %__apoc_internal_context) !dbg !37 {
entry:
  %to_any9 = alloca %Any, align 16
  %any_val8 = alloca i64, align 8
  %runtime_type_info7 = alloca %Type_Info, align 16
  %__apoc_internal_context6 = alloca %__Internal_Context, align 16
  %to_any = alloca %Any, align 16
  %any_val = alloca i64, align 8
  %runtime_type_info = alloca %Type_Info, align 16
  %__apoc_internal_context5 = alloca %__Internal_Context, align 16
  %str = alloca %string, align 16
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %result = alloca %String_Builder, align 16
  %__apoc_internal_context2 = alloca %__Internal_Context, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context2, i32 0, i32 0, !dbg !42
  call void @llvm.memset.p0.i64(ptr align 16 %result, i8 0, i64 272, i1 false), !dbg !42
  %return_value_member = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context2, i32 0, i32 0, !dbg !42
  store ptr %result, ptr %return_value_member, align 8, !dbg !42
  call void @init_builder(ptr %__apoc_internal_context2, ptr @0), !dbg !42
  call void @llvm.dbg.declare(metadata ptr %result, metadata !43, metadata !DIExpression()), !dbg !42
  %1 = load %String_Builder, ptr %result, align 8, !dbg !54
  call void @"overload[x]="(ptr %result, ptr @1), !dbg !54
  %2 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !55
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false), !dbg !55
  %return_value_member4 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !55
  store ptr %str, ptr %return_value_member4, align 8, !dbg !55
  %3 = load %String_Builder, ptr %result, align 8, !dbg !55
  call void @builder_to_string(ptr %__apoc_internal_context3, ptr %result), !dbg !55
  call void @llvm.dbg.declare(metadata ptr %str, metadata !56, metadata !DIExpression()), !dbg !55
  %4 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !62
  %5 = load %string, ptr %str, align 8, !dbg !62
  %6 = getelementptr inbounds %Type_Info, ptr %runtime_type_info, i32 0, i32 0, !dbg !62
  store i32 3, ptr %6, align 4, !dbg !62
  %7 = getelementptr inbounds %Type_Primitive.2, ptr %runtime_type_info, i32 0, i32 1, !dbg !62
  store i32 4, ptr %7, align 4, !dbg !62
  store i64 0, ptr %any_val, align 4, !dbg !62
  store i64 10, ptr %any_val, align 4, !dbg !62
  call void @llvm.memset.p0.i64(ptr align 16 %to_any, i8 0, i64 16, i1 false), !dbg !62
  %8 = getelementptr inbounds %Any, ptr %to_any, i32 0, i32 0, !dbg !62
  %9 = getelementptr inbounds %Any, ptr %to_any, i32 0, i32 1, !dbg !62
  store ptr %runtime_type_info, ptr %8, align 8, !dbg !62
  store ptr %any_val, ptr %9, align 8, !dbg !62
  %any_pass = load %Any, ptr %to_any, align 8, !dbg !62
  call void (ptr, %string, ...) @"print!@string!@-"(ptr %__apoc_internal_context5, %string %5, %Any %any_pass), !dbg !62
  %10 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context6, i32 0, i32 0, !dbg !63
  %11 = getelementptr inbounds %Type_Info, ptr %runtime_type_info7, i32 0, i32 0, !dbg !63
  store i32 3, ptr %11, align 4, !dbg !63
  %12 = getelementptr inbounds %Type_Primitive.2, ptr %runtime_type_info7, i32 0, i32 1, !dbg !63
  store i32 4, ptr %12, align 4, !dbg !63
  store i64 0, ptr %any_val8, align 4, !dbg !63
  store i64 20, ptr %any_val8, align 4, !dbg !63
  call void @llvm.memset.p0.i64(ptr align 16 %to_any9, i8 0, i64 16, i1 false), !dbg !63
  %13 = getelementptr inbounds %Any, ptr %to_any9, i32 0, i32 0, !dbg !63
  %14 = getelementptr inbounds %Any, ptr %to_any9, i32 0, i32 1, !dbg !63
  store ptr %runtime_type_info7, ptr %13, align 8, !dbg !63
  store ptr %any_val8, ptr %14, align 8, !dbg !63
  %any_pass10 = load %Any, ptr %to_any9, align 8, !dbg !63
  call void (ptr, ptr, ...) @"print!@* u8!@-"(ptr %__apoc_internal_context6, ptr @2, %Any %any_pass10), !dbg !63
  ret i32 0, !dbg !64
}

declare ptr @malloc(i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @scanf(ptr, ...)

declare i32 @printf(ptr, ...)

declare i32 @atoi(ptr)

declare void @srand(i32)

declare i32 @rand()

declare i32 @puts(ptr)

declare i32 @putchar(i8)

declare void @free(ptr)

define ptr @mem_alloc(ptr %__apoc_internal_context, i64 %size) !dbg !65 {
entry:
  %result = alloca ptr, align 8
  %size2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %size2, align 4
  call void @llvm.dbg.declare(metadata ptr %size2, metadata !69, metadata !DIExpression()), !dbg !70
  store i64 %size, ptr %size2, align 4
  %0 = load i64, ptr %size2, align 4, !dbg !71
  %1 = call ptr @malloc(i64 %0), !dbg !71
  store i64 0, ptr %result, align 4, !dbg !71
  store ptr %1, ptr %result, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %result, metadata !72, metadata !DIExpression()), !dbg !71
  %2 = load ptr, ptr %result, align 8, !dbg !73
  %3 = load i64, ptr %size2, align 4, !dbg !73
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3), !dbg !73
  %5 = load ptr, ptr %result, align 8, !dbg !74
  ret ptr %5, !dbg !74
}

define void @builder_to_string(ptr %__apoc_internal_context, ptr %builder) !dbg !75 {
entry:
  %__apoc_internal_context41 = alloca %__Internal_Context, align 16
  %__apoc_internal_context23 = alloca %__Internal_Context, align 16
  %i15 = alloca i64, align 8
  %times = alloca i64, align 8
  %__apoc_internal_context12 = alloca %__Internal_Context, align 16
  %i = alloca i64, align 8
  %current = alloca ptr, align 8
  %out_len = alloca i64, align 8
  %out = alloca %string, align 16
  %builder2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %builder2, align 4
  call void @llvm.dbg.declare(metadata ptr %builder2, metadata !78, metadata !DIExpression()), !dbg !79
  store ptr %builder, ptr %builder2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !80
  call void @llvm.dbg.declare(metadata ptr %out, metadata !81, metadata !DIExpression()), !dbg !80
  store i64 0, ptr %out_len, align 4, !dbg !82
  store i64 0, ptr %out_len, align 4, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %out_len, metadata !83, metadata !DIExpression()), !dbg !82
  %0 = load ptr, ptr %builder2, align 8, !dbg !84
  store i64 0, ptr %current, align 4, !dbg !84
  store ptr %0, ptr %current, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %current, metadata !85, metadata !DIExpression()), !dbg !84
  store i64 0, ptr %i, align 4, !dbg !86
  store i64 0, ptr %i, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %i, metadata !87, metadata !DIExpression()), !dbg !88
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %for.incr, %entry
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !86
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 2, !dbg !86
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !86
  %1 = icmp ne ptr %selected, null, !dbg !86
  br i1 %1, label %for.body, label %for.aftr, !dbg !86

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %out_len, align 4, !dbg !89
  %"derefrence struct3" = load ptr, ptr %current, align 8, !dbg !89
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 1, !dbg !89
  %selected5 = load i64, ptr %"struct member ptr4", align 4, !dbg !89
  %3 = add i64 %2, %selected5, !dbg !89
  store i64 %3, ptr %out_len, align 4, !dbg !89
  %"derefrence struct6" = load ptr, ptr %current, align 8, !dbg !90
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2, !dbg !90
  %selected8 = load ptr, ptr %"struct member ptr7", align 8, !dbg !90
  store ptr %selected8, ptr %current, align 8, !dbg !90
  br label %for.incr, !dbg !91

for.aftr:                                         ; preds = %for.cond
  %4 = load i64, ptr %out_len, align 4, !dbg !92
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !92
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !92
  %selected11 = load i64, ptr %"struct member ptr10", align 4, !dbg !92
  %5 = add i64 %4, %selected11, !dbg !92
  store i64 %5, ptr %out_len, align 4, !dbg !92
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context12, i32 0, i32 0, !dbg !93
  %7 = load i64, ptr %out_len, align 4, !dbg !93
  %8 = call ptr @mem_alloc(ptr %__apoc_internal_context12, i64 %7), !dbg !93
  %"struct member ptr13" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !93
  store ptr %8, ptr %"struct member ptr13", align 8, !dbg !93
  %9 = load i64, ptr %out_len, align 4, !dbg !94
  %"struct member ptr14" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !94
  store i64 %9, ptr %"struct member ptr14", align 4, !dbg !94
  store i64 0, ptr %times, align 4, !dbg !95
  store i64 0, ptr %times, align 4, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %times, metadata !96, metadata !DIExpression()), !dbg !95
  store i64 0, ptr %i15, align 4, !dbg !97
  store i64 0, ptr %i15, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %i15, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond16, !dbg !97

for.incr:                                         ; preds = %for.body
  %10 = load i64, ptr %i, align 4, !dbg !91
  %11 = add i64 %10, 1, !dbg !91
  store i64 %11, ptr %i, align 4, !dbg !91
  br label %for.cond, !dbg !91

for.cond16:                                       ; preds = %for.incr22, %for.aftr
  %"derefrence struct19" = load ptr, ptr %current, align 8, !dbg !97
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 2, !dbg !97
  %selected21 = load ptr, ptr %"struct member ptr20", align 8, !dbg !97
  %12 = icmp ne ptr %selected21, null, !dbg !97
  br i1 %12, label %for.body17, label %for.aftr18, !dbg !97

for.body17:                                       ; preds = %for.cond16
  %13 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context23, i32 0, i32 0, !dbg !100
  %14 = load i64, ptr %times, align 4, !dbg !100
  %15 = mul i64 %14, 256, !dbg !100
  %"struct member ptr24" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !100
  %ptr_load = load ptr, ptr %"struct member ptr24", align 8, !dbg !100
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %15, !dbg !100
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !100
  %16 = load i64, ptr %times, align 4, !dbg !100
  %17 = mul i64 %16, 256, !dbg !100
  %"struct member ptr25" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !100
  %ptr_load26 = load ptr, ptr %"struct member ptr25", align 8, !dbg !100
  %elem_ptr27 = getelementptr i8, ptr %ptr_load26, i64 %17, !dbg !100
  %"derefrence struct28" = load ptr, ptr %current, align 8, !dbg !100
  %"struct member ptr29" = getelementptr inbounds %String_Builder, ptr %"derefrence struct28", i32 0, i32 0, !dbg !100
  %elem_ptr30 = getelementptr [256 x i8], ptr %"struct member ptr29", i64 0, i64 0, !dbg !100
  %indexed_val31 = load i8, ptr %elem_ptr30, align 1, !dbg !100
  %"derefrence struct32" = load ptr, ptr %current, align 8, !dbg !100
  %"struct member ptr33" = getelementptr inbounds %String_Builder, ptr %"derefrence struct32", i32 0, i32 0, !dbg !100
  %elem_ptr34 = getelementptr [256 x i8], ptr %"struct member ptr33", i64 0, i64 0, !dbg !100
  %"derefrence struct35" = load ptr, ptr %current, align 8, !dbg !100
  %"struct member ptr36" = getelementptr inbounds %String_Builder, ptr %"derefrence struct35", i32 0, i32 1, !dbg !100
  %selected37 = load i64, ptr %"struct member ptr36", align 4, !dbg !100
  call void @copy(ptr %__apoc_internal_context23, ptr %elem_ptr27, ptr %elem_ptr34, i64 %selected37), !dbg !100
  %"derefrence struct38" = load ptr, ptr %current, align 8, !dbg !101
  %"struct member ptr39" = getelementptr inbounds %String_Builder, ptr %"derefrence struct38", i32 0, i32 2, !dbg !101
  %selected40 = load ptr, ptr %"struct member ptr39", align 8, !dbg !101
  store ptr %selected40, ptr %current, align 8, !dbg !101
  %18 = load i64, ptr %times, align 4, !dbg !102
  %19 = add i64 %18, 1, !dbg !102
  store i64 %19, ptr %times, align 4, !dbg !102
  br label %for.incr22, !dbg !103

for.aftr18:                                       ; preds = %for.cond16
  %20 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context41, i32 0, i32 0, !dbg !104
  %21 = load i64, ptr %times, align 4, !dbg !104
  %22 = mul i64 %21, 256, !dbg !104
  %"struct member ptr42" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !104
  %ptr_load43 = load ptr, ptr %"struct member ptr42", align 8, !dbg !104
  %elem_ptr44 = getelementptr i8, ptr %ptr_load43, i64 %22, !dbg !104
  %indexed_val45 = load i8, ptr %elem_ptr44, align 1, !dbg !104
  %23 = load i64, ptr %times, align 4, !dbg !104
  %24 = mul i64 %23, 256, !dbg !104
  %"struct member ptr46" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !104
  %ptr_load47 = load ptr, ptr %"struct member ptr46", align 8, !dbg !104
  %elem_ptr48 = getelementptr i8, ptr %ptr_load47, i64 %24, !dbg !104
  %"derefrence struct49" = load ptr, ptr %current, align 8, !dbg !104
  %"struct member ptr50" = getelementptr inbounds %String_Builder, ptr %"derefrence struct49", i32 0, i32 0, !dbg !104
  %elem_ptr51 = getelementptr [256 x i8], ptr %"struct member ptr50", i64 0, i64 0, !dbg !104
  %indexed_val52 = load i8, ptr %elem_ptr51, align 1, !dbg !104
  %"derefrence struct53" = load ptr, ptr %current, align 8, !dbg !104
  %"struct member ptr54" = getelementptr inbounds %String_Builder, ptr %"derefrence struct53", i32 0, i32 0, !dbg !104
  %elem_ptr55 = getelementptr [256 x i8], ptr %"struct member ptr54", i64 0, i64 0, !dbg !104
  %"derefrence struct56" = load ptr, ptr %current, align 8, !dbg !104
  %"struct member ptr57" = getelementptr inbounds %String_Builder, ptr %"derefrence struct56", i32 0, i32 1, !dbg !104
  %selected58 = load i64, ptr %"struct member ptr57", align 4, !dbg !104
  call void @copy(ptr %__apoc_internal_context41, ptr %elem_ptr48, ptr %elem_ptr55, i64 %selected58), !dbg !104
  %25 = load i64, ptr %out_len, align 4, !dbg !105
  %"derefrence struct59" = load ptr, ptr %builder2, align 8, !dbg !105
  %"struct member ptr60" = getelementptr inbounds %String_Builder, ptr %"derefrence struct59", i32 0, i32 1, !dbg !105
  %selected61 = load i64, ptr %"struct member ptr60", align 4, !dbg !105
  %26 = add i64 %25, %selected61, !dbg !105
  store i64 %26, ptr %out_len, align 4, !dbg !105
  %27 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !106
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %27, i32 0, i32 0, !dbg !106
  %28 = load ptr, ptr %ret_ptr, align 8, !dbg !106
  %29 = load %string, ptr %out, align 8, !dbg !106
  store %string %29, ptr %28, align 8, !dbg !106
  ret void, !dbg !106

for.incr22:                                       ; preds = %for.body17
  %30 = load i64, ptr %i15, align 4, !dbg !103
  %31 = add i64 %30, 1, !dbg !103
  store i64 %31, ptr %i15, align 4, !dbg !103
  br label %for.cond16, !dbg !103
}

define void @init_builder(ptr %__apoc_internal_context, ptr %text) !dbg !107 {
entry:
  %__apoc_internal_context11 = alloca %__Internal_Context, align 16
  %i = alloca i64, align 8
  %times = alloca i64, align 8
  %current = alloca ptr, align 8
  %out = alloca %String_Builder, align 16
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !110, metadata !DIExpression()), !dbg !111
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 272, i1 false), !dbg !112
  call void @llvm.dbg.declare(metadata ptr %out, metadata !113, metadata !DIExpression()), !dbg !112
  %0 = load %String_Builder, ptr %out, align 8, !dbg !114
  store i64 0, ptr %current, align 4, !dbg !114
  store ptr %out, ptr %current, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %current, metadata !115, metadata !DIExpression()), !dbg !114
  store i64 0, ptr %times, align 4, !dbg !116
  store i64 0, ptr %times, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %times, metadata !117, metadata !DIExpression()), !dbg !116
  store i64 0, ptr %i, align 4, !dbg !118
  store i64 0, ptr %i, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %i, metadata !119, metadata !DIExpression()), !dbg !120
  br label %for.cond, !dbg !118

for.cond:                                         ; preds = %for.incr, %entry
  %1 = load i64, ptr %i, align 4, !dbg !118
  %2 = load i64, ptr %times, align 4, !dbg !118
  %3 = mul i64 %2, 256, !dbg !118
  %4 = add i64 %1, %3, !dbg !118
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !118
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %4, !dbg !118
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !118
  %5 = icmp ne i8 %indexed_val, 0, !dbg !118
  br i1 %5, label %for.body, label %for.aftr, !dbg !118

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 4, !dbg !121
  %7 = load i64, ptr %times, align 4, !dbg !121
  %8 = mul i64 %7, 256, !dbg !121
  %9 = add i64 %6, %8, !dbg !121
  %ptr_load3 = load ptr, ptr %text2, align 8, !dbg !121
  %elem_ptr4 = getelementptr i8, ptr %ptr_load3, i64 %9, !dbg !121
  %indexed_val5 = load i8, ptr %elem_ptr4, align 1, !dbg !121
  %10 = load i64, ptr %i, align 4, !dbg !121
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !121
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 0, !dbg !121
  %elem_ptr6 = getelementptr [256 x i8], ptr %"struct member ptr", i64 0, i64 %10, !dbg !121
  store i8 %indexed_val5, ptr %elem_ptr6, align 1, !dbg !121
  %"derefrence struct7" = load ptr, ptr %current, align 8, !dbg !122
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %"derefrence struct7", i32 0, i32 1, !dbg !122
  %selected = load i64, ptr %"struct member ptr8", align 4, !dbg !122
  %11 = add i64 %selected, 1, !dbg !122
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !122
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !122
  store i64 %11, ptr %"struct member ptr10", align 4, !dbg !122
  %12 = load i64, ptr %i, align 4, !dbg !123
  %13 = icmp eq i64 %12, 256, !dbg !123
  br i1 %13, label %if.true, label %if.aftr, !dbg !124

for.aftr:                                         ; preds = %for.cond
  %14 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !125
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %14, i32 0, i32 0, !dbg !125
  %15 = load ptr, ptr %ret_ptr, align 8, !dbg !125
  %16 = load %String_Builder, ptr %out, align 8, !dbg !125
  store %String_Builder %16, ptr %15, align 8, !dbg !125
  ret void, !dbg !125

for.incr:                                         ; preds = %if.aftr
  %17 = load i64, ptr %i, align 4, !dbg !124
  %18 = add i64 %17, 1, !dbg !124
  store i64 %18, ptr %i, align 4, !dbg !124
  br label %for.cond, !dbg !124

if.true:                                          ; preds = %for.body
  store i64 0, ptr %i, align 4, !dbg !126
  %19 = load i64, ptr %times, align 4, !dbg !127
  %20 = add i64 %19, 1, !dbg !127
  store i64 %20, ptr %times, align 4, !dbg !127
  %21 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context11, i32 0, i32 0, !dbg !128
  %22 = call ptr @mem_alloc(ptr %__apoc_internal_context11, i64 272), !dbg !128
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !128
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 2, !dbg !128
  store ptr %22, ptr %"struct member ptr13", align 8, !dbg !128
  %"derefrence struct14" = load ptr, ptr %current, align 8, !dbg !129
  %"struct member ptr15" = getelementptr inbounds %String_Builder, ptr %"derefrence struct14", i32 0, i32 2, !dbg !129
  %selected16 = load ptr, ptr %"struct member ptr15", align 8, !dbg !129
  store ptr %selected16, ptr %current, align 8, !dbg !129
  br label %if.aftr, !dbg !130

if.aftr:                                          ; preds = %for.body, %if.true
  br label %for.incr, !dbg !124
}

define i8 @compare(ptr %__apoc_internal_context, %string %str1, %string %str2) !dbg !131 {
entry:
  %i = alloca i64, align 8
  %str23 = alloca %string, align 16
  %str12 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str12, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str12, metadata !134, metadata !DIExpression()), !dbg !135
  store %string %str1, ptr %str12, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str23, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str23, metadata !136, metadata !DIExpression()), !dbg !135
  store %string %str2, ptr %str23, align 8
  %"struct member ptr" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1, !dbg !137
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !137
  %"struct member ptr4" = getelementptr inbounds %string, ptr %str23, i32 0, i32 1, !dbg !137
  %selected5 = load i64, ptr %"struct member ptr4", align 4, !dbg !137
  %0 = icmp ne i64 %selected, %selected5, !dbg !137
  br i1 %0, label %if.true, label %if.aftr, !dbg !138

if.true:                                          ; preds = %entry
  ret i8 0, !dbg !139

if.aftr:                                          ; preds = %entry
  store i64 0, ptr %i, align 4, !dbg !138
  store i64 0, ptr %i, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %i, metadata !140, metadata !DIExpression()), !dbg !141
  br label %for.cond, !dbg !138

for.cond:                                         ; preds = %for.incr, %if.aftr
  %1 = load i64, ptr %i, align 4, !dbg !138
  %"struct member ptr6" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1, !dbg !138
  %selected7 = load i64, ptr %"struct member ptr6", align 4, !dbg !138
  %2 = icmp slt i64 %1, %selected7, !dbg !138
  br i1 %2, label %for.body, label %for.aftr, !dbg !138

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 4, !dbg !142
  %"struct member ptr8" = getelementptr inbounds %string, ptr %str12, i32 0, i32 0, !dbg !142
  %ptr_load = load ptr, ptr %"struct member ptr8", align 8, !dbg !142
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %3, !dbg !142
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !142
  %4 = load i64, ptr %i, align 4, !dbg !142
  %"struct member ptr9" = getelementptr inbounds %string, ptr %str23, i32 0, i32 0, !dbg !142
  %ptr_load10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !142
  %elem_ptr11 = getelementptr i8, ptr %ptr_load10, i64 %4, !dbg !142
  %indexed_val12 = load i8, ptr %elem_ptr11, align 1, !dbg !142
  %5 = icmp ne i8 %indexed_val, %indexed_val12, !dbg !142
  br i1 %5, label %if.true13, label %if.aftr14, !dbg !142

for.aftr:                                         ; preds = %for.cond
  ret i8 1, !dbg !143

for.incr:                                         ; preds = %if.aftr14
  %6 = load i64, ptr %i, align 4, !dbg !142
  %7 = add i64 %6, 1, !dbg !142
  store i64 %7, ptr %i, align 4, !dbg !142
  br label %for.cond, !dbg !142

if.true13:                                        ; preds = %for.body
  ret i8 0, !dbg !144

if.aftr14:                                        ; preds = %for.body
  br label %for.incr, !dbg !142
}

define void @to_string(ptr %__apoc_internal_context, ptr %text) !dbg !145 {
entry:
  %str = alloca %string, align 16
  %__apoc_internal_context5 = alloca %__Internal_Context, align 16
  %allocated = alloca ptr, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %text_len = alloca i64, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !146, metadata !DIExpression()), !dbg !147
  store ptr %text, ptr %text2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !148
  %1 = load ptr, ptr %text2, align 8, !dbg !148
  %2 = call i64 @len(ptr %__apoc_internal_context3, ptr %1), !dbg !148
  store i64 0, ptr %text_len, align 4, !dbg !148
  store i64 %2, ptr %text_len, align 4, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !149, metadata !DIExpression()), !dbg !148
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !150
  %4 = load i64, ptr %text_len, align 4, !dbg !150
  %5 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %4), !dbg !150
  store i64 0, ptr %allocated, align 4, !dbg !150
  store ptr %5, ptr %allocated, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !151, metadata !DIExpression()), !dbg !150
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !152
  %7 = load ptr, ptr %allocated, align 8, !dbg !152
  %8 = load ptr, ptr %text2, align 8, !dbg !152
  %9 = load i64, ptr %text_len, align 4, !dbg !152
  call void @copy(ptr %__apoc_internal_context5, ptr %7, ptr %8, i64 %9), !dbg !152
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false), !dbg !153
  %10 = load ptr, ptr %allocated, align 8, !dbg !153
  %11 = getelementptr inbounds %string, ptr %str, i32 0, i32 0, !dbg !153
  store ptr %10, ptr %11, align 8, !dbg !153
  %12 = load i64, ptr %text_len, align 4, !dbg !153
  %13 = getelementptr inbounds %string, ptr %str, i32 0, i32 1, !dbg !153
  store i64 %12, ptr %13, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %str, metadata !154, metadata !DIExpression()), !dbg !153
  %14 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !155
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %14, i32 0, i32 0, !dbg !155
  %15 = load ptr, ptr %ret_ptr, align 8, !dbg !155
  %16 = load %string, ptr %str, align 8, !dbg !155
  store %string %16, ptr %15, align 8, !dbg !155
  ret void, !dbg !155
}

define void @terminate_string(ptr %__apoc_internal_context, %string %str) !dbg !156 {
entry:
  %__apoc_internal_context8 = alloca %__Internal_Context, align 16
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %out = alloca %string, align 16
  %str2 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str2, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !159, metadata !DIExpression()), !dbg !160
  store %string %str, ptr %str2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !161
  call void @llvm.dbg.declare(metadata ptr %out, metadata !162, metadata !DIExpression()), !dbg !161
  %"struct member ptr" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !163
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !163
  %0 = add i64 %selected, 1, !dbg !163
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !163
  store i64 %0, ptr %"struct member ptr3", align 4, !dbg !163
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !164
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !164
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !164
  %2 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6), !dbg !164
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !164
  store ptr %2, ptr %"struct member ptr7", align 8, !dbg !164
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context8, i32 0, i32 0, !dbg !165
  %"struct member ptr9" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !165
  %selected10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !165
  %"struct member ptr11" = getelementptr inbounds %string, ptr %str2, i32 0, i32 0, !dbg !165
  %selected12 = load ptr, ptr %"struct member ptr11", align 8, !dbg !165
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !165
  %selected14 = load i64, ptr %"struct member ptr13", align 4, !dbg !165
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14), !dbg !165
  %"struct member ptr15" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !166
  %selected16 = load i64, ptr %"struct member ptr15", align 4, !dbg !166
  %"struct member ptr17" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !166
  %ptr_load = load ptr, ptr %"struct member ptr17", align 8, !dbg !166
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected16, !dbg !166
  store i8 0, ptr %elem_ptr, align 1, !dbg !166
  %4 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !167
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %4, i32 0, i32 0, !dbg !167
  %5 = load ptr, ptr %ret_ptr, align 8, !dbg !167
  %6 = load %string, ptr %out, align 8, !dbg !167
  store %string %6, ptr %5, align 8, !dbg !167
  ret void, !dbg !167
}

define void @build_unsigned_int(ptr %__apoc_internal_context, i64 %num, i64 %num_size, ptr %builder) !dbg !168 {
entry:
  %__apoc_internal_context5 = alloca %__Internal_Context, align 16
  %digit = alloca i64, align 8
  %builder4 = alloca ptr, align 8
  %num_size3 = alloca i64, align 8
  %num2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %num2, align 4
  call void @llvm.dbg.declare(metadata ptr %num2, metadata !171, metadata !DIExpression()), !dbg !172
  store i64 %num, ptr %num2, align 4
  store i64 0, ptr %num_size3, align 4
  call void @llvm.dbg.declare(metadata ptr %num_size3, metadata !173, metadata !DIExpression()), !dbg !172
  store i64 %num_size, ptr %num_size3, align 4
  store i64 0, ptr %builder4, align 4
  call void @llvm.dbg.declare(metadata ptr %builder4, metadata !174, metadata !DIExpression()), !dbg !172
  store ptr %builder, ptr %builder4, align 8
  %0 = load i64, ptr %num_size3, align 4, !dbg !175
  %1 = icmp ne i64 %0, 0, !dbg !175
  br i1 %1, label %if.true, label %if.aftr, !dbg !176

if.true:                                          ; preds = %entry
  %2 = load i64, ptr %num2, align 4, !dbg !177
  %3 = urem i64 %2, 10, !dbg !177
  %4 = add i64 %3, 48, !dbg !177
  store i64 0, ptr %digit, align 4, !dbg !177
  store i64 %4, ptr %digit, align 4, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %digit, metadata !178, metadata !DIExpression()), !dbg !177
  %5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !179
  %6 = load i64, ptr %num2, align 4, !dbg !179
  %7 = udiv i64 %6, 10, !dbg !179
  %8 = load i64, ptr %num_size3, align 4, !dbg !179
  %9 = sub i64 %8, 1, !dbg !179
  %10 = load ptr, ptr %builder4, align 8, !dbg !179
  call void @build_unsigned_int(ptr %__apoc_internal_context5, i64 %7, i64 %9, ptr %10), !dbg !179
  %11 = load ptr, ptr %builder4, align 8, !dbg !180
  %12 = load %String_Builder, ptr %11, align 8, !dbg !180
  %ptr_addr = load ptr, ptr %builder4, align 8, !dbg !180
  %13 = load i64, ptr %digit, align 4, !dbg !180
  %cast = trunc i64 %13 to i8, !dbg !180
  call void @"overload[x]=.9"(ptr %ptr_addr, i8 %cast), !dbg !180
  br label %if.aftr, !dbg !181

if.aftr:                                          ; preds = %entry, %if.true
  ret void, !dbg !176
}

define void @int_to_str(ptr %__apoc_internal_context, i64 %num, ptr %builder) !dbg !182 {
entry:
  %__apoc_internal_context7 = alloca %__Internal_Context, align 16
  %num_size = alloca i64, align 8
  %div_copy = alloca i64, align 8
  %builder3 = alloca ptr, align 8
  %num2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %num2, align 4
  call void @llvm.dbg.declare(metadata ptr %num2, metadata !185, metadata !DIExpression()), !dbg !186
  store i64 %num, ptr %num2, align 4
  store i64 0, ptr %builder3, align 4
  call void @llvm.dbg.declare(metadata ptr %builder3, metadata !187, metadata !DIExpression()), !dbg !186
  store ptr %builder, ptr %builder3, align 8
  %0 = load i64, ptr %num2, align 4, !dbg !188
  %1 = icmp eq i64 %0, 0, !dbg !188
  br i1 %1, label %if.true, label %if.aftr, !dbg !189

if.true:                                          ; preds = %entry
  %2 = load ptr, ptr %builder3, align 8, !dbg !190
  %3 = load %String_Builder, ptr %2, align 8, !dbg !190
  %ptr_addr = load ptr, ptr %builder3, align 8, !dbg !190
  call void @"overload[x]="(ptr %ptr_addr, ptr inttoptr (i64 48 to ptr)), !dbg !190
  ret void, !dbg !191

if.aftr:                                          ; preds = %entry
  %4 = load i64, ptr %num2, align 4, !dbg !192
  store i64 0, ptr %div_copy, align 4, !dbg !192
  store i64 %4, ptr %div_copy, align 4, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %div_copy, metadata !193, metadata !DIExpression()), !dbg !192
  store i64 0, ptr %num_size, align 4, !dbg !194
  store i64 0, ptr %num_size, align 4, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %num_size, metadata !195, metadata !DIExpression()), !dbg !194
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.incr, %if.aftr
  %5 = load i64, ptr %div_copy, align 4, !dbg !189
  %6 = icmp ne i64 %5, 0, !dbg !189
  br i1 %6, label %for.body, label %for.aftr, !dbg !189

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %div_copy, align 4, !dbg !196
  %8 = sdiv i64 %7, 10, !dbg !196
  store i64 %8, ptr %div_copy, align 4, !dbg !196
  br label %for.incr, !dbg !197

for.aftr:                                         ; preds = %for.cond
  %9 = load i64, ptr %num2, align 4, !dbg !198
  %10 = icmp slt i64 %9, 0, !dbg !198
  br i1 %10, label %if.true4, label %if.aftr5, !dbg !199

for.incr:                                         ; preds = %for.body
  %11 = load i64, ptr %num_size, align 4, !dbg !197
  %12 = add i64 %11, 1, !dbg !197
  store i64 %12, ptr %num_size, align 4, !dbg !197
  br label %for.cond, !dbg !197

if.true4:                                         ; preds = %for.aftr
  %13 = load ptr, ptr %builder3, align 8, !dbg !200
  %14 = load %String_Builder, ptr %13, align 8, !dbg !200
  %ptr_addr6 = load ptr, ptr %builder3, align 8, !dbg !200
  call void @"overload[x]="(ptr %ptr_addr6, ptr inttoptr (i64 45 to ptr)), !dbg !200
  %15 = load i64, ptr %num2, align 4, !dbg !201
  %16 = sub i64 0, %15, !dbg !201
  store i64 %16, ptr %num2, align 4, !dbg !201
  %17 = load i64, ptr %num_size, align 4, !dbg !202
  %18 = add i64 %17, 1, !dbg !202
  store i64 %18, ptr %num_size, align 4, !dbg !202
  br label %if.aftr5, !dbg !203

if.aftr5:                                         ; preds = %for.aftr, %if.true4
  %19 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context7, i32 0, i32 0, !dbg !204
  %20 = load i64, ptr %num2, align 4, !dbg !204
  %21 = load i64, ptr %num_size, align 4, !dbg !204
  %22 = load ptr, ptr %builder3, align 8, !dbg !204
  call void @build_unsigned_int(ptr %__apoc_internal_context7, i64 %20, i64 %21, ptr %22), !dbg !204
  ret void, !dbg !199
}

define void @parse_format(ptr %__apoc_internal_context, %string %format, ptr %list) !dbg !205 {
entry:
  %out = alloca %string, align 16
  %__apoc_internal_context12 = alloca %__Internal_Context, align 16
  %__apoc_internal_context9 = alloca %__Internal_Context, align 16
  %type = alloca i32, align 4
  %item = alloca %Any, align 16
  %i = alloca i64, align 8
  %list_index = alloca i64, align 8
  %builder = alloca %String_Builder, align 16
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %list3 = alloca ptr, align 8
  %format2 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %format2, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !267, metadata !DIExpression()), !dbg !268
  store %string %format, ptr %format2, align 8
  store i64 0, ptr %list3, align 4
  call void @llvm.dbg.declare(metadata ptr %list3, metadata !269, metadata !DIExpression()), !dbg !268
  store ptr %list, ptr %list3, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !270
  call void @llvm.memset.p0.i64(ptr align 16 %builder, i8 0, i64 272, i1 false), !dbg !270
  %return_value_member = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !270
  store ptr %builder, ptr %return_value_member, align 8, !dbg !270
  call void @init_builder(ptr %__apoc_internal_context4, ptr @3), !dbg !270
  call void @llvm.dbg.declare(metadata ptr %builder, metadata !271, metadata !DIExpression()), !dbg !270
  store i64 0, ptr %list_index, align 4, !dbg !272
  store i64 0, ptr %list_index, align 4, !dbg !272
  call void @llvm.dbg.declare(metadata ptr %list_index, metadata !273, metadata !DIExpression()), !dbg !272
  store i64 0, ptr %i, align 4, !dbg !274
  store i64 0, ptr %i, align 4, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %i, metadata !275, metadata !DIExpression()), !dbg !276
  br label %for.cond, !dbg !274

for.cond:                                         ; preds = %for.incr, %entry
  %1 = load i64, ptr %i, align 4, !dbg !274
  %"struct member ptr" = getelementptr inbounds %string, ptr %format2, i32 0, i32 1, !dbg !274
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !274
  %2 = icmp slt i64 %1, %selected, !dbg !274
  br i1 %2, label %for.body, label %for.aftr, !dbg !274

for.body:                                         ; preds = %for.cond
  %3 = load %string, ptr %format2, align 8, !dbg !277
  %4 = load i64, ptr %i, align 4, !dbg !277
  %5 = call i8 @"overload[]"(%string %3, i64 %4), !dbg !277
  %6 = icmp eq i8 %5, 37, !dbg !277
  br i1 %6, label %if.true, label %if.else, !dbg !278

for.aftr:                                         ; preds = %for.cond
  %7 = load %String_Builder, ptr %builder, align 8, !dbg !279
  call void @"overload[x]=.9"(ptr %builder, i8 10), !dbg !279
  %8 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context12, i32 0, i32 0, !dbg !280
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !280
  %return_value_member13 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context12, i32 0, i32 0, !dbg !280
  store ptr %out, ptr %return_value_member13, align 8, !dbg !280
  %9 = load %String_Builder, ptr %builder, align 8, !dbg !280
  call void @builder_to_string(ptr %__apoc_internal_context12, ptr %builder), !dbg !280
  call void @llvm.dbg.declare(metadata ptr %out, metadata !281, metadata !DIExpression()), !dbg !280
  %10 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !282
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %10, i32 0, i32 0, !dbg !282
  %11 = load ptr, ptr %ret_ptr, align 8, !dbg !282
  %12 = load %string, ptr %out, align 8, !dbg !282
  store %string %12, ptr %11, align 8, !dbg !282
  ret void, !dbg !282

for.incr:                                         ; preds = %if.aftr
  %13 = load i64, ptr %i, align 4, !dbg !278
  %14 = add i64 %13, 1, !dbg !278
  store i64 %14, ptr %i, align 4, !dbg !278
  br label %for.cond, !dbg !278

if.true:                                          ; preds = %for.body
  %15 = load i64, ptr %list_index, align 4, !dbg !283
  %ptr_load = load ptr, ptr %list3, align 8, !dbg !283
  %elem_ptr = getelementptr %Any, ptr %ptr_load, i64 %15, !dbg !283
  %indexed_val = load %Any, ptr %elem_ptr, align 8, !dbg !283
  call void @llvm.memset.p0.i64(ptr align 16 %item, i8 0, i64 16, i1 false), !dbg !283
  store %Any %indexed_val, ptr %item, align 8, !dbg !283
  call void @llvm.dbg.declare(metadata ptr %item, metadata !284, metadata !DIExpression()), !dbg !283
  %16 = load i64, ptr %list_index, align 4, !dbg !285
  %17 = add i64 %16, 1, !dbg !285
  store i64 %17, ptr %list_index, align 4, !dbg !285
  %"struct member ptr5" = getelementptr inbounds %Any, ptr %item, i32 0, i32 0, !dbg !286
  %"derefrence struct" = load ptr, ptr %"struct member ptr5", align 8, !dbg !286
  %"union member ptr" = getelementptr inbounds %Type_Info, ptr %"derefrence struct", i32 0, i32 0, !dbg !286
  %selected6 = load i32, ptr %"union member ptr", align 4, !dbg !286
  store i32 0, ptr %type, align 4, !dbg !286
  store i32 %selected6, ptr %type, align 4, !dbg !286
  call void @llvm.dbg.declare(metadata ptr %type, metadata !287, metadata !DIExpression()), !dbg !286
  %18 = load i32, ptr %type, align 4, !dbg !288
  %19 = icmp eq i32 %18, 3, !dbg !288
  br i1 %19, label %if.true7, label %if.aftr8, !dbg !289

if.aftr:                                          ; preds = %if.else, %if.aftr8
  br label %for.incr, !dbg !278

if.true7:                                         ; preds = %if.true
  %20 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context9, i32 0, i32 0, !dbg !290
  %"struct member ptr10" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !290
  %selected11 = load ptr, ptr %"struct member ptr10", align 8, !dbg !290
  %21 = load i64, ptr %selected11, align 4, !dbg !290
  %22 = load %String_Builder, ptr %builder, align 8, !dbg !290
  call void @int_to_str(ptr %__apoc_internal_context9, i64 %21, ptr %builder), !dbg !290
  br label %if.aftr8, !dbg !291

if.aftr8:                                         ; preds = %if.true, %if.true7
  br label %if.aftr, !dbg !289

if.else:                                          ; preds = %for.body
  %23 = load %String_Builder, ptr %builder, align 8, !dbg !292
  %24 = load %string, ptr %format2, align 8, !dbg !292
  %25 = load i64, ptr %i, align 4, !dbg !292
  %26 = call i8 @"overload[]"(%string %24, i64 %25), !dbg !292
  call void @"overload[x]=.9"(ptr %builder, i8 %26), !dbg !292
  br label %if.aftr, !dbg !293
}

define void @"print!@* u8!@-"(ptr %__apoc_internal_context, ptr %format, ...) !dbg !294 {
entry:
  %__apoc_internal_context7 = alloca %__Internal_Context, align 16
  %stdout = alloca ptr, align 8
  %__apoc_internal_context6 = alloca %__Internal_Context, align 16
  %out = alloca %string, align 16
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %list = alloca ptr, align 8
  %str = alloca %string, align 16
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %format2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %format2, align 4
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !295, metadata !DIExpression()), !dbg !296
  store ptr %format, ptr %format2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !297
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false), !dbg !297
  %return_value_member = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !297
  store ptr %str, ptr %return_value_member, align 8, !dbg !297
  %1 = load ptr, ptr %format2, align 8, !dbg !297
  call void @to_string(ptr %__apoc_internal_context3, ptr %1), !dbg !297
  call void @llvm.dbg.declare(metadata ptr %str, metadata !298, metadata !DIExpression()), !dbg !297
  store i64 0, ptr %list, align 4, !dbg !299
  store i64 0, ptr %list, align 4, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %list, metadata !300, metadata !DIExpression()), !dbg !299
  %2 = load ptr, ptr %list, align 8, !dbg !301
  call void @llvm.va_start(ptr %list), !dbg !301
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !302
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !302
  %return_value_member5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !302
  store ptr %out, ptr %return_value_member5, align 8, !dbg !302
  %4 = load %string, ptr %str, align 8, !dbg !302
  %5 = load ptr, ptr %list, align 8, !dbg !302
  call void @parse_format(ptr %__apoc_internal_context4, %string %4, ptr %5), !dbg !302
  call void @llvm.dbg.declare(metadata ptr %out, metadata !303, metadata !DIExpression()), !dbg !302
  %6 = load ptr, ptr %list, align 8, !dbg !304
  call void @llvm.va_end(ptr %list), !dbg !304
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context6, i32 0, i32 0, !dbg !305
  %8 = call ptr @get_stdout(ptr %__apoc_internal_context6), !dbg !305
  store i64 0, ptr %stdout, align 4, !dbg !305
  store ptr %8, ptr %stdout, align 8, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %stdout, metadata !306, metadata !DIExpression()), !dbg !305
  %9 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context7, i32 0, i32 0, !dbg !307
  %10 = load ptr, ptr %stdout, align 8, !dbg !307
  %"struct member ptr" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !307
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !307
  %"struct member ptr8" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !307
  %selected9 = load i64, ptr %"struct member ptr8", align 4, !dbg !307
  %cast = trunc i64 %selected9 to i32, !dbg !307
  %11 = call i8 @write_file(ptr %__apoc_internal_context7, ptr %10, ptr %selected, i32 %cast), !dbg !307
  ret void, !dbg !308
}

define void @"print!@string!@-"(ptr %__apoc_internal_context, %string %format, ...) !dbg !309 {
entry:
  %__apoc_internal_context5 = alloca %__Internal_Context, align 16
  %stdout = alloca ptr, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %out = alloca %string, align 16
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %list = alloca ptr, align 8
  %format2 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %format2, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !310, metadata !DIExpression()), !dbg !311
  store %string %format, ptr %format2, align 8
  store i64 0, ptr %list, align 4, !dbg !312
  store i64 0, ptr %list, align 4, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %list, metadata !313, metadata !DIExpression()), !dbg !312
  %0 = load ptr, ptr %list, align 8, !dbg !314
  call void @llvm.va_start(ptr %list), !dbg !314
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !315
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !315
  %return_value_member = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !315
  store ptr %out, ptr %return_value_member, align 8, !dbg !315
  %2 = load %string, ptr %format2, align 8, !dbg !315
  %3 = load ptr, ptr %list, align 8, !dbg !315
  call void @parse_format(ptr %__apoc_internal_context3, %string %2, ptr %3), !dbg !315
  call void @llvm.dbg.declare(metadata ptr %out, metadata !316, metadata !DIExpression()), !dbg !315
  %4 = load ptr, ptr %list, align 8, !dbg !317
  call void @llvm.va_end(ptr %list), !dbg !317
  %5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !318
  %6 = call ptr @get_stdout(ptr %__apoc_internal_context4), !dbg !318
  store i64 0, ptr %stdout, align 4, !dbg !318
  store ptr %6, ptr %stdout, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %stdout, metadata !319, metadata !DIExpression()), !dbg !318
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !320
  %8 = load ptr, ptr %stdout, align 8, !dbg !320
  %"struct member ptr" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !320
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !320
  %"struct member ptr6" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !320
  %selected7 = load i64, ptr %"struct member ptr6", align 4, !dbg !320
  %cast = trunc i64 %selected7 to i32, !dbg !320
  %9 = call i8 @write_file(ptr %__apoc_internal_context5, ptr %8, ptr %selected, i32 %cast), !dbg !320
  ret void, !dbg !321
}

define void @copy(ptr %__apoc_internal_context, ptr %dst, ptr %src, i64 %size) !dbg !322 {
entry:
  %i = alloca i64, align 8
  %a1 = alloca ptr, align 8
  %a0 = alloca ptr, align 8
  %size4 = alloca i64, align 8
  %src3 = alloca ptr, align 8
  %dst2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %dst2, align 4
  call void @llvm.dbg.declare(metadata ptr %dst2, metadata !325, metadata !DIExpression()), !dbg !326
  store ptr %dst, ptr %dst2, align 8
  store i64 0, ptr %src3, align 4
  call void @llvm.dbg.declare(metadata ptr %src3, metadata !327, metadata !DIExpression()), !dbg !326
  store ptr %src, ptr %src3, align 8
  store i64 0, ptr %size4, align 4
  call void @llvm.dbg.declare(metadata ptr %size4, metadata !328, metadata !DIExpression()), !dbg !326
  store i64 %size, ptr %size4, align 4
  %0 = load ptr, ptr %dst2, align 8, !dbg !329
  store i64 0, ptr %a0, align 4, !dbg !329
  store ptr %0, ptr %a0, align 8, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %a0, metadata !330, metadata !DIExpression()), !dbg !329
  %1 = load ptr, ptr %src3, align 8, !dbg !331
  store i64 0, ptr %a1, align 4, !dbg !331
  store ptr %1, ptr %a1, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !332, metadata !DIExpression()), !dbg !331
  store i64 0, ptr %i, align 4, !dbg !333
  store i64 0, ptr %i, align 4, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %i, metadata !334, metadata !DIExpression()), !dbg !335
  br label %for.cond, !dbg !333

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 4, !dbg !333
  %3 = load i64, ptr %size4, align 4, !dbg !333
  %4 = icmp slt i64 %2, %3, !dbg !333
  br i1 %4, label %for.body, label %for.aftr, !dbg !333

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %i, align 4, !dbg !336
  %ptr_load = load ptr, ptr %a1, align 8, !dbg !336
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5, !dbg !336
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !336
  %6 = load i64, ptr %i, align 4, !dbg !336
  %ptr_load5 = load ptr, ptr %a0, align 8, !dbg !336
  %elem_ptr6 = getelementptr i8, ptr %ptr_load5, i64 %6, !dbg !336
  store i8 %indexed_val, ptr %elem_ptr6, align 1, !dbg !336
  br label %for.incr, !dbg !337

for.aftr:                                         ; preds = %for.cond
  ret void, !dbg !338

for.incr:                                         ; preds = %for.body
  %7 = load i64, ptr %i, align 4, !dbg !337
  %8 = add i64 %7, 1, !dbg !337
  store i64 %8, ptr %i, align 4, !dbg !337
  br label %for.cond, !dbg !337
}

define i64 @len(ptr %__apoc_internal_context, ptr %text) !dbg !339 {
entry:
  %result = alloca i64, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !342, metadata !DIExpression()), !dbg !343
  store ptr %text, ptr %text2, align 8
  store i64 0, ptr %result, align 4, !dbg !344
  store i64 0, ptr %result, align 4, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %result, metadata !345, metadata !DIExpression()), !dbg !344
  store i64 0, ptr %result, align 4, !dbg !346
  br label %for.cond, !dbg !346

for.cond:                                         ; preds = %for.incr, %entry
  %0 = load i64, ptr %result, align 4, !dbg !346
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !346
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !346
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !346
  %1 = icmp ne i8 %indexed_val, 0, !dbg !346
  br i1 %1, label %for.body, label %for.aftr, !dbg !346

for.body:                                         ; preds = %for.cond
  br label %for.incr, !dbg !347

for.aftr:                                         ; preds = %for.cond
  %2 = load i64, ptr %result, align 4, !dbg !348
  ret i64 %2, !dbg !348

for.incr:                                         ; preds = %for.body
  %3 = load i64, ptr %result, align 4, !dbg !347
  %4 = add i64 %3, 1, !dbg !347
  store i64 %4, ptr %result, align 4, !dbg !347
  br label %for.cond, !dbg !347
}

declare i32 @GetLastError()

declare ptr @CreateFileA(ptr, i64, i32, ptr, i64, i64, ptr)

declare i8 @WriteFile(ptr, ptr, i32, ptr, ptr)

declare ptr @GetStdHandle(i32)

define ptr @open_file(ptr %__apoc_internal_context, ptr %f_name, i64 %access) !dbg !349 {
entry:
  %file = alloca ptr, align 8
  %win_access = alloca i64, align 8
  %access3 = alloca i64, align 8
  %f_name2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %f_name2, align 4
  call void @llvm.dbg.declare(metadata ptr %f_name2, metadata !352, metadata !DIExpression()), !dbg !353
  store ptr %f_name, ptr %f_name2, align 8
  store i64 0, ptr %access3, align 4
  call void @llvm.dbg.declare(metadata ptr %access3, metadata !354, metadata !DIExpression()), !dbg !353
  store i64 %access, ptr %access3, align 4
  store i64 0, ptr %win_access, align 4, !dbg !355
  store i64 0, ptr %win_access, align 4, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %win_access, metadata !356, metadata !DIExpression()), !dbg !355
  %0 = load i64, ptr %access3, align 4, !dbg !357
  %1 = and i64 %0, 1, !dbg !357
  %cast = trunc i64 %1 to i8, !dbg !357
  %boolean_expr = trunc i8 %cast to i1, !dbg !357
  br i1 %boolean_expr, label %if.true, label %if.aftr11, !dbg !358

if.true:                                          ; preds = %entry
  %2 = load i64, ptr %win_access, align 4, !dbg !359
  %3 = or i64 %2, 1179785, !dbg !359
  store i64 %3, ptr %win_access, align 4, !dbg !359
  br label %if.aftr, !dbg !359

if.aftr:                                          ; preds = %if.true
  %4 = load i64, ptr %access3, align 4, !dbg !360
  %5 = and i64 %4, 1, !dbg !360
  %cast4 = trunc i64 %5 to i8, !dbg !360
  %boolean_expr5 = trunc i8 %cast4 to i1, !dbg !360
  br i1 %boolean_expr5, label %if.true6, label %if.aftr11, !dbg !358

if.true6:                                         ; preds = %if.aftr
  %6 = load i64, ptr %win_access, align 4, !dbg !361
  %7 = or i64 %6, 1179926, !dbg !361
  store i64 %7, ptr %win_access, align 4, !dbg !361
  br label %if.aftr7, !dbg !361

if.aftr7:                                         ; preds = %if.true6
  %8 = load i64, ptr %access3, align 4, !dbg !362
  %9 = and i64 %8, 2, !dbg !362
  %cast8 = trunc i64 %9 to i8, !dbg !362
  %boolean_expr9 = trunc i8 %cast8 to i1, !dbg !362
  br i1 %boolean_expr9, label %if.true10, label %if.aftr11, !dbg !358

if.true10:                                        ; preds = %if.aftr7
  %10 = load i64, ptr %win_access, align 4, !dbg !363
  %11 = or i64 %10, 1179808, !dbg !363
  store i64 %11, ptr %win_access, align 4, !dbg !363
  br label %if.aftr11, !dbg !363

if.aftr11:                                        ; preds = %entry, %if.aftr, %if.aftr7, %if.true10
  %12 = load ptr, ptr %f_name2, align 8, !dbg !364
  %13 = load i64, ptr %win_access, align 4, !dbg !364
  %14 = call ptr @CreateFileA(ptr %12, i64 %13, i32 0, ptr null, i64 4, i64 32, ptr null), !dbg !364
  store i64 0, ptr %file, align 4, !dbg !364
  store ptr %14, ptr %file, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata ptr %file, metadata !365, metadata !DIExpression()), !dbg !364
  %15 = load ptr, ptr %file, align 8, !dbg !366
  ret ptr %15, !dbg !366
}

define i8 @write_file(ptr %__apoc_internal_context, ptr %file, ptr %data, i32 %size) !dbg !367 {
entry:
  %result = alloca i8, align 1
  %written = alloca i32, align 4
  %size4 = alloca i32, align 4
  %data3 = alloca ptr, align 8
  %file2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %file2, align 4
  call void @llvm.dbg.declare(metadata ptr %file2, metadata !371, metadata !DIExpression()), !dbg !372
  store ptr %file, ptr %file2, align 8
  store i64 0, ptr %data3, align 4
  call void @llvm.dbg.declare(metadata ptr %data3, metadata !373, metadata !DIExpression()), !dbg !372
  store ptr %data, ptr %data3, align 8
  store i32 0, ptr %size4, align 4
  call void @llvm.dbg.declare(metadata ptr %size4, metadata !374, metadata !DIExpression()), !dbg !372
  store i32 %size, ptr %size4, align 4
  store i32 0, ptr %written, align 4, !dbg !375
  store i64 0, ptr %written, align 4, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %written, metadata !376, metadata !DIExpression()), !dbg !375
  %0 = load ptr, ptr %file2, align 8, !dbg !377
  %1 = load ptr, ptr %data3, align 8, !dbg !377
  %2 = load i32, ptr %size4, align 4, !dbg !377
  %3 = load i32, ptr %written, align 4, !dbg !377
  %4 = call i8 @WriteFile(ptr %0, ptr %1, i32 %2, ptr %written, ptr null), !dbg !377
  %5 = load i32, ptr %written, align 4, !dbg !378
  %6 = load i32, ptr %size4, align 4, !dbg !378
  %7 = icmp eq i32 %5, %6, !dbg !378
  store i8 0, ptr %result, align 1, !dbg !378
  store i1 %7, ptr %result, align 1, !dbg !378
  call void @llvm.dbg.declare(metadata ptr %result, metadata !379, metadata !DIExpression()), !dbg !378
  %8 = load i8, ptr %result, align 1, !dbg !380
  ret i8 %8, !dbg !380
}

define ptr @get_stdout(ptr %__apoc_internal_context) !dbg !381 {
entry:
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  %0 = call ptr @GetStdHandle(i32 -11), !dbg !384
  ret ptr %0, !dbg !384
}

; Function Attrs: alwaysinline
define i8 @"overload[]"(%string %str, i64 %index) #0 !dbg !385 {
entry:
  %index2 = alloca i64, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !388, metadata !DIExpression()), !dbg !389
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %index2, align 4
  call void @llvm.dbg.declare(metadata ptr %index2, metadata !390, metadata !DIExpression()), !dbg !389
  store i64 %index, ptr %index2, align 4
  %0 = load i64, ptr %index2, align 4, !dbg !391
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0, !dbg !391
  %ptr_load = load ptr, ptr %"struct member ptr", align 8, !dbg !391
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !391
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !391
  ret i8 %indexed_val, !dbg !391
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline
define %string @"overload+"(%string %str, ptr %text) #0 !dbg !392 {
entry:
  %__apoc_internal_context15 = alloca %__Internal_Context, align 16
  %__apoc_internal_context8 = alloca %__Internal_Context, align 16
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %text_len = alloca i64, align 8
  %__apoc_internal_context = alloca %__Internal_Context, align 16
  %out = alloca %string, align 16
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !395, metadata !DIExpression()), !dbg !396
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !397, metadata !DIExpression()), !dbg !396
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !398
  call void @llvm.dbg.declare(metadata ptr %out, metadata !399, metadata !DIExpression()), !dbg !398
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !400
  %1 = load ptr, ptr %text2, align 8, !dbg !400
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1), !dbg !400
  store i64 0, ptr %text_len, align 4, !dbg !400
  store i64 %2, ptr %text_len, align 4, !dbg !400
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !401, metadata !DIExpression()), !dbg !400
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !402
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !402
  %3 = load i64, ptr %text_len, align 4, !dbg !402
  %4 = add i64 %selected, %3, !dbg !402
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !402
  store i64 %4, ptr %"struct member ptr3", align 4, !dbg !402
  %5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !403
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !403
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !403
  %6 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6), !dbg !403
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !403
  store ptr %6, ptr %"struct member ptr7", align 8, !dbg !403
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context8, i32 0, i32 0, !dbg !404
  %"struct member ptr9" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !404
  %selected10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !404
  %"struct member ptr11" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0, !dbg !404
  %selected12 = load ptr, ptr %"struct member ptr11", align 8, !dbg !404
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !404
  %selected14 = load i64, ptr %"struct member ptr13", align 4, !dbg !404
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14), !dbg !404
  %8 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context15, i32 0, i32 0, !dbg !405
  %"struct member ptr16" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !405
  %selected17 = load i64, ptr %"struct member ptr16", align 4, !dbg !405
  %"struct member ptr18" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !405
  %ptr_load = load ptr, ptr %"struct member ptr18", align 8, !dbg !405
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected17, !dbg !405
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !405
  %"struct member ptr19" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !405
  %selected20 = load i64, ptr %"struct member ptr19", align 4, !dbg !405
  %"struct member ptr21" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !405
  %ptr_load22 = load ptr, ptr %"struct member ptr21", align 8, !dbg !405
  %elem_ptr23 = getelementptr i8, ptr %ptr_load22, i64 %selected20, !dbg !405
  %9 = load ptr, ptr %text2, align 8, !dbg !405
  %10 = load i64, ptr %text_len, align 4, !dbg !405
  call void @copy(ptr %__apoc_internal_context15, ptr %elem_ptr23, ptr %9, i64 %10), !dbg !405
  %11 = load %string, ptr %out, align 8, !dbg !406
  ret %string %11, !dbg !406
}

; Function Attrs: alwaysinline
define void @"overload[x]="(ptr %str, ptr %text) #0 !dbg !407 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %copy_size = alloca i64, align 8
  %i = alloca i64, align 8
  %current = alloca ptr, align 8
  %times = alloca i64, align 8
  %text_len = alloca i64, align 8
  %__apoc_internal_context = alloca %__Internal_Context, align 16
  %text2 = alloca ptr, align 8
  %str1 = alloca ptr, align 8
  store i64 0, ptr %str1, align 4
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !410, metadata !DIExpression()), !dbg !411
  store ptr %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !412, metadata !DIExpression()), !dbg !411
  store ptr %text, ptr %text2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !413
  %1 = load ptr, ptr %text2, align 8, !dbg !413
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1), !dbg !413
  store i64 0, ptr %text_len, align 4, !dbg !413
  store i64 %2, ptr %text_len, align 4, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !414, metadata !DIExpression()), !dbg !413
  %3 = load i64, ptr %text_len, align 4, !dbg !415
  %"derefrence struct" = load ptr, ptr %str1, align 8, !dbg !415
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1, !dbg !415
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !415
  %4 = sdiv i64 %3, %selected, !dbg !415
  store i64 0, ptr %times, align 4, !dbg !415
  store i64 %4, ptr %times, align 4, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %times, metadata !416, metadata !DIExpression()), !dbg !415
  %5 = load ptr, ptr %str1, align 8, !dbg !417
  store i64 0, ptr %current, align 4, !dbg !417
  store ptr %5, ptr %current, align 8, !dbg !417
  call void @llvm.dbg.declare(metadata ptr %current, metadata !418, metadata !DIExpression()), !dbg !417
  store i64 0, ptr %i, align 4, !dbg !419
  store i64 0, ptr %i, align 4, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %i, metadata !420, metadata !DIExpression()), !dbg !421
  br label %for.cond, !dbg !419

for.cond:                                         ; preds = %for.incr, %entry
  %6 = load i64, ptr %i, align 4, !dbg !419
  %7 = sub i64 %6, 1, !dbg !419
  %8 = load i64, ptr %times, align 4, !dbg !419
  %9 = icmp slt i64 %7, %8, !dbg !419
  br i1 %9, label %for.body, label %for.aftr, !dbg !419

for.body:                                         ; preds = %for.cond
  %10 = load i64, ptr %text_len, align 4, !dbg !422
  store i64 0, ptr %copy_size, align 4, !dbg !422
  store i64 %10, ptr %copy_size, align 4, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !423, metadata !DIExpression()), !dbg !422
  %11 = load i64, ptr %copy_size, align 4, !dbg !424
  %12 = icmp sgt i64 %11, 256, !dbg !424
  br i1 %12, label %if.true, label %if.aftr, !dbg !425

for.aftr:                                         ; preds = %for.cond
  ret void, !dbg !426

for.incr:                                         ; preds = %if.aftr
  %13 = load i64, ptr %i, align 4, !dbg !425
  %14 = add i64 %13, 1, !dbg !425
  store i64 %14, ptr %i, align 4, !dbg !425
  br label %for.cond, !dbg !425

if.true:                                          ; preds = %for.body
  store i64 256, ptr %copy_size, align 4, !dbg !427
  br label %if.aftr, !dbg !427

if.aftr:                                          ; preds = %for.body, %if.true
  %15 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !428
  %"derefrence struct4" = load ptr, ptr %current, align 8, !dbg !428
  %"struct member ptr5" = getelementptr inbounds %String_Builder, ptr %"derefrence struct4", i32 0, i32 1, !dbg !428
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !428
  %"derefrence struct7" = load ptr, ptr %current, align 8, !dbg !428
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %"derefrence struct7", i32 0, i32 0, !dbg !428
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr8", i64 0, i64 %selected6, !dbg !428
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !428
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !428
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !428
  %selected11 = load i64, ptr %"struct member ptr10", align 4, !dbg !428
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !428
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 0, !dbg !428
  %elem_ptr14 = getelementptr [256 x i8], ptr %"struct member ptr13", i64 0, i64 %selected11, !dbg !428
  %16 = load i64, ptr %i, align 4, !dbg !428
  %17 = mul i64 %16, 256, !dbg !428
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !428
  %elem_ptr15 = getelementptr i8, ptr %ptr_load, i64 %17, !dbg !428
  %indexed_val16 = load i8, ptr %elem_ptr15, align 1, !dbg !428
  %18 = load i64, ptr %i, align 4, !dbg !428
  %19 = mul i64 %18, 256, !dbg !428
  %ptr_load17 = load ptr, ptr %text2, align 8, !dbg !428
  %elem_ptr18 = getelementptr i8, ptr %ptr_load17, i64 %19, !dbg !428
  %20 = load i64, ptr %copy_size, align 4, !dbg !428
  call void @copy(ptr %__apoc_internal_context3, ptr %elem_ptr14, ptr %elem_ptr18, i64 %20), !dbg !428
  %"derefrence struct19" = load ptr, ptr %current, align 8, !dbg !429
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 1, !dbg !429
  %selected21 = load i64, ptr %"struct member ptr20", align 4, !dbg !429
  %21 = load i64, ptr %copy_size, align 4, !dbg !429
  %22 = add i64 %selected21, %21, !dbg !429
  %"derefrence struct22" = load ptr, ptr %current, align 8, !dbg !429
  %"struct member ptr23" = getelementptr inbounds %String_Builder, ptr %"derefrence struct22", i32 0, i32 1, !dbg !429
  store i64 %22, ptr %"struct member ptr23", align 4, !dbg !429
  %23 = load i64, ptr %text_len, align 4, !dbg !430
  %24 = sub i64 %23, 256, !dbg !430
  store i64 %24, ptr %text_len, align 4, !dbg !430
  %"derefrence struct24" = load ptr, ptr %current, align 8, !dbg !431
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 2, !dbg !431
  %selected26 = load ptr, ptr %"struct member ptr25", align 8, !dbg !431
  store ptr %selected26, ptr %current, align 8, !dbg !431
  br label %for.incr, !dbg !425
}

; Function Attrs: alwaysinline
define void @"overload[x]=.9"(ptr %str, i8 %c) #0 !dbg !432 {
entry:
  %__apoc_internal_context = alloca %__Internal_Context, align 16
  %to_put = alloca ptr, align 8
  %c2 = alloca i8, align 1
  %str1 = alloca ptr, align 8
  store i64 0, ptr %str1, align 4
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !435, metadata !DIExpression()), !dbg !436
  store ptr %str, ptr %str1, align 8
  store i8 0, ptr %c2, align 1
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !437, metadata !DIExpression()), !dbg !436
  store i8 %c, ptr %c2, align 1
  %0 = load ptr, ptr %str1, align 8, !dbg !438
  store i64 0, ptr %to_put, align 4, !dbg !438
  store ptr %0, ptr %to_put, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata ptr %to_put, metadata !439, metadata !DIExpression()), !dbg !438
  br label %for.cond, !dbg !440

for.cond:                                         ; preds = %for.incr, %entry
  %1 = load ptr, ptr %to_put, align 8, !dbg !440
  %2 = icmp ne ptr %1, null, !dbg !440
  %"derefrence struct" = load ptr, ptr %to_put, align 8, !dbg !440
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1, !dbg !440
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !440
  %3 = icmp eq i64 %selected, 256, !dbg !440
  %"&&" = and i1 %2, %3, !dbg !440
  br i1 %"&&", label %for.body, label %for.aftr, !dbg !440

for.body:                                         ; preds = %for.cond
  %"derefrence struct3" = load ptr, ptr %to_put, align 8, !dbg !441
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 2, !dbg !441
  %selected5 = load ptr, ptr %"struct member ptr4", align 8, !dbg !441
  %4 = icmp eq ptr %selected5, null, !dbg !441
  br i1 %4, label %if.true, label %if.aftr12, !dbg !442

for.aftr:                                         ; preds = %for.cond
  %5 = load i8, ptr %c2, align 1, !dbg !443
  %"derefrence struct16" = load ptr, ptr %to_put, align 8, !dbg !443
  %"struct member ptr17" = getelementptr inbounds %String_Builder, ptr %"derefrence struct16", i32 0, i32 1, !dbg !443
  %selected18 = load i64, ptr %"struct member ptr17", align 4, !dbg !443
  %"derefrence struct19" = load ptr, ptr %to_put, align 8, !dbg !443
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 0, !dbg !443
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr20", i64 0, i64 %selected18, !dbg !443
  store i8 %5, ptr %elem_ptr, align 1, !dbg !443
  %"derefrence struct21" = load ptr, ptr %to_put, align 8, !dbg !444
  %"struct member ptr22" = getelementptr inbounds %String_Builder, ptr %"derefrence struct21", i32 0, i32 1, !dbg !444
  %selected23 = load i64, ptr %"struct member ptr22", align 4, !dbg !444
  %6 = add i64 %selected23, 1, !dbg !444
  %"derefrence struct24" = load ptr, ptr %to_put, align 8, !dbg !444
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 1, !dbg !444
  store i64 %6, ptr %"struct member ptr25", align 4, !dbg !444
  ret void, !dbg !445

for.incr:                                         ; preds = %if.aftr12
  br label %for.cond, !dbg !442

if.true:                                          ; preds = %for.body
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !446
  %8 = call ptr @mem_alloc(ptr %__apoc_internal_context, i64 272), !dbg !446
  %"derefrence struct6" = load ptr, ptr %to_put, align 8, !dbg !446
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2, !dbg !446
  store ptr %8, ptr %"struct member ptr7", align 8, !dbg !446
  br label %if.aftr, !dbg !447

if.aftr:                                          ; preds = %if.true
  %"derefrence struct8" = load ptr, ptr %to_put, align 8, !dbg !448
  %"struct member ptr9" = getelementptr inbounds %String_Builder, ptr %"derefrence struct8", i32 0, i32 1, !dbg !448
  %selected10 = load i64, ptr %"struct member ptr9", align 4, !dbg !448
  %9 = icmp eq i64 %selected10, 256, !dbg !448
  br i1 %9, label %if.true11, label %if.aftr12, !dbg !442

if.true11:                                        ; preds = %if.aftr
  %"derefrence struct13" = load ptr, ptr %to_put, align 8, !dbg !449
  %"struct member ptr14" = getelementptr inbounds %String_Builder, ptr %"derefrence struct13", i32 0, i32 2, !dbg !449
  %selected15 = load ptr, ptr %"struct member ptr14", align 8, !dbg !449
  store ptr %selected15, ptr %to_put, align 8, !dbg !449
  br label %if.aftr12, !dbg !449

if.aftr12:                                        ; preds = %for.body, %if.aftr, %if.true11
  br label %for.incr, !dbg !442
}

; Function Attrs: alwaysinline
define i8 @overload(%string %str, ptr %text) #0 !dbg !450 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %__apoc_internal_context = alloca %__Internal_Context, align 16
  %str2 = alloca %string, align 16
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !453, metadata !DIExpression()), !dbg !454
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !455, metadata !DIExpression()), !dbg !454
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str2, i8 0, i64 16, i1 false), !dbg !456
  %0 = load ptr, ptr %text2, align 8, !dbg !456
  %1 = getelementptr inbounds %string, ptr %str2, i32 0, i32 0, !dbg !456
  store ptr %0, ptr %1, align 8, !dbg !456
  %2 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !456
  %3 = load ptr, ptr %text2, align 8, !dbg !456
  %4 = call i64 @len(ptr %__apoc_internal_context, ptr %3), !dbg !456
  %5 = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !456
  store i64 %4, ptr %5, align 4, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !457, metadata !DIExpression()), !dbg !456
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !458
  %7 = load %string, ptr %str1, align 8, !dbg !458
  %8 = load %string, ptr %str2, align 8, !dbg !458
  %9 = call i8 @compare(ptr %__apoc_internal_context3, %string %7, %string %8), !dbg !458
  ret i8 %9, !dbg !458
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!25, !27, !28, !30, !32, !33}
!llvm.module.flags = !{!35, !36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "true", scope: !2, file: !2, line: 2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "Basic.apoc", directory: "W:\\Apocalypse\\Standard")
!3 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression())
!5 = distinct !DIGlobalVariable(name: "false", scope: !2, file: !2, line: 3, type: !3, isLocal: true, isDefinition: true)
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "null", scope: !2, file: !2, line: 4, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "STRING_BUFFER_SIZE", scope: !12, file: !12, line: 2, type: !13, isLocal: true, isDefinition: true)
!12 = !DIFile(filename: "String.apoc", directory: "W:\\Apocalypse\\Standard")
!13 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "DELETE", scope: !16, file: !16, line: 58, type: !13, isLocal: true, isDefinition: true)
!16 = !DIFile(filename: "Windows.apoc", directory: "W:\\Apocalypse\\Standard")
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "READ_CONTROL", scope: !16, file: !16, line: 59, type: !13, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "WRITE_DAC", scope: !16, file: !16, line: 60, type: !13, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "WRITE_OWNER", scope: !16, file: !16, line: 61, type: !13, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "SYNCHRONIZE", scope: !16, file: !16, line: 62, type: !13, isLocal: true, isDefinition: true)
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!26 = !DIFile(filename: "Test.apoc", directory: "W:\\Apocalypse")
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!29 = !DIFile(filename: "C_Standard.apoc", directory: "W:\\Apocalypse\\Standard")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!31 = !DIFile(filename: "OS.apoc", directory: "W:\\Apocalypse\\Standard")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !34)
!34 = !{!0, !4, !6, !10, !14, !17, !19, !21, !23}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 2, !"CodeView", i32 1}
!37 = distinct !DISubprogram(name: "main", scope: !26, file: !26, line: 5, type: !38, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!38 = !DISubroutineType(types: !39)
!39 = !{!40}
!40 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!41 = !{}
!42 = !DILocation(line: 7, column: 2, scope: !37)
!43 = !DILocalVariable(name: "result", scope: !37, file: !26, line: 7, type: !44, align: 128)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "String_Builder", scope: !12, file: !12, line: 10, size: 2176, align: 2048, elements: !45)
!45 = !{!46, !51, !52}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !12, file: !12, line: 12, baseType: !47, size: 2048, align: 128)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, align: 8, elements: !49)
!48 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!49 = !{!50}
!50 = !DISubrange(count: 256, lowerBound: 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !12, file: !12, line: 13, baseType: !13, size: 64, align: 64, offset: 2048)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !12, line: 14, baseType: !53, size: 64, align: 64, offset: 2112)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!54 = !DILocation(line: 8, column: 2, scope: !37)
!55 = !DILocation(line: 9, column: 2, scope: !37)
!56 = !DILocalVariable(name: "str", scope: !37, file: !26, line: 9, type: !57, align: 128)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !12, file: !12, line: 4, size: 128, align: 64, elements: !58)
!58 = !{!59, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !12, file: !12, line: 6, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !12, file: !12, line: 7, baseType: !13, size: 64, align: 64, offset: 64)
!62 = !DILocation(line: 11, column: 7, scope: !37)
!63 = !DILocation(line: 12, column: 7, scope: !37)
!64 = !DILocation(line: 13, column: 5, scope: !37)
!65 = distinct !DISubprogram(name: "mem_alloc", scope: !29, file: !29, line: 12, type: !66, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!66 = !DISubroutineType(types: !67)
!67 = !{!8, !68}
!68 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!69 = !DILocalVariable(name: "size", arg: 1, scope: !65, file: !29, line: 12, type: !68)
!70 = !DILocation(line: 12, scope: !65)
!71 = !DILocation(line: 14, column: 2, scope: !65)
!72 = !DILocalVariable(name: "result", scope: !65, file: !29, line: 14, type: !8, align: 64)
!73 = !DILocation(line: 15, column: 8, scope: !65)
!74 = !DILocation(line: 16, column: 5, scope: !65)
!75 = distinct !DISubprogram(name: "builder_to_string", scope: !12, file: !12, line: 17, type: !76, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!76 = !DISubroutineType(types: !77)
!77 = !{!9, !53}
!78 = !DILocalVariable(name: "builder", arg: 1, scope: !75, file: !12, line: 17, type: !53)
!79 = !DILocation(line: 17, scope: !75)
!80 = !DILocation(line: 19, column: 2, scope: !75)
!81 = !DILocalVariable(name: "out", scope: !75, file: !12, line: 19, type: !57, align: 128)
!82 = !DILocation(line: 20, column: 2, scope: !75)
!83 = !DILocalVariable(name: "out_len", scope: !75, file: !12, line: 20, type: !13, align: 64)
!84 = !DILocation(line: 21, column: 2, scope: !75)
!85 = !DILocalVariable(name: "current", scope: !75, file: !12, line: 21, type: !53, align: 64)
!86 = !DILocation(line: 22, column: 2, scope: !75)
!87 = !DILocalVariable(name: "i", scope: !75, file: !12, line: 22, type: !13, align: 64)
!88 = !DILocation(line: 22, column: 6, scope: !75)
!89 = !DILocation(line: 23, column: 3, scope: !75)
!90 = !DILocation(line: 24, column: 3, scope: !75)
!91 = !DILocation(line: 25, column: 2, scope: !75)
!92 = !DILocation(line: 26, column: 2, scope: !75)
!93 = !DILocation(line: 27, column: 2, scope: !75)
!94 = !DILocation(line: 28, column: 2, scope: !75)
!95 = !DILocation(line: 30, column: 2, scope: !75)
!96 = !DILocalVariable(name: "times", scope: !75, file: !12, line: 30, type: !13, align: 64)
!97 = !DILocation(line: 31, column: 2, scope: !75)
!98 = !DILocalVariable(name: "i", scope: !75, file: !12, line: 31, type: !13, align: 64)
!99 = !DILocation(line: 31, column: 6, scope: !75)
!100 = !DILocation(line: 32, column: 7, scope: !75)
!101 = !DILocation(line: 33, column: 3, scope: !75)
!102 = !DILocation(line: 34, column: 3, scope: !75)
!103 = !DILocation(line: 35, column: 2, scope: !75)
!104 = !DILocation(line: 36, column: 6, scope: !75)
!105 = !DILocation(line: 37, column: 2, scope: !75)
!106 = !DILocation(line: 38, column: 5, scope: !75)
!107 = distinct !DISubprogram(name: "init_builder", scope: !12, file: !12, line: 41, type: !108, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!108 = !DISubroutineType(types: !109)
!109 = !{!9, !60}
!110 = !DILocalVariable(name: "text", arg: 1, scope: !107, file: !12, line: 41, type: !60)
!111 = !DILocation(line: 41, scope: !107)
!112 = !DILocation(line: 43, column: 2, scope: !107)
!113 = !DILocalVariable(name: "out", scope: !107, file: !12, line: 43, type: !44, align: 128)
!114 = !DILocation(line: 44, column: 2, scope: !107)
!115 = !DILocalVariable(name: "current", scope: !107, file: !12, line: 44, type: !53, align: 64)
!116 = !DILocation(line: 45, column: 2, scope: !107)
!117 = !DILocalVariable(name: "times", scope: !107, file: !12, line: 45, type: !13, align: 64)
!118 = !DILocation(line: 46, column: 2, scope: !107)
!119 = !DILocalVariable(name: "i", scope: !107, file: !12, line: 46, type: !13, align: 64)
!120 = !DILocation(line: 46, column: 6, scope: !107)
!121 = !DILocation(line: 47, column: 3, scope: !107)
!122 = !DILocation(line: 48, column: 3, scope: !107)
!123 = !DILocation(line: 49, column: 3, scope: !107)
!124 = !DILocation(line: 55, column: 2, scope: !107)
!125 = !DILocation(line: 56, column: 5, scope: !107)
!126 = !DILocation(line: 50, column: 4, scope: !107)
!127 = !DILocation(line: 51, column: 4, scope: !107)
!128 = !DILocation(line: 52, column: 4, scope: !107)
!129 = !DILocation(line: 53, column: 4, scope: !107)
!130 = !DILocation(line: 54, column: 3, scope: !107)
!131 = distinct !DISubprogram(name: "compare", scope: !12, file: !12, line: 111, type: !132, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!132 = !DISubroutineType(types: !133)
!133 = !{!3, !57, !57}
!134 = !DILocalVariable(name: "str1", arg: 1, scope: !131, file: !12, line: 111, type: !57)
!135 = !DILocation(line: 111, scope: !131)
!136 = !DILocalVariable(name: "str2", arg: 2, scope: !131, file: !12, line: 111, type: !57)
!137 = !DILocation(line: 113, column: 2, scope: !131)
!138 = !DILocation(line: 116, column: 2, scope: !131)
!139 = !DILocation(line: 114, column: 6, scope: !131)
!140 = !DILocalVariable(name: "i", scope: !131, file: !12, line: 116, type: !13, align: 64)
!141 = !DILocation(line: 116, column: 6, scope: !131)
!142 = !DILocation(line: 117, column: 3, scope: !131)
!143 = !DILocation(line: 118, column: 5, scope: !131)
!144 = !DILocation(line: 117, column: 38, scope: !131)
!145 = distinct !DISubprogram(name: "to_string", scope: !12, file: !12, line: 121, type: !108, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!146 = !DILocalVariable(name: "text", arg: 1, scope: !145, file: !12, line: 121, type: !60)
!147 = !DILocation(line: 121, scope: !145)
!148 = !DILocation(line: 123, column: 2, scope: !145)
!149 = !DILocalVariable(name: "text_len", scope: !145, file: !12, line: 123, type: !13, align: 64)
!150 = !DILocation(line: 124, column: 2, scope: !145)
!151 = !DILocalVariable(name: "allocated", scope: !145, file: !12, line: 124, type: !8, align: 64)
!152 = !DILocation(line: 125, column: 6, scope: !145)
!153 = !DILocation(line: 126, column: 2, scope: !145)
!154 = !DILocalVariable(name: "str", scope: !145, file: !12, line: 126, type: !57, align: 128)
!155 = !DILocation(line: 127, column: 5, scope: !145)
!156 = distinct !DISubprogram(name: "terminate_string", scope: !12, file: !12, line: 130, type: !157, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!157 = !DISubroutineType(types: !158)
!158 = !{!9, !57}
!159 = !DILocalVariable(name: "str", arg: 1, scope: !156, file: !12, line: 130, type: !57)
!160 = !DILocation(line: 130, scope: !156)
!161 = !DILocation(line: 132, column: 2, scope: !156)
!162 = !DILocalVariable(name: "out", scope: !156, file: !12, line: 132, type: !57, align: 128)
!163 = !DILocation(line: 133, column: 2, scope: !156)
!164 = !DILocation(line: 134, column: 2, scope: !156)
!165 = !DILocation(line: 135, column: 6, scope: !156)
!166 = !DILocation(line: 136, column: 2, scope: !156)
!167 = !DILocation(line: 137, column: 5, scope: !156)
!168 = distinct !DISubprogram(name: "build_unsigned_int", scope: !12, file: !12, line: 140, type: !169, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!169 = !DISubroutineType(types: !170)
!170 = !{!9, !68, !13, !53}
!171 = !DILocalVariable(name: "num", arg: 1, scope: !168, file: !12, line: 140, type: !68)
!172 = !DILocation(line: 140, scope: !168)
!173 = !DILocalVariable(name: "num_size", arg: 2, scope: !168, file: !12, line: 140, type: !13)
!174 = !DILocalVariable(name: "builder", arg: 3, scope: !168, file: !12, line: 140, type: !53)
!175 = !DILocation(line: 141, column: 2, scope: !168)
!176 = !DILocation(line: 146, column: 1, scope: !168)
!177 = !DILocation(line: 142, column: 3, scope: !168)
!178 = !DILocalVariable(name: "digit", scope: !168, file: !12, line: 142, type: !68, align: 64)
!179 = !DILocation(line: 143, column: 21, scope: !168)
!180 = !DILocation(line: 144, column: 4, scope: !168)
!181 = !DILocation(line: 145, column: 2, scope: !168)
!182 = distinct !DISubprogram(name: "int_to_str", scope: !12, file: !12, line: 148, type: !183, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!183 = !DISubroutineType(types: !184)
!184 = !{!9, !13, !53}
!185 = !DILocalVariable(name: "num", arg: 1, scope: !182, file: !12, line: 148, type: !13)
!186 = !DILocation(line: 148, scope: !182)
!187 = !DILocalVariable(name: "builder", arg: 2, scope: !182, file: !12, line: 148, type: !53)
!188 = !DILocation(line: 150, column: 2, scope: !182)
!189 = !DILocation(line: 157, column: 2, scope: !182)
!190 = !DILocation(line: 151, column: 4, scope: !182)
!191 = !DILocation(line: 152, column: 5, scope: !182)
!192 = !DILocation(line: 154, column: 2, scope: !182)
!193 = !DILocalVariable(name: "div_copy", scope: !182, file: !12, line: 154, type: !13, align: 64)
!194 = !DILocation(line: 155, column: 2, scope: !182)
!195 = !DILocalVariable(name: "num_size", scope: !182, file: !12, line: 155, type: !13, align: 64)
!196 = !DILocation(line: 158, column: 3, scope: !182)
!197 = !DILocation(line: 159, column: 2, scope: !182)
!198 = !DILocation(line: 160, column: 2, scope: !182)
!199 = !DILocation(line: 166, column: 1, scope: !182)
!200 = !DILocation(line: 161, column: 4, scope: !182)
!201 = !DILocation(line: 162, column: 3, scope: !182)
!202 = !DILocation(line: 163, column: 3, scope: !182)
!203 = !DILocation(line: 164, column: 2, scope: !182)
!204 = !DILocation(line: 165, column: 20, scope: !182)
!205 = distinct !DISubprogram(name: "parse_format", scope: !12, file: !12, line: 168, type: !206, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!206 = !DISubroutineType(types: !207)
!207 = !{!9, !57, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "Any", scope: !2, file: !2, line: 51, size: 128, align: 64, elements: !210)
!210 = !{!211, !266}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, line: 52, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 56, size: 320, align: 64, elements: !214)
!214 = !{!215, !216, !221, !234, !242, !249, !257}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 57, baseType: !40, size: 32, align: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !2, file: !2, line: 66, baseType: !217, size: 64, align: 128)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Primitive", scope: !2, file: !2, line: 66, size: 64, align: 32, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 67, baseType: !40, size: 32, align: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2, file: !2, line: 68, baseType: !40, size: 32, align: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !2, file: !2, line: 71, baseType: !222, size: 320, align: 128)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Struct", scope: !2, file: !2, line: 71, size: 320, align: 64, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !231}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 72, baseType: !40, size: 32, align: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "member_count", scope: !2, file: !2, line: 73, baseType: !40, size: 32, align: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "is_union", scope: !2, file: !2, line: 74, baseType: !3, size: 8, align: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "is_packed", scope: !2, file: !2, line: 75, baseType: !3, size: 8, align: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2, file: !2, line: 76, baseType: !60, size: 64, align: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "member_names", scope: !2, file: !2, line: 77, baseType: !230, size: 64, align: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "member_types", scope: !2, file: !2, line: 78, baseType: !232, size: 64, align: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 78, size: 320, align: 64, elements: !214)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !2, file: !2, line: 81, baseType: !235, size: 192, align: 128)
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Array", scope: !2, file: !2, line: 81, size: 192, align: 64, elements: !236)
!236 = !{!237, !238, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 82, baseType: !40, size: 32, align: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, line: 83, baseType: !239, size: 64, align: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 83, size: 320, align: 64, elements: !214)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "elem_count", scope: !2, file: !2, line: 84, baseType: !68, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2, file: !2, line: 87, baseType: !243, size: 128, align: 128)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Pointer", scope: !2, file: !2, line: 87, size: 128, align: 64, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 88, baseType: !40, size: 32, align: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pointed", scope: !2, file: !2, line: 89, baseType: !247, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 89, size: 320, align: 64, elements: !214)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "enumerator", scope: !2, file: !2, line: 92, baseType: !250, size: 256, align: 128)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Enum", scope: !2, file: !2, line: 92, size: 256, align: 64, elements: !251)
!251 = !{!252, !253, !254, !255}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 93, baseType: !40, size: 32, align: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, line: 94, baseType: !217, size: 64, align: 128, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !2, file: !2, line: 95, baseType: !230, size: 64, align: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2, file: !2, line: 96, baseType: !256, size: 64, align: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2, file: !2, line: 99, baseType: !258, size: 256, align: 128)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Func", scope: !2, file: !2, line: 99, size: 256, align: 64, elements: !259)
!259 = !{!260, !261, !264, !265}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 100, baseType: !40, size: 32, align: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "param_types", scope: !2, file: !2, line: 101, baseType: !262, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 101, size: 320, align: 64, elements: !214)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "return_type", scope: !2, file: !2, line: 102, baseType: !262, size: 64, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "calling_convention", scope: !2, file: !2, line: 103, baseType: !40, size: 32, align: 32, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2, file: !2, line: 53, baseType: !8, size: 64, align: 64, offset: 64)
!267 = !DILocalVariable(name: "format", arg: 1, scope: !205, file: !12, line: 168, type: !57)
!268 = !DILocation(line: 168, scope: !205)
!269 = !DILocalVariable(name: "list", arg: 2, scope: !205, file: !12, line: 168, type: !208)
!270 = !DILocation(line: 170, column: 2, scope: !205)
!271 = !DILocalVariable(name: "builder", scope: !205, file: !12, line: 170, type: !44, align: 128)
!272 = !DILocation(line: 171, column: 2, scope: !205)
!273 = !DILocalVariable(name: "list_index", scope: !205, file: !12, line: 171, type: !13, align: 64)
!274 = !DILocation(line: 172, column: 2, scope: !205)
!275 = !DILocalVariable(name: "i", scope: !205, file: !12, line: 172, type: !13, align: 64)
!276 = !DILocation(line: 172, column: 6, scope: !205)
!277 = !DILocation(line: 173, column: 3, scope: !205)
!278 = !DILocation(line: 183, column: 2, scope: !205)
!279 = !DILocation(line: 184, column: 2, scope: !205)
!280 = !DILocation(line: 185, column: 2, scope: !205)
!281 = !DILocalVariable(name: "out", scope: !205, file: !12, line: 185, type: !57, align: 128)
!282 = !DILocation(line: 186, column: 5, scope: !205)
!283 = !DILocation(line: 174, column: 4, scope: !205)
!284 = !DILocalVariable(name: "item", scope: !205, file: !12, line: 174, type: !209, align: 128)
!285 = !DILocation(line: 175, column: 4, scope: !205)
!286 = !DILocation(line: 176, column: 4, scope: !205)
!287 = !DILocalVariable(name: "type", scope: !205, file: !12, line: 176, type: !40, align: 32)
!288 = !DILocation(line: 177, column: 4, scope: !205)
!289 = !DILocation(line: 180, column: 3, scope: !205)
!290 = !DILocation(line: 178, column: 15, scope: !205)
!291 = !DILocation(line: 179, column: 4, scope: !205)
!292 = !DILocation(line: 181, column: 4, scope: !205)
!293 = !DILocation(line: 182, column: 3, scope: !205)
!294 = distinct !DISubprogram(name: "print!@* u8!@-", scope: !12, file: !12, line: 189, type: !108, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!295 = !DILocalVariable(name: "format", arg: 1, scope: !294, file: !12, line: 189, type: !60)
!296 = !DILocation(line: 189, scope: !294)
!297 = !DILocation(line: 191, column: 2, scope: !294)
!298 = !DILocalVariable(name: "str", scope: !294, file: !12, line: 191, type: !57, align: 128)
!299 = !DILocation(line: 192, column: 2, scope: !294)
!300 = !DILocalVariable(name: "list", scope: !294, file: !12, line: 192, type: !208, align: 64)
!301 = !DILocation(line: 193, column: 15, scope: !294)
!302 = !DILocation(line: 194, column: 2, scope: !294)
!303 = !DILocalVariable(name: "out", scope: !294, file: !12, line: 194, type: !57, align: 128)
!304 = !DILocation(line: 195, column: 14, scope: !294)
!305 = !DILocation(line: 196, column: 2, scope: !294)
!306 = !DILocalVariable(name: "stdout", scope: !294, file: !12, line: 196, type: !8, align: 64)
!307 = !DILocation(line: 197, column: 12, scope: !294)
!308 = !DILocation(line: 198, column: 1, scope: !294)
!309 = distinct !DISubprogram(name: "print!@string!@-", scope: !12, file: !12, line: 200, type: !157, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!310 = !DILocalVariable(name: "format", arg: 1, scope: !309, file: !12, line: 200, type: !57)
!311 = !DILocation(line: 200, scope: !309)
!312 = !DILocation(line: 202, column: 2, scope: !309)
!313 = !DILocalVariable(name: "list", scope: !309, file: !12, line: 202, type: !208, align: 64)
!314 = !DILocation(line: 203, column: 15, scope: !309)
!315 = !DILocation(line: 204, column: 2, scope: !309)
!316 = !DILocalVariable(name: "out", scope: !309, file: !12, line: 204, type: !57, align: 128)
!317 = !DILocation(line: 205, column: 14, scope: !309)
!318 = !DILocation(line: 206, column: 2, scope: !309)
!319 = !DILocalVariable(name: "stdout", scope: !309, file: !12, line: 206, type: !8, align: 64)
!320 = !DILocation(line: 207, column: 12, scope: !309)
!321 = !DILocation(line: 208, column: 1, scope: !309)
!322 = distinct !DISubprogram(name: "copy", scope: !12, file: !12, line: 211, type: !323, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!323 = !DISubroutineType(types: !324)
!324 = !{!9, !8, !8, !68}
!325 = !DILocalVariable(name: "dst", arg: 1, scope: !322, file: !12, line: 211, type: !8)
!326 = !DILocation(line: 211, scope: !322)
!327 = !DILocalVariable(name: "src", arg: 2, scope: !322, file: !12, line: 211, type: !8)
!328 = !DILocalVariable(name: "size", arg: 3, scope: !322, file: !12, line: 211, type: !68)
!329 = !DILocation(line: 213, column: 2, scope: !322)
!330 = !DILocalVariable(name: "a0", scope: !322, file: !12, line: 213, type: !60, align: 64)
!331 = !DILocation(line: 214, column: 2, scope: !322)
!332 = !DILocalVariable(name: "a1", scope: !322, file: !12, line: 214, type: !60, align: 64)
!333 = !DILocation(line: 215, column: 2, scope: !322)
!334 = !DILocalVariable(name: "i", scope: !322, file: !12, line: 215, type: !13, align: 64)
!335 = !DILocation(line: 215, column: 6, scope: !322)
!336 = !DILocation(line: 217, column: 3, scope: !322)
!337 = !DILocation(line: 218, column: 2, scope: !322)
!338 = !DILocation(line: 219, column: 1, scope: !322)
!339 = distinct !DISubprogram(name: "len", scope: !12, file: !12, line: 221, type: !340, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!340 = !DISubroutineType(types: !341)
!341 = !{!13, !60}
!342 = !DILocalVariable(name: "text", arg: 1, scope: !339, file: !12, line: 221, type: !60)
!343 = !DILocation(line: 221, scope: !339)
!344 = !DILocation(line: 223, column: 2, scope: !339)
!345 = !DILocalVariable(name: "result", scope: !339, file: !12, line: 223, type: !13, align: 64)
!346 = !DILocation(line: 224, column: 2, scope: !339)
!347 = !DILocation(line: 224, column: 47, scope: !339)
!348 = !DILocation(line: 225, column: 5, scope: !339)
!349 = distinct !DISubprogram(name: "open_file", scope: !16, file: !16, line: 26, type: !350, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!350 = !DISubroutineType(types: !351)
!351 = !{!8, !60, !13}
!352 = !DILocalVariable(name: "f_name", arg: 1, scope: !349, file: !16, line: 26, type: !60)
!353 = !DILocation(line: 26, scope: !349)
!354 = !DILocalVariable(name: "access", arg: 2, scope: !349, file: !16, line: 26, type: !13)
!355 = !DILocation(line: 28, column: 2, scope: !349)
!356 = !DILocalVariable(name: "win_access", scope: !349, file: !16, line: 28, type: !13, align: 64)
!357 = !DILocation(line: 29, column: 2, scope: !349)
!358 = !DILocation(line: 36, column: 1, scope: !349)
!359 = !DILocation(line: 29, column: 41, scope: !349)
!360 = !DILocation(line: 30, column: 2, scope: !349)
!361 = !DILocation(line: 30, column: 41, scope: !349)
!362 = !DILocation(line: 31, column: 2, scope: !349)
!363 = !DILocation(line: 31, column: 41, scope: !349)
!364 = !DILocation(line: 32, column: 2, scope: !349)
!365 = !DILocalVariable(name: "file", scope: !349, file: !16, line: 32, type: !8, align: 64)
!366 = !DILocation(line: 35, column: 5, scope: !349)
!367 = distinct !DISubprogram(name: "write_file", scope: !16, file: !16, line: 38, type: !368, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!368 = !DISubroutineType(types: !369)
!369 = !{!3, !8, !8, !370}
!370 = !DIBasicType(name: "u32", size: 24, encoding: DW_ATE_unsigned)
!371 = !DILocalVariable(name: "file", arg: 1, scope: !367, file: !16, line: 38, type: !8)
!372 = !DILocation(line: 38, scope: !367)
!373 = !DILocalVariable(name: "data", arg: 2, scope: !367, file: !16, line: 38, type: !8)
!374 = !DILocalVariable(name: "size", arg: 3, scope: !367, file: !16, line: 38, type: !370)
!375 = !DILocation(line: 40, column: 2, scope: !367)
!376 = !DILocalVariable(name: "written", scope: !367, file: !16, line: 40, type: !370, align: 32)
!377 = !DILocation(line: 41, column: 11, scope: !367)
!378 = !DILocation(line: 42, column: 2, scope: !367)
!379 = !DILocalVariable(name: "result", scope: !367, file: !16, line: 42, type: !3, align: 8)
!380 = !DILocation(line: 43, column: 5, scope: !367)
!381 = distinct !DISubprogram(name: "get_stdout", scope: !16, file: !16, line: 46, type: !382, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!382 = !DISubroutineType(types: !383)
!383 = !{!8}
!384 = !DILocation(line: 48, column: 5, scope: !381)
!385 = distinct !DISubprogram(name: "overload[]", scope: !12, file: !12, line: 59, type: !386, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!386 = !DISubroutineType(types: !387)
!387 = !{!48, !57, !13}
!388 = !DILocalVariable(name: "str", scope: !385, file: !12, line: 59, type: !57)
!389 = !DILocation(line: 59, scope: !385)
!390 = !DILocalVariable(name: "index", arg: 1, scope: !385, file: !12, line: 59, type: !13)
!391 = !DILocation(line: 61, column: 5, scope: !385)
!392 = distinct !DISubprogram(name: "overload+", scope: !12, file: !12, line: 64, type: !393, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!393 = !DISubroutineType(types: !394)
!394 = !{!57, !57, !60}
!395 = !DILocalVariable(name: "str", scope: !392, file: !12, line: 64, type: !57)
!396 = !DILocation(line: 64, scope: !392)
!397 = !DILocalVariable(name: "text", arg: 1, scope: !392, file: !12, line: 64, type: !60)
!398 = !DILocation(line: 66, column: 2, scope: !392)
!399 = !DILocalVariable(name: "out", scope: !392, file: !12, line: 66, type: !57, align: 128)
!400 = !DILocation(line: 67, column: 2, scope: !392)
!401 = !DILocalVariable(name: "text_len", scope: !392, file: !12, line: 67, type: !13, align: 64)
!402 = !DILocation(line: 68, column: 2, scope: !392)
!403 = !DILocation(line: 69, column: 2, scope: !392)
!404 = !DILocation(line: 70, column: 6, scope: !392)
!405 = !DILocation(line: 71, column: 6, scope: !392)
!406 = !DILocation(line: 72, column: 5, scope: !392)
!407 = distinct !DISubprogram(name: "overload[x]=", scope: !12, file: !12, line: 75, type: !408, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!408 = !DISubroutineType(types: !409)
!409 = !{!9, !53, !60}
!410 = !DILocalVariable(name: "str", scope: !407, file: !12, line: 75, type: !53)
!411 = !DILocation(line: 75, scope: !407)
!412 = !DILocalVariable(name: "text", arg: 1, scope: !407, file: !12, line: 75, type: !60)
!413 = !DILocation(line: 77, column: 2, scope: !407)
!414 = !DILocalVariable(name: "text_len", scope: !407, file: !12, line: 77, type: !13, align: 64)
!415 = !DILocation(line: 78, column: 2, scope: !407)
!416 = !DILocalVariable(name: "times", scope: !407, file: !12, line: 78, type: !13, align: 64)
!417 = !DILocation(line: 79, column: 2, scope: !407)
!418 = !DILocalVariable(name: "current", scope: !407, file: !12, line: 79, type: !53, align: 64)
!419 = !DILocation(line: 80, column: 2, scope: !407)
!420 = !DILocalVariable(name: "i", scope: !407, file: !12, line: 80, type: !13, align: 64)
!421 = !DILocation(line: 80, column: 6, scope: !407)
!422 = !DILocation(line: 81, column: 3, scope: !407)
!423 = !DILocalVariable(name: "copy_size", scope: !407, file: !12, line: 81, type: !13, align: 64)
!424 = !DILocation(line: 82, column: 3, scope: !407)
!425 = !DILocation(line: 87, column: 2, scope: !407)
!426 = !DILocation(line: 89, column: 1, scope: !407)
!427 = !DILocation(line: 82, column: 37, scope: !407)
!428 = !DILocation(line: 83, column: 7, scope: !407)
!429 = !DILocation(line: 84, column: 3, scope: !407)
!430 = !DILocation(line: 85, column: 3, scope: !407)
!431 = !DILocation(line: 86, column: 3, scope: !407)
!432 = distinct !DISubprogram(name: "overload[x]=", scope: !12, file: !12, line: 91, type: !433, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!433 = !DISubroutineType(types: !434)
!434 = !{!9, !53, !48}
!435 = !DILocalVariable(name: "str", scope: !432, file: !12, line: 91, type: !53)
!436 = !DILocation(line: 91, scope: !432)
!437 = !DILocalVariable(name: "c", arg: 1, scope: !432, file: !12, line: 91, type: !48)
!438 = !DILocation(line: 93, column: 2, scope: !432)
!439 = !DILocalVariable(name: "to_put", scope: !432, file: !12, line: 93, type: !53, align: 64)
!440 = !DILocation(line: 94, column: 2, scope: !432)
!441 = !DILocation(line: 95, column: 3, scope: !432)
!442 = !DILocation(line: 100, column: 2, scope: !432)
!443 = !DILocation(line: 101, column: 2, scope: !432)
!444 = !DILocation(line: 102, column: 2, scope: !432)
!445 = !DILocation(line: 103, column: 1, scope: !432)
!446 = !DILocation(line: 96, column: 4, scope: !432)
!447 = !DILocation(line: 97, column: 3, scope: !432)
!448 = !DILocation(line: 98, column: 3, scope: !432)
!449 = !DILocation(line: 99, column: 4, scope: !432)
!450 = distinct !DISubprogram(name: "overload", scope: !12, file: !12, line: 105, type: !451, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !41)
!451 = !DISubroutineType(types: !452)
!452 = !{!3, !57, !60}
!453 = !DILocalVariable(name: "str", scope: !450, file: !12, line: 105, type: !57)
!454 = !DILocation(line: 105, scope: !450)
!455 = !DILocalVariable(name: "text", arg: 1, scope: !450, file: !12, line: 105, type: !60)
!456 = !DILocation(line: 107, column: 2, scope: !450)
!457 = !DILocalVariable(name: "str2", scope: !450, file: !12, line: 107, type: !57, align: 128)
!458 = !DILocation(line: 108, column: 5, scope: !450)
