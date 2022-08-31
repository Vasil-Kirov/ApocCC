; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%__Internal_Context = type { ptr }
%string = type { ptr, i64 }
%String_Builder = type { [256 x i8], i64, ptr }
%Any = type { ptr, ptr }

@global_var = constant i8 1, !dbg !0
@global_var.1 = constant i8 0, !dbg !4
@global_var.2 = constant ptr null, !dbg !6
@global_var.3 = constant i64 256, !dbg !10
@global_var.4 = global i64 0, !dbg !14
@global_var.5 = constant i64 65536, !dbg !16
@global_var.6 = constant i64 131072, !dbg !19
@global_var.7 = constant i64 262144, !dbg !21
@global_var.8 = constant i64 524288, !dbg !23
@global_var.9 = constant i64 1048576, !dbg !25
@0 = private unnamed_addr constant [14 x i8] c"my big string\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2 = private unnamed_addr constant [11 x i8] c" more text\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)

define i32 @main(ptr %__apoc_internal_context) !dbg !39 {
entry:
  %__apoc_internal_context5 = alloca %__Internal_Context, align 16
  %str = alloca %string, align 16
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %result = alloca %String_Builder, align 16
  %__apoc_internal_context2 = alloca %__Internal_Context, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context2, i32 0, i32 0, !dbg !44
  call void @llvm.memset.p0.i64(ptr align 16 %result, i8 0, i64 272, i1 false), !dbg !44
  %return_value_member = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context2, i32 0, i32 0, !dbg !44
  store ptr %result, ptr %return_value_member, align 8, !dbg !44
  call void @init_builder(ptr %__apoc_internal_context2, ptr @0), !dbg !44
  call void @llvm.dbg.declare(metadata ptr %result, metadata !45, metadata !DIExpression()), !dbg !44
  %1 = call i32 @puts(ptr @1), !dbg !56
  %2 = load %String_Builder, ptr %result, align 8, !dbg !57
  call void @"overload[x]="(ptr %result, ptr @2), !dbg !57
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !58
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false), !dbg !58
  %return_value_member4 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !58
  store ptr %str, ptr %return_value_member4, align 8, !dbg !58
  %4 = load %String_Builder, ptr %result, align 8, !dbg !58
  call void @builder_to_string(ptr %__apoc_internal_context3, ptr %result), !dbg !58
  call void @llvm.dbg.declare(metadata ptr %str, metadata !59, metadata !DIExpression()), !dbg !58
  %5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !65
  %6 = load %string, ptr %str, align 8, !dbg !65
  call void (ptr, %string, ...) @"print!@string"(ptr %__apoc_internal_context5, %string %6), !dbg !65
  %7 = call i32 @puts(ptr @3), !dbg !66
  %8 = call i32 @puts(ptr @4), !dbg !67
  %9 = call i32 @puts(ptr @5), !dbg !68
  ret i32 0, !dbg !69
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

define ptr @mem_alloc(ptr %__apoc_internal_context, i64 %size) !dbg !70 {
entry:
  %result = alloca ptr, align 8
  %size2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %size2, align 4
  call void @llvm.dbg.declare(metadata ptr %size2, metadata !74, metadata !DIExpression()), !dbg !75
  store i64 %size, ptr %size2, align 4
  %0 = load i64, ptr %size2, align 4, !dbg !76
  %1 = call ptr @malloc(i64 %0), !dbg !76
  store i64 0, ptr %result, align 4, !dbg !76
  store ptr %1, ptr %result, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata ptr %result, metadata !77, metadata !DIExpression()), !dbg !76
  %2 = load ptr, ptr %result, align 8, !dbg !78
  %3 = load i64, ptr %size2, align 4, !dbg !78
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3), !dbg !78
  %5 = load ptr, ptr %result, align 8, !dbg !79
  ret ptr %5, !dbg !79
}

define void @builder_to_string(ptr %__apoc_internal_context, ptr %builder) !dbg !80 {
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
  call void @llvm.dbg.declare(metadata ptr %builder2, metadata !83, metadata !DIExpression()), !dbg !84
  store ptr %builder, ptr %builder2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !85
  call void @llvm.dbg.declare(metadata ptr %out, metadata !86, metadata !DIExpression()), !dbg !85
  store i64 0, ptr %out_len, align 4, !dbg !87
  store i64 0, ptr %out_len, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %out_len, metadata !88, metadata !DIExpression()), !dbg !87
  %0 = load ptr, ptr %builder2, align 8, !dbg !89
  store i64 0, ptr %current, align 4, !dbg !89
  store ptr %0, ptr %current, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %current, metadata !90, metadata !DIExpression()), !dbg !89
  store i64 0, ptr %i, align 4, !dbg !91
  store i64 0, ptr %i, align 4, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %i, metadata !92, metadata !DIExpression()), !dbg !93
  br label %for.cond, !dbg !91

for.cond:                                         ; preds = %for.incr, %entry
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !91
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 2, !dbg !91
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !91
  %1 = icmp ne ptr %selected, null, !dbg !91
  br i1 %1, label %for.body, label %for.aftr, !dbg !91

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %out_len, align 4, !dbg !94
  %"derefrence struct3" = load ptr, ptr %current, align 8, !dbg !94
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 1, !dbg !94
  %selected5 = load i64, ptr %"struct member ptr4", align 4, !dbg !94
  %3 = add i64 %2, %selected5, !dbg !94
  store i64 %3, ptr %out_len, align 4, !dbg !94
  %"derefrence struct6" = load ptr, ptr %current, align 8, !dbg !95
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2, !dbg !95
  %selected8 = load ptr, ptr %"struct member ptr7", align 8, !dbg !95
  store ptr %selected8, ptr %current, align 8, !dbg !95
  br label %for.incr, !dbg !96

for.aftr:                                         ; preds = %for.cond
  %4 = load i64, ptr %out_len, align 4, !dbg !97
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !97
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !97
  %selected11 = load i64, ptr %"struct member ptr10", align 4, !dbg !97
  %5 = add i64 %4, %selected11, !dbg !97
  store i64 %5, ptr %out_len, align 4, !dbg !97
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context12, i32 0, i32 0, !dbg !98
  %7 = load i64, ptr %out_len, align 4, !dbg !98
  %8 = call ptr @mem_alloc(ptr %__apoc_internal_context12, i64 %7), !dbg !98
  %"struct member ptr13" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !98
  store ptr %8, ptr %"struct member ptr13", align 8, !dbg !98
  %9 = load i64, ptr %out_len, align 4, !dbg !99
  %"struct member ptr14" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !99
  store i64 %9, ptr %"struct member ptr14", align 4, !dbg !99
  store i64 0, ptr %times, align 4, !dbg !100
  store i64 0, ptr %times, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %times, metadata !101, metadata !DIExpression()), !dbg !100
  store i64 0, ptr %i15, align 4, !dbg !102
  store i64 0, ptr %i15, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata ptr %i15, metadata !103, metadata !DIExpression()), !dbg !104
  br label %for.cond16, !dbg !102

for.incr:                                         ; preds = %for.body
  %10 = load i64, ptr %i, align 4, !dbg !96
  %11 = add i64 %10, 1, !dbg !96
  store i64 %11, ptr %i, align 4, !dbg !96
  br label %for.cond, !dbg !96

for.cond16:                                       ; preds = %for.incr22, %for.aftr
  %"derefrence struct19" = load ptr, ptr %current, align 8, !dbg !102
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 2, !dbg !102
  %selected21 = load ptr, ptr %"struct member ptr20", align 8, !dbg !102
  %12 = icmp ne ptr %selected21, null, !dbg !102
  br i1 %12, label %for.body17, label %for.aftr18, !dbg !102

for.body17:                                       ; preds = %for.cond16
  %13 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context23, i32 0, i32 0, !dbg !105
  %14 = load i64, ptr %times, align 4, !dbg !105
  %15 = mul i64 %14, 256, !dbg !105
  %"struct member ptr24" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !105
  %ptr_load = load ptr, ptr %"struct member ptr24", align 8, !dbg !105
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %15, !dbg !105
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !105
  %16 = load i64, ptr %times, align 4, !dbg !105
  %17 = mul i64 %16, 256, !dbg !105
  %"struct member ptr25" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !105
  %ptr_load26 = load ptr, ptr %"struct member ptr25", align 8, !dbg !105
  %elem_ptr27 = getelementptr i8, ptr %ptr_load26, i64 %17, !dbg !105
  %"derefrence struct28" = load ptr, ptr %current, align 8, !dbg !105
  %"struct member ptr29" = getelementptr inbounds %String_Builder, ptr %"derefrence struct28", i32 0, i32 0, !dbg !105
  %elem_ptr30 = getelementptr [256 x i8], ptr %"struct member ptr29", i64 0, i64 0, !dbg !105
  %indexed_val31 = load i8, ptr %elem_ptr30, align 1, !dbg !105
  %"derefrence struct32" = load ptr, ptr %current, align 8, !dbg !105
  %"struct member ptr33" = getelementptr inbounds %String_Builder, ptr %"derefrence struct32", i32 0, i32 0, !dbg !105
  %elem_ptr34 = getelementptr [256 x i8], ptr %"struct member ptr33", i64 0, i64 0, !dbg !105
  %"derefrence struct35" = load ptr, ptr %current, align 8, !dbg !105
  %"struct member ptr36" = getelementptr inbounds %String_Builder, ptr %"derefrence struct35", i32 0, i32 1, !dbg !105
  %selected37 = load i64, ptr %"struct member ptr36", align 4, !dbg !105
  call void @copy(ptr %__apoc_internal_context23, ptr %elem_ptr27, ptr %elem_ptr34, i64 %selected37), !dbg !105
  %"derefrence struct38" = load ptr, ptr %current, align 8, !dbg !106
  %"struct member ptr39" = getelementptr inbounds %String_Builder, ptr %"derefrence struct38", i32 0, i32 2, !dbg !106
  %selected40 = load ptr, ptr %"struct member ptr39", align 8, !dbg !106
  store ptr %selected40, ptr %current, align 8, !dbg !106
  %18 = load i64, ptr %times, align 4, !dbg !107
  %19 = add i64 %18, 1, !dbg !107
  store i64 %19, ptr %times, align 4, !dbg !107
  br label %for.incr22, !dbg !108

for.aftr18:                                       ; preds = %for.cond16
  %20 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context41, i32 0, i32 0, !dbg !109
  %21 = load i64, ptr %times, align 4, !dbg !109
  %22 = mul i64 %21, 256, !dbg !109
  %"struct member ptr42" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !109
  %ptr_load43 = load ptr, ptr %"struct member ptr42", align 8, !dbg !109
  %elem_ptr44 = getelementptr i8, ptr %ptr_load43, i64 %22, !dbg !109
  %indexed_val45 = load i8, ptr %elem_ptr44, align 1, !dbg !109
  %23 = load i64, ptr %times, align 4, !dbg !109
  %24 = mul i64 %23, 256, !dbg !109
  %"struct member ptr46" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !109
  %ptr_load47 = load ptr, ptr %"struct member ptr46", align 8, !dbg !109
  %elem_ptr48 = getelementptr i8, ptr %ptr_load47, i64 %24, !dbg !109
  %"derefrence struct49" = load ptr, ptr %current, align 8, !dbg !109
  %"struct member ptr50" = getelementptr inbounds %String_Builder, ptr %"derefrence struct49", i32 0, i32 0, !dbg !109
  %elem_ptr51 = getelementptr [256 x i8], ptr %"struct member ptr50", i64 0, i64 0, !dbg !109
  %indexed_val52 = load i8, ptr %elem_ptr51, align 1, !dbg !109
  %"derefrence struct53" = load ptr, ptr %current, align 8, !dbg !109
  %"struct member ptr54" = getelementptr inbounds %String_Builder, ptr %"derefrence struct53", i32 0, i32 0, !dbg !109
  %elem_ptr55 = getelementptr [256 x i8], ptr %"struct member ptr54", i64 0, i64 0, !dbg !109
  %"derefrence struct56" = load ptr, ptr %current, align 8, !dbg !109
  %"struct member ptr57" = getelementptr inbounds %String_Builder, ptr %"derefrence struct56", i32 0, i32 1, !dbg !109
  %selected58 = load i64, ptr %"struct member ptr57", align 4, !dbg !109
  call void @copy(ptr %__apoc_internal_context41, ptr %elem_ptr48, ptr %elem_ptr55, i64 %selected58), !dbg !109
  %25 = load i64, ptr %out_len, align 4, !dbg !110
  %"derefrence struct59" = load ptr, ptr %builder2, align 8, !dbg !110
  %"struct member ptr60" = getelementptr inbounds %String_Builder, ptr %"derefrence struct59", i32 0, i32 1, !dbg !110
  %selected61 = load i64, ptr %"struct member ptr60", align 4, !dbg !110
  %26 = add i64 %25, %selected61, !dbg !110
  store i64 %26, ptr %out_len, align 4, !dbg !110
  %27 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !111
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %27, i32 0, i32 0, !dbg !111
  %28 = load ptr, ptr %ret_ptr, align 8, !dbg !111
  %29 = load %string, ptr %out, align 8, !dbg !111
  store %string %29, ptr %28, align 8, !dbg !111
  ret void, !dbg !111

for.incr22:                                       ; preds = %for.body17
  %30 = load i64, ptr %i15, align 4, !dbg !108
  %31 = add i64 %30, 1, !dbg !108
  store i64 %31, ptr %i15, align 4, !dbg !108
  br label %for.cond16, !dbg !108
}

define void @init_builder(ptr %__apoc_internal_context, ptr %text) !dbg !112 {
entry:
  %__apoc_internal_context14 = alloca %__Internal_Context, align 16
  %i = alloca i64, align 8
  %times = alloca i64, align 8
  %current = alloca ptr, align 8
  %out = alloca %String_Builder, align 16
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !115, metadata !DIExpression()), !dbg !116
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 272, i1 false), !dbg !117
  call void @llvm.dbg.declare(metadata ptr %out, metadata !118, metadata !DIExpression()), !dbg !117
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %out, i32 0, i32 1, !dbg !119
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !119
  %0 = add i64 %selected, 1, !dbg !119
  %"struct member ptr3" = getelementptr inbounds %String_Builder, ptr %out, i32 0, i32 1, !dbg !119
  store i64 %0, ptr %"struct member ptr3", align 4, !dbg !119
  %1 = load %String_Builder, ptr %out, align 8, !dbg !120
  store i64 0, ptr %current, align 4, !dbg !120
  store ptr %out, ptr %current, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %current, metadata !121, metadata !DIExpression()), !dbg !120
  store i64 0, ptr %times, align 4, !dbg !122
  store i64 0, ptr %times, align 4, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %times, metadata !123, metadata !DIExpression()), !dbg !122
  store i64 0, ptr %i, align 4, !dbg !124
  store i64 0, ptr %i, align 4, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %i, metadata !125, metadata !DIExpression()), !dbg !126
  br label %for.cond, !dbg !124

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 4, !dbg !124
  %3 = load i64, ptr %times, align 4, !dbg !124
  %4 = mul i64 %3, 256, !dbg !124
  %5 = add i64 %2, %4, !dbg !124
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !124
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5, !dbg !124
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !124
  %6 = icmp ne i8 %indexed_val, 0, !dbg !124
  br i1 %6, label %for.body, label %for.aftr, !dbg !124

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %i, align 4, !dbg !127
  %8 = load i64, ptr %times, align 4, !dbg !127
  %9 = mul i64 %8, 256, !dbg !127
  %10 = add i64 %7, %9, !dbg !127
  %ptr_load4 = load ptr, ptr %text2, align 8, !dbg !127
  %elem_ptr5 = getelementptr i8, ptr %ptr_load4, i64 %10, !dbg !127
  %indexed_val6 = load i8, ptr %elem_ptr5, align 1, !dbg !127
  %11 = load i64, ptr %i, align 4, !dbg !127
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !127
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 0, !dbg !127
  %elem_ptr8 = getelementptr [256 x i8], ptr %"struct member ptr7", i64 0, i64 %11, !dbg !127
  store i8 %indexed_val6, ptr %elem_ptr8, align 1, !dbg !127
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !128
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !128
  %selected11 = load i64, ptr %"struct member ptr10", align 4, !dbg !128
  %12 = add i64 %selected11, 1, !dbg !128
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !128
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 1, !dbg !128
  store i64 %12, ptr %"struct member ptr13", align 4, !dbg !128
  %13 = load i64, ptr %i, align 4, !dbg !129
  %14 = icmp eq i64 %13, 256, !dbg !129
  br i1 %14, label %if.true, label %if.aftr, !dbg !130

for.aftr:                                         ; preds = %for.cond
  %15 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !131
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %15, i32 0, i32 0, !dbg !131
  %16 = load ptr, ptr %ret_ptr, align 8, !dbg !131
  %17 = load %String_Builder, ptr %out, align 8, !dbg !131
  store %String_Builder %17, ptr %16, align 8, !dbg !131
  ret void, !dbg !131

for.incr:                                         ; preds = %if.aftr
  %18 = load i64, ptr %i, align 4, !dbg !130
  %19 = add i64 %18, 1, !dbg !130
  store i64 %19, ptr %i, align 4, !dbg !130
  br label %for.cond, !dbg !130

if.true:                                          ; preds = %for.body
  store i64 0, ptr %i, align 4, !dbg !132
  %20 = load i64, ptr %times, align 4, !dbg !133
  %21 = add i64 %20, 1, !dbg !133
  store i64 %21, ptr %times, align 4, !dbg !133
  %22 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context14, i32 0, i32 0, !dbg !134
  %23 = call ptr @mem_alloc(ptr %__apoc_internal_context14, i64 272), !dbg !134
  %"derefrence struct15" = load ptr, ptr %current, align 8, !dbg !134
  %"struct member ptr16" = getelementptr inbounds %String_Builder, ptr %"derefrence struct15", i32 0, i32 2, !dbg !134
  store ptr %23, ptr %"struct member ptr16", align 8, !dbg !134
  %"derefrence struct17" = load ptr, ptr %current, align 8, !dbg !135
  %"struct member ptr18" = getelementptr inbounds %String_Builder, ptr %"derefrence struct17", i32 0, i32 2, !dbg !135
  %selected19 = load ptr, ptr %"struct member ptr18", align 8, !dbg !135
  store ptr %selected19, ptr %current, align 8, !dbg !135
  br label %if.aftr, !dbg !136

if.aftr:                                          ; preds = %for.body, %if.true
  br label %for.incr, !dbg !130
}

define i8 @compare(ptr %__apoc_internal_context, %string %str1, %string %str2) !dbg !137 {
entry:
  %i = alloca i64, align 8
  %str23 = alloca %string, align 16
  %str12 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str12, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str12, metadata !140, metadata !DIExpression()), !dbg !141
  store %string %str1, ptr %str12, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str23, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str23, metadata !142, metadata !DIExpression()), !dbg !141
  store %string %str2, ptr %str23, align 8
  %"struct member ptr" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1, !dbg !143
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !143
  %"struct member ptr4" = getelementptr inbounds %string, ptr %str23, i32 0, i32 1, !dbg !143
  %selected5 = load i64, ptr %"struct member ptr4", align 4, !dbg !143
  %0 = icmp ne i64 %selected, %selected5, !dbg !143
  br i1 %0, label %if.true, label %if.aftr, !dbg !144

if.true:                                          ; preds = %entry
  ret i8 0, !dbg !145

if.aftr:                                          ; preds = %entry
  store i64 0, ptr %i, align 4, !dbg !144
  store i64 0, ptr %i, align 4, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %i, metadata !146, metadata !DIExpression()), !dbg !147
  br label %for.cond, !dbg !144

for.cond:                                         ; preds = %for.incr, %if.aftr
  %1 = load i64, ptr %i, align 4, !dbg !144
  %"struct member ptr6" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1, !dbg !144
  %selected7 = load i64, ptr %"struct member ptr6", align 4, !dbg !144
  %2 = icmp slt i64 %1, %selected7, !dbg !144
  br i1 %2, label %for.body, label %for.aftr, !dbg !144

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 4, !dbg !148
  %"struct member ptr8" = getelementptr inbounds %string, ptr %str12, i32 0, i32 0, !dbg !148
  %ptr_load = load ptr, ptr %"struct member ptr8", align 8, !dbg !148
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %3, !dbg !148
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !148
  %4 = load i64, ptr %i, align 4, !dbg !148
  %"struct member ptr9" = getelementptr inbounds %string, ptr %str23, i32 0, i32 0, !dbg !148
  %ptr_load10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !148
  %elem_ptr11 = getelementptr i8, ptr %ptr_load10, i64 %4, !dbg !148
  %indexed_val12 = load i8, ptr %elem_ptr11, align 1, !dbg !148
  %5 = icmp ne i8 %indexed_val, %indexed_val12, !dbg !148
  br i1 %5, label %if.true13, label %if.aftr14, !dbg !148

for.aftr:                                         ; preds = %for.cond
  ret i8 1, !dbg !149

for.incr:                                         ; preds = %if.aftr14
  %6 = load i64, ptr %i, align 4, !dbg !148
  %7 = add i64 %6, 1, !dbg !148
  store i64 %7, ptr %i, align 4, !dbg !148
  br label %for.cond, !dbg !148

if.true13:                                        ; preds = %for.body
  ret i8 0, !dbg !150

if.aftr14:                                        ; preds = %for.body
  br label %for.incr, !dbg !148
}

define void @to_string(ptr %__apoc_internal_context, ptr %text) !dbg !151 {
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
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !152, metadata !DIExpression()), !dbg !153
  store ptr %text, ptr %text2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !154
  %1 = load ptr, ptr %text2, align 8, !dbg !154
  %2 = call i64 @len(ptr %__apoc_internal_context3, ptr %1), !dbg !154
  store i64 0, ptr %text_len, align 4, !dbg !154
  store i64 %2, ptr %text_len, align 4, !dbg !154
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !155, metadata !DIExpression()), !dbg !154
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !156
  %4 = load i64, ptr %text_len, align 4, !dbg !156
  %5 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %4), !dbg !156
  store i64 0, ptr %allocated, align 4, !dbg !156
  store ptr %5, ptr %allocated, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !157, metadata !DIExpression()), !dbg !156
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !158
  %7 = load ptr, ptr %allocated, align 8, !dbg !158
  %8 = load ptr, ptr %text2, align 8, !dbg !158
  %9 = load i64, ptr %text_len, align 4, !dbg !158
  call void @copy(ptr %__apoc_internal_context5, ptr %7, ptr %8, i64 %9), !dbg !158
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false), !dbg !159
  %10 = load ptr, ptr %allocated, align 8, !dbg !159
  %11 = getelementptr inbounds %string, ptr %str, i32 0, i32 0, !dbg !159
  store ptr %10, ptr %11, align 8, !dbg !159
  %12 = load i64, ptr %text_len, align 4, !dbg !159
  %13 = getelementptr inbounds %string, ptr %str, i32 0, i32 1, !dbg !159
  store i64 %12, ptr %13, align 4, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %str, metadata !160, metadata !DIExpression()), !dbg !159
  %14 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !161
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %14, i32 0, i32 0, !dbg !161
  %15 = load ptr, ptr %ret_ptr, align 8, !dbg !161
  %16 = load %string, ptr %str, align 8, !dbg !161
  store %string %16, ptr %15, align 8, !dbg !161
  ret void, !dbg !161
}

define void @terminate_string(ptr %__apoc_internal_context, %string %str) !dbg !162 {
entry:
  %__apoc_internal_context8 = alloca %__Internal_Context, align 16
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %out = alloca %string, align 16
  %str2 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str2, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !165, metadata !DIExpression()), !dbg !166
  store %string %str, ptr %str2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !167
  call void @llvm.dbg.declare(metadata ptr %out, metadata !168, metadata !DIExpression()), !dbg !167
  %"struct member ptr" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !169
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !169
  %0 = add i64 %selected, 1, !dbg !169
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !169
  store i64 %0, ptr %"struct member ptr3", align 4, !dbg !169
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !170
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !170
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !170
  %2 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6), !dbg !170
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !170
  store ptr %2, ptr %"struct member ptr7", align 8, !dbg !170
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context8, i32 0, i32 0, !dbg !171
  %"struct member ptr9" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !171
  %selected10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !171
  %"struct member ptr11" = getelementptr inbounds %string, ptr %str2, i32 0, i32 0, !dbg !171
  %selected12 = load ptr, ptr %"struct member ptr11", align 8, !dbg !171
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !171
  %selected14 = load i64, ptr %"struct member ptr13", align 4, !dbg !171
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14), !dbg !171
  %"struct member ptr15" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !172
  %selected16 = load i64, ptr %"struct member ptr15", align 4, !dbg !172
  %"struct member ptr17" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !172
  %ptr_load = load ptr, ptr %"struct member ptr17", align 8, !dbg !172
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected16, !dbg !172
  store i8 0, ptr %elem_ptr, align 1, !dbg !172
  %4 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !173
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %4, i32 0, i32 0, !dbg !173
  %5 = load ptr, ptr %ret_ptr, align 8, !dbg !173
  %6 = load %string, ptr %out, align 8, !dbg !173
  store %string %6, ptr %5, align 8, !dbg !173
  ret void, !dbg !173
}

define void @parse_format(ptr %__apoc_internal_context, %string %format, ptr %list) !dbg !174 {
entry:
  %out = alloca %string, align 16
  %__apoc_internal_context5 = alloca %__Internal_Context, align 16
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
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !236, metadata !DIExpression()), !dbg !237
  store %string %format, ptr %format2, align 8
  store i64 0, ptr %list3, align 4
  call void @llvm.dbg.declare(metadata ptr %list3, metadata !238, metadata !DIExpression()), !dbg !237
  store ptr %list, ptr %list3, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !239
  call void @llvm.memset.p0.i64(ptr align 16 %builder, i8 0, i64 272, i1 false), !dbg !239
  %return_value_member = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !239
  store ptr %builder, ptr %return_value_member, align 8, !dbg !239
  call void @init_builder(ptr %__apoc_internal_context4, ptr @6), !dbg !239
  call void @llvm.dbg.declare(metadata ptr %builder, metadata !240, metadata !DIExpression()), !dbg !239
  store i64 0, ptr %list_index, align 4, !dbg !241
  store i64 0, ptr %list_index, align 4, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %list_index, metadata !242, metadata !DIExpression()), !dbg !241
  store i64 0, ptr %i, align 4, !dbg !243
  store i64 0, ptr %i, align 4, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %i, metadata !244, metadata !DIExpression()), !dbg !245
  br label %for.cond, !dbg !243

for.cond:                                         ; preds = %for.incr, %entry
  %1 = load i64, ptr %i, align 4, !dbg !243
  %"struct member ptr" = getelementptr inbounds %string, ptr %format2, i32 0, i32 1, !dbg !243
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !243
  %2 = icmp slt i64 %1, %selected, !dbg !243
  br i1 %2, label %for.body, label %for.aftr, !dbg !243

for.body:                                         ; preds = %for.cond
  %3 = load %string, ptr %format2, align 8, !dbg !246
  %4 = load i64, ptr %i, align 4, !dbg !246
  %5 = call i8 @"overload[]"(%string %3, i64 %4), !dbg !246
  %6 = icmp eq i8 %5, 37, !dbg !246
  br i1 %6, label %if.true, label %if.else, !dbg !247

for.aftr:                                         ; preds = %for.cond
  %7 = load %String_Builder, ptr %builder, align 8, !dbg !248
  call void @"overload[x]=.10"(ptr %builder, i8 10), !dbg !248
  %8 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !249
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !249
  %return_value_member6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !249
  store ptr %out, ptr %return_value_member6, align 8, !dbg !249
  %9 = load %String_Builder, ptr %builder, align 8, !dbg !249
  call void @builder_to_string(ptr %__apoc_internal_context5, ptr %builder), !dbg !249
  call void @llvm.dbg.declare(metadata ptr %out, metadata !250, metadata !DIExpression()), !dbg !249
  %10 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !251
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %10, i32 0, i32 0, !dbg !251
  %11 = load ptr, ptr %ret_ptr, align 8, !dbg !251
  %12 = load %string, ptr %out, align 8, !dbg !251
  store %string %12, ptr %11, align 8, !dbg !251
  ret void, !dbg !251

for.incr:                                         ; preds = %if.aftr
  %13 = load i64, ptr %i, align 4, !dbg !247
  %14 = add i64 %13, 1, !dbg !247
  store i64 %14, ptr %i, align 4, !dbg !247
  br label %for.cond, !dbg !247

if.true:                                          ; preds = %for.body
  %15 = load i64, ptr %list_index, align 4, !dbg !252
  %ptr_load = load ptr, ptr %list3, align 8, !dbg !252
  %elem_ptr = getelementptr %Any, ptr %ptr_load, i64 %15, !dbg !252
  %indexed_val = load %Any, ptr %elem_ptr, align 8, !dbg !252
  call void @llvm.memset.p0.i64(ptr align 16 %item, i8 0, i64 16, i1 false), !dbg !252
  store %Any %indexed_val, ptr %item, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %item, metadata !253, metadata !DIExpression()), !dbg !252
  %16 = load i64, ptr %list_index, align 4, !dbg !254
  %17 = add i64 %16, 1, !dbg !254
  store i64 %17, ptr %list_index, align 4, !dbg !254
  br label %if.aftr, !dbg !255

if.aftr:                                          ; preds = %if.else, %if.true
  br label %for.incr, !dbg !247

if.else:                                          ; preds = %for.body
  %18 = load %String_Builder, ptr %builder, align 8, !dbg !256
  %19 = load %string, ptr %format2, align 8, !dbg !256
  %20 = load i64, ptr %i, align 4, !dbg !256
  %21 = call i8 @"overload[]"(%string %19, i64 %20), !dbg !256
  call void @"overload[x]=.10"(ptr %builder, i8 %21), !dbg !256
  br label %if.aftr, !dbg !257
}

define void @"print!@* u8"(ptr %__apoc_internal_context, ptr %format) !dbg !258 {
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
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !259, metadata !DIExpression()), !dbg !260
  store ptr %format, ptr %format2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !261
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false), !dbg !261
  %return_value_member = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !261
  store ptr %str, ptr %return_value_member, align 8, !dbg !261
  %1 = load ptr, ptr %format2, align 8, !dbg !261
  call void @to_string(ptr %__apoc_internal_context3, ptr %1), !dbg !261
  call void @llvm.dbg.declare(metadata ptr %str, metadata !262, metadata !DIExpression()), !dbg !261
  store i64 0, ptr %list, align 4, !dbg !263
  store i64 0, ptr %list, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %list, metadata !264, metadata !DIExpression()), !dbg !263
  %2 = load ptr, ptr %list, align 8, !dbg !265
  call void @llvm.va_start(ptr %list), !dbg !265
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !266
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !266
  %return_value_member5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !266
  store ptr %out, ptr %return_value_member5, align 8, !dbg !266
  %4 = load %string, ptr %str, align 8, !dbg !266
  %5 = load ptr, ptr %list, align 8, !dbg !266
  call void @parse_format(ptr %__apoc_internal_context4, %string %4, ptr %5), !dbg !266
  call void @llvm.dbg.declare(metadata ptr %out, metadata !267, metadata !DIExpression()), !dbg !266
  %6 = load ptr, ptr %list, align 8, !dbg !268
  call void @llvm.va_end(ptr %list), !dbg !268
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context6, i32 0, i32 0, !dbg !269
  %8 = call ptr @get_stdout(ptr %__apoc_internal_context6), !dbg !269
  store i64 0, ptr %stdout, align 4, !dbg !269
  store ptr %8, ptr %stdout, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %stdout, metadata !270, metadata !DIExpression()), !dbg !269
  %9 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context7, i32 0, i32 0, !dbg !271
  %10 = load ptr, ptr %stdout, align 8, !dbg !271
  %"struct member ptr" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !271
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !271
  %"struct member ptr8" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !271
  %selected9 = load i64, ptr %"struct member ptr8", align 4, !dbg !271
  %cast = trunc i64 %selected9 to i32, !dbg !271
  %11 = call i8 @write_file(ptr %__apoc_internal_context7, ptr %10, ptr %selected, i32 %cast), !dbg !271
  ret void, !dbg !272
}

define void @"print!@string"(ptr %__apoc_internal_context, %string %format, ...) !dbg !273 {
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
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !274, metadata !DIExpression()), !dbg !275
  store %string %format, ptr %format2, align 8
  store i64 0, ptr %list, align 4, !dbg !276
  store i64 0, ptr %list, align 4, !dbg !276
  call void @llvm.dbg.declare(metadata ptr %list, metadata !277, metadata !DIExpression()), !dbg !276
  %0 = load ptr, ptr %list, align 8, !dbg !278
  call void @llvm.va_start(ptr %list), !dbg !278
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !279
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !279
  %return_value_member = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !279
  store ptr %out, ptr %return_value_member, align 8, !dbg !279
  %2 = load %string, ptr %format2, align 8, !dbg !279
  %3 = load ptr, ptr %list, align 8, !dbg !279
  call void @parse_format(ptr %__apoc_internal_context3, %string %2, ptr %3), !dbg !279
  call void @llvm.dbg.declare(metadata ptr %out, metadata !280, metadata !DIExpression()), !dbg !279
  %4 = load ptr, ptr %list, align 8, !dbg !281
  call void @llvm.va_end(ptr %list), !dbg !281
  %5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !282
  %6 = call ptr @get_stdout(ptr %__apoc_internal_context4), !dbg !282
  store i64 0, ptr %stdout, align 4, !dbg !282
  store ptr %6, ptr %stdout, align 8, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %stdout, metadata !283, metadata !DIExpression()), !dbg !282
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !284
  %8 = load ptr, ptr %stdout, align 8, !dbg !284
  %"struct member ptr" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !284
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !284
  %"struct member ptr6" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !284
  %selected7 = load i64, ptr %"struct member ptr6", align 4, !dbg !284
  %cast = trunc i64 %selected7 to i32, !dbg !284
  %9 = call i8 @write_file(ptr %__apoc_internal_context5, ptr %8, ptr %selected, i32 %cast), !dbg !284
  ret void, !dbg !285
}

define void @copy(ptr %__apoc_internal_context, ptr %dst, ptr %src, i64 %size) !dbg !286 {
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
  call void @llvm.dbg.declare(metadata ptr %dst2, metadata !289, metadata !DIExpression()), !dbg !290
  store ptr %dst, ptr %dst2, align 8
  store i64 0, ptr %src3, align 4
  call void @llvm.dbg.declare(metadata ptr %src3, metadata !291, metadata !DIExpression()), !dbg !290
  store ptr %src, ptr %src3, align 8
  store i64 0, ptr %size4, align 4
  call void @llvm.dbg.declare(metadata ptr %size4, metadata !292, metadata !DIExpression()), !dbg !290
  store i64 %size, ptr %size4, align 4
  %0 = load ptr, ptr %dst2, align 8, !dbg !293
  store i64 0, ptr %a0, align 4, !dbg !293
  store ptr %0, ptr %a0, align 8, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %a0, metadata !294, metadata !DIExpression()), !dbg !293
  %1 = load ptr, ptr %src3, align 8, !dbg !295
  store i64 0, ptr %a1, align 4, !dbg !295
  store ptr %1, ptr %a1, align 8, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !296, metadata !DIExpression()), !dbg !295
  store i64 0, ptr %i, align 4, !dbg !297
  store i64 0, ptr %i, align 4, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %i, metadata !298, metadata !DIExpression()), !dbg !299
  br label %for.cond, !dbg !297

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 4, !dbg !297
  %3 = load i64, ptr %size4, align 4, !dbg !297
  %4 = icmp slt i64 %2, %3, !dbg !297
  br i1 %4, label %for.body, label %for.aftr, !dbg !297

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %i, align 4, !dbg !300
  %ptr_load = load ptr, ptr %a1, align 8, !dbg !300
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5, !dbg !300
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !300
  %6 = load i64, ptr %i, align 4, !dbg !300
  %ptr_load5 = load ptr, ptr %a0, align 8, !dbg !300
  %elem_ptr6 = getelementptr i8, ptr %ptr_load5, i64 %6, !dbg !300
  store i8 %indexed_val, ptr %elem_ptr6, align 1, !dbg !300
  br label %for.incr, !dbg !301

for.aftr:                                         ; preds = %for.cond
  ret void, !dbg !302

for.incr:                                         ; preds = %for.body
  %7 = load i64, ptr %i, align 4, !dbg !301
  %8 = add i64 %7, 1, !dbg !301
  store i64 %8, ptr %i, align 4, !dbg !301
  br label %for.cond, !dbg !301
}

define i64 @len(ptr %__apoc_internal_context, ptr %text) !dbg !303 {
entry:
  %result = alloca i64, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !306, metadata !DIExpression()), !dbg !307
  store ptr %text, ptr %text2, align 8
  store i64 0, ptr %result, align 4, !dbg !308
  store i64 0, ptr %result, align 4, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %result, metadata !309, metadata !DIExpression()), !dbg !308
  store i64 0, ptr %result, align 4, !dbg !310
  br label %for.cond, !dbg !310

for.cond:                                         ; preds = %for.incr, %entry
  %0 = load i64, ptr %result, align 4, !dbg !310
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !310
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !310
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !310
  %1 = icmp ne i8 %indexed_val, 0, !dbg !310
  br i1 %1, label %for.body, label %for.aftr, !dbg !310

for.body:                                         ; preds = %for.cond
  br label %for.incr, !dbg !311

for.aftr:                                         ; preds = %for.cond
  %2 = load i64, ptr %result, align 4, !dbg !312
  ret i64 %2, !dbg !312

for.incr:                                         ; preds = %for.body
  %3 = load i64, ptr %result, align 4, !dbg !311
  %4 = add i64 %3, 1, !dbg !311
  store i64 %4, ptr %result, align 4, !dbg !311
  br label %for.cond, !dbg !311
}

declare i32 @GetLastError()

declare ptr @CreateFileA(ptr, i64, i32, ptr, i64, i64, ptr)

declare i8 @WriteFile(ptr, ptr, i32, ptr, ptr)

declare ptr @GetStdHandle(i32)

define ptr @open_file(ptr %__apoc_internal_context, ptr %f_name, i64 %access) !dbg !313 {
entry:
  %file = alloca ptr, align 8
  %win_access = alloca i64, align 8
  %access3 = alloca i64, align 8
  %f_name2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %f_name2, align 4
  call void @llvm.dbg.declare(metadata ptr %f_name2, metadata !316, metadata !DIExpression()), !dbg !317
  store ptr %f_name, ptr %f_name2, align 8
  store i64 0, ptr %access3, align 4
  call void @llvm.dbg.declare(metadata ptr %access3, metadata !318, metadata !DIExpression()), !dbg !317
  store i64 %access, ptr %access3, align 4
  store i64 0, ptr %win_access, align 4, !dbg !319
  store i64 0, ptr %win_access, align 4, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %win_access, metadata !320, metadata !DIExpression()), !dbg !319
  %0 = load i64, ptr %access3, align 4, !dbg !321
  %1 = and i64 %0, 1, !dbg !321
  %cast = trunc i64 %1 to i8, !dbg !321
  %boolean_expr = trunc i8 %cast to i1, !dbg !321
  br i1 %boolean_expr, label %if.true, label %if.aftr11, !dbg !322

if.true:                                          ; preds = %entry
  %2 = load i64, ptr %win_access, align 4, !dbg !323
  %3 = or i64 %2, 1179785, !dbg !323
  store i64 %3, ptr %win_access, align 4, !dbg !323
  br label %if.aftr, !dbg !323

if.aftr:                                          ; preds = %if.true
  %4 = load i64, ptr %access3, align 4, !dbg !324
  %5 = and i64 %4, 1, !dbg !324
  %cast4 = trunc i64 %5 to i8, !dbg !324
  %boolean_expr5 = trunc i8 %cast4 to i1, !dbg !324
  br i1 %boolean_expr5, label %if.true6, label %if.aftr11, !dbg !322

if.true6:                                         ; preds = %if.aftr
  %6 = load i64, ptr %win_access, align 4, !dbg !325
  %7 = or i64 %6, 1179926, !dbg !325
  store i64 %7, ptr %win_access, align 4, !dbg !325
  br label %if.aftr7, !dbg !325

if.aftr7:                                         ; preds = %if.true6
  %8 = load i64, ptr %access3, align 4, !dbg !326
  %9 = and i64 %8, 2, !dbg !326
  %cast8 = trunc i64 %9 to i8, !dbg !326
  %boolean_expr9 = trunc i8 %cast8 to i1, !dbg !326
  br i1 %boolean_expr9, label %if.true10, label %if.aftr11, !dbg !322

if.true10:                                        ; preds = %if.aftr7
  %10 = load i64, ptr %win_access, align 4, !dbg !327
  %11 = or i64 %10, 1179808, !dbg !327
  store i64 %11, ptr %win_access, align 4, !dbg !327
  br label %if.aftr11, !dbg !327

if.aftr11:                                        ; preds = %entry, %if.aftr, %if.aftr7, %if.true10
  %12 = load ptr, ptr %f_name2, align 8, !dbg !328
  %13 = load i64, ptr %win_access, align 4, !dbg !328
  %14 = call ptr @CreateFileA(ptr %12, i64 %13, i32 0, ptr null, i64 4, i64 32, ptr null), !dbg !328
  store i64 0, ptr %file, align 4, !dbg !328
  store ptr %14, ptr %file, align 8, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %file, metadata !329, metadata !DIExpression()), !dbg !328
  %15 = load ptr, ptr %file, align 8, !dbg !330
  ret ptr %15, !dbg !330
}

define i8 @write_file(ptr %__apoc_internal_context, ptr %file, ptr %data, i32 %size) !dbg !331 {
entry:
  %result = alloca i8, align 1
  %written = alloca i32, align 4
  %size4 = alloca i32, align 4
  %data3 = alloca ptr, align 8
  %file2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %file2, align 4
  call void @llvm.dbg.declare(metadata ptr %file2, metadata !335, metadata !DIExpression()), !dbg !336
  store ptr %file, ptr %file2, align 8
  store i64 0, ptr %data3, align 4
  call void @llvm.dbg.declare(metadata ptr %data3, metadata !337, metadata !DIExpression()), !dbg !336
  store ptr %data, ptr %data3, align 8
  store i32 0, ptr %size4, align 4
  call void @llvm.dbg.declare(metadata ptr %size4, metadata !338, metadata !DIExpression()), !dbg !336
  store i32 %size, ptr %size4, align 4
  store i32 0, ptr %written, align 4, !dbg !339
  store i64 0, ptr %written, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %written, metadata !340, metadata !DIExpression()), !dbg !339
  %0 = load ptr, ptr %file2, align 8, !dbg !341
  %1 = load ptr, ptr %data3, align 8, !dbg !341
  %2 = load i32, ptr %size4, align 4, !dbg !341
  %3 = load i32, ptr %written, align 4, !dbg !341
  %4 = call i8 @WriteFile(ptr %0, ptr %1, i32 %2, ptr %written, ptr null), !dbg !341
  %5 = load i32, ptr %written, align 4, !dbg !342
  %6 = load i32, ptr %size4, align 4, !dbg !342
  %7 = icmp eq i32 %5, %6, !dbg !342
  store i8 0, ptr %result, align 1, !dbg !342
  store i1 %7, ptr %result, align 1, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %result, metadata !343, metadata !DIExpression()), !dbg !342
  %8 = load i8, ptr %result, align 1, !dbg !344
  ret i8 %8, !dbg !344
}

define ptr @get_stdout(ptr %__apoc_internal_context) !dbg !345 {
entry:
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  %0 = call ptr @GetStdHandle(i32 -11), !dbg !348
  ret ptr %0, !dbg !348
}

; Function Attrs: alwaysinline
define i8 @"overload[]"(%string %str, i64 %index) #0 !dbg !349 {
entry:
  %index2 = alloca i64, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !352, metadata !DIExpression()), !dbg !353
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %index2, align 4
  call void @llvm.dbg.declare(metadata ptr %index2, metadata !354, metadata !DIExpression()), !dbg !353
  store i64 %index, ptr %index2, align 4
  %0 = load i64, ptr %index2, align 4, !dbg !355
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0, !dbg !355
  %ptr_load = load ptr, ptr %"struct member ptr", align 8, !dbg !355
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !355
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !355
  ret i8 %indexed_val, !dbg !355
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline
define %string @"overload+"(%string %str, ptr %text) #0 !dbg !356 {
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
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !359, metadata !DIExpression()), !dbg !360
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !361, metadata !DIExpression()), !dbg !360
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !362
  call void @llvm.dbg.declare(metadata ptr %out, metadata !363, metadata !DIExpression()), !dbg !362
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !364
  %1 = load ptr, ptr %text2, align 8, !dbg !364
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1), !dbg !364
  store i64 0, ptr %text_len, align 4, !dbg !364
  store i64 %2, ptr %text_len, align 4, !dbg !364
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !365, metadata !DIExpression()), !dbg !364
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !366
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !366
  %3 = load i64, ptr %text_len, align 4, !dbg !366
  %4 = add i64 %selected, %3, !dbg !366
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !366
  store i64 %4, ptr %"struct member ptr3", align 4, !dbg !366
  %5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !367
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !367
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !367
  %6 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6), !dbg !367
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !367
  store ptr %6, ptr %"struct member ptr7", align 8, !dbg !367
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context8, i32 0, i32 0, !dbg !368
  %"struct member ptr9" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !368
  %selected10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !368
  %"struct member ptr11" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0, !dbg !368
  %selected12 = load ptr, ptr %"struct member ptr11", align 8, !dbg !368
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !368
  %selected14 = load i64, ptr %"struct member ptr13", align 4, !dbg !368
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14), !dbg !368
  %8 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context15, i32 0, i32 0, !dbg !369
  %"struct member ptr16" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !369
  %selected17 = load i64, ptr %"struct member ptr16", align 4, !dbg !369
  %"struct member ptr18" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !369
  %ptr_load = load ptr, ptr %"struct member ptr18", align 8, !dbg !369
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected17, !dbg !369
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !369
  %"struct member ptr19" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !369
  %selected20 = load i64, ptr %"struct member ptr19", align 4, !dbg !369
  %"struct member ptr21" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !369
  %ptr_load22 = load ptr, ptr %"struct member ptr21", align 8, !dbg !369
  %elem_ptr23 = getelementptr i8, ptr %ptr_load22, i64 %selected20, !dbg !369
  %9 = load ptr, ptr %text2, align 8, !dbg !369
  %10 = load i64, ptr %text_len, align 4, !dbg !369
  call void @copy(ptr %__apoc_internal_context15, ptr %elem_ptr23, ptr %9, i64 %10), !dbg !369
  %11 = load %string, ptr %out, align 8, !dbg !370
  ret %string %11, !dbg !370
}

; Function Attrs: alwaysinline
define void @"overload[x]="(ptr %str, ptr %text) #0 !dbg !371 {
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
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !374, metadata !DIExpression()), !dbg !375
  store ptr %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !376, metadata !DIExpression()), !dbg !375
  store ptr %text, ptr %text2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !377
  %1 = load ptr, ptr %text2, align 8, !dbg !377
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1), !dbg !377
  store i64 0, ptr %text_len, align 4, !dbg !377
  store i64 %2, ptr %text_len, align 4, !dbg !377
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !378, metadata !DIExpression()), !dbg !377
  %3 = load i64, ptr %text_len, align 4, !dbg !379
  %"derefrence struct" = load ptr, ptr %str1, align 8, !dbg !379
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1, !dbg !379
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !379
  %4 = sdiv i64 %3, %selected, !dbg !379
  store i64 0, ptr %times, align 4, !dbg !379
  store i64 %4, ptr %times, align 4, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %times, metadata !380, metadata !DIExpression()), !dbg !379
  %5 = load ptr, ptr %str1, align 8, !dbg !381
  store i64 0, ptr %current, align 4, !dbg !381
  store ptr %5, ptr %current, align 8, !dbg !381
  call void @llvm.dbg.declare(metadata ptr %current, metadata !382, metadata !DIExpression()), !dbg !381
  store i64 0, ptr %i, align 4, !dbg !383
  store i64 0, ptr %i, align 4, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %i, metadata !384, metadata !DIExpression()), !dbg !385
  br label %for.cond, !dbg !383

for.cond:                                         ; preds = %for.incr, %entry
  %6 = load i64, ptr %i, align 4, !dbg !383
  %7 = sub i64 %6, 1, !dbg !383
  %8 = load i64, ptr %times, align 4, !dbg !383
  %9 = icmp slt i64 %7, %8, !dbg !383
  br i1 %9, label %for.body, label %for.aftr, !dbg !383

for.body:                                         ; preds = %for.cond
  %10 = load i64, ptr %text_len, align 4, !dbg !386
  store i64 0, ptr %copy_size, align 4, !dbg !386
  store i64 %10, ptr %copy_size, align 4, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !387, metadata !DIExpression()), !dbg !386
  %11 = load i64, ptr %copy_size, align 4, !dbg !388
  %12 = icmp sgt i64 %11, 256, !dbg !388
  br i1 %12, label %if.true, label %if.aftr, !dbg !389

for.aftr:                                         ; preds = %for.cond
  ret void, !dbg !390

for.incr:                                         ; preds = %if.aftr
  %13 = load i64, ptr %i, align 4, !dbg !389
  %14 = add i64 %13, 1, !dbg !389
  store i64 %14, ptr %i, align 4, !dbg !389
  br label %for.cond, !dbg !389

if.true:                                          ; preds = %for.body
  store i64 256, ptr %copy_size, align 4, !dbg !391
  br label %if.aftr, !dbg !391

if.aftr:                                          ; preds = %for.body, %if.true
  %15 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !392
  %"derefrence struct4" = load ptr, ptr %current, align 8, !dbg !392
  %"struct member ptr5" = getelementptr inbounds %String_Builder, ptr %"derefrence struct4", i32 0, i32 1, !dbg !392
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !392
  %16 = sub i64 %selected6, 1, !dbg !392
  %"derefrence struct7" = load ptr, ptr %current, align 8, !dbg !392
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %"derefrence struct7", i32 0, i32 0, !dbg !392
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr8", i64 0, i64 %16, !dbg !392
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !392
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !392
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !392
  %selected11 = load i64, ptr %"struct member ptr10", align 4, !dbg !392
  %17 = sub i64 %selected11, 1, !dbg !392
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !392
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 0, !dbg !392
  %elem_ptr14 = getelementptr [256 x i8], ptr %"struct member ptr13", i64 0, i64 %17, !dbg !392
  %18 = load i64, ptr %i, align 4, !dbg !392
  %19 = mul i64 %18, 256, !dbg !392
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !392
  %elem_ptr15 = getelementptr i8, ptr %ptr_load, i64 %19, !dbg !392
  %indexed_val16 = load i8, ptr %elem_ptr15, align 1, !dbg !392
  %20 = load i64, ptr %i, align 4, !dbg !392
  %21 = mul i64 %20, 256, !dbg !392
  %ptr_load17 = load ptr, ptr %text2, align 8, !dbg !392
  %elem_ptr18 = getelementptr i8, ptr %ptr_load17, i64 %21, !dbg !392
  %22 = load i64, ptr %copy_size, align 4, !dbg !392
  call void @copy(ptr %__apoc_internal_context3, ptr %elem_ptr14, ptr %elem_ptr18, i64 %22), !dbg !392
  %"derefrence struct19" = load ptr, ptr %current, align 8, !dbg !393
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 1, !dbg !393
  %selected21 = load i64, ptr %"struct member ptr20", align 4, !dbg !393
  %23 = load i64, ptr %copy_size, align 4, !dbg !393
  %24 = add i64 %selected21, %23, !dbg !393
  %"derefrence struct22" = load ptr, ptr %current, align 8, !dbg !393
  %"struct member ptr23" = getelementptr inbounds %String_Builder, ptr %"derefrence struct22", i32 0, i32 1, !dbg !393
  store i64 %24, ptr %"struct member ptr23", align 4, !dbg !393
  %25 = load i64, ptr %text_len, align 4, !dbg !394
  %26 = sub i64 %25, 256, !dbg !394
  store i64 %26, ptr %text_len, align 4, !dbg !394
  %"derefrence struct24" = load ptr, ptr %current, align 8, !dbg !395
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 2, !dbg !395
  %selected26 = load ptr, ptr %"struct member ptr25", align 8, !dbg !395
  store ptr %selected26, ptr %current, align 8, !dbg !395
  br label %for.incr, !dbg !389
}

; Function Attrs: alwaysinline
define void @"overload[x]=.10"(ptr %str, i8 %c) #0 !dbg !396 {
entry:
  %__apoc_internal_context = alloca %__Internal_Context, align 16
  %to_put = alloca ptr, align 8
  %c2 = alloca i8, align 1
  %str1 = alloca ptr, align 8
  store i64 0, ptr %str1, align 4
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !399, metadata !DIExpression()), !dbg !400
  store ptr %str, ptr %str1, align 8
  store i8 0, ptr %c2, align 1
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !401, metadata !DIExpression()), !dbg !400
  store i8 %c, ptr %c2, align 1
  %0 = load ptr, ptr %str1, align 8, !dbg !402
  store i64 0, ptr %to_put, align 4, !dbg !402
  store ptr %0, ptr %to_put, align 8, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %to_put, metadata !403, metadata !DIExpression()), !dbg !402
  br label %for.cond, !dbg !404

for.cond:                                         ; preds = %for.incr, %entry
  %1 = load ptr, ptr %to_put, align 8, !dbg !404
  %2 = icmp ne ptr %1, null, !dbg !404
  %"derefrence struct" = load ptr, ptr %to_put, align 8, !dbg !404
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1, !dbg !404
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !404
  %3 = icmp eq i64 %selected, 256, !dbg !404
  %"&&" = and i1 %2, %3, !dbg !404
  br i1 %"&&", label %for.body, label %for.aftr, !dbg !404

for.body:                                         ; preds = %for.cond
  %"derefrence struct3" = load ptr, ptr %to_put, align 8, !dbg !405
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 2, !dbg !405
  %selected5 = load ptr, ptr %"struct member ptr4", align 8, !dbg !405
  %4 = icmp eq ptr %selected5, null, !dbg !405
  br i1 %4, label %if.true, label %if.aftr12, !dbg !406

for.aftr:                                         ; preds = %for.cond
  %5 = load i8, ptr %c2, align 1, !dbg !407
  %"derefrence struct16" = load ptr, ptr %to_put, align 8, !dbg !407
  %"struct member ptr17" = getelementptr inbounds %String_Builder, ptr %"derefrence struct16", i32 0, i32 1, !dbg !407
  %selected18 = load i64, ptr %"struct member ptr17", align 4, !dbg !407
  %"derefrence struct19" = load ptr, ptr %to_put, align 8, !dbg !407
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 0, !dbg !407
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr20", i64 0, i64 %selected18, !dbg !407
  store i8 %5, ptr %elem_ptr, align 1, !dbg !407
  %"derefrence struct21" = load ptr, ptr %to_put, align 8, !dbg !408
  %"struct member ptr22" = getelementptr inbounds %String_Builder, ptr %"derefrence struct21", i32 0, i32 1, !dbg !408
  %selected23 = load i64, ptr %"struct member ptr22", align 4, !dbg !408
  %6 = add i64 %selected23, 1, !dbg !408
  %"derefrence struct24" = load ptr, ptr %to_put, align 8, !dbg !408
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 1, !dbg !408
  store i64 %6, ptr %"struct member ptr25", align 4, !dbg !408
  ret void, !dbg !409

for.incr:                                         ; preds = %if.aftr12
  br label %for.cond, !dbg !406

if.true:                                          ; preds = %for.body
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !410
  %8 = call ptr @mem_alloc(ptr %__apoc_internal_context, i64 272), !dbg !410
  %"derefrence struct6" = load ptr, ptr %to_put, align 8, !dbg !410
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2, !dbg !410
  store ptr %8, ptr %"struct member ptr7", align 8, !dbg !410
  br label %if.aftr, !dbg !411

if.aftr:                                          ; preds = %if.true
  %"derefrence struct8" = load ptr, ptr %to_put, align 8, !dbg !412
  %"struct member ptr9" = getelementptr inbounds %String_Builder, ptr %"derefrence struct8", i32 0, i32 1, !dbg !412
  %selected10 = load i64, ptr %"struct member ptr9", align 4, !dbg !412
  %9 = icmp eq i64 %selected10, 256, !dbg !412
  br i1 %9, label %if.true11, label %if.aftr12, !dbg !406

if.true11:                                        ; preds = %if.aftr
  %"derefrence struct13" = load ptr, ptr %to_put, align 8, !dbg !413
  %"struct member ptr14" = getelementptr inbounds %String_Builder, ptr %"derefrence struct13", i32 0, i32 2, !dbg !413
  %selected15 = load ptr, ptr %"struct member ptr14", align 8, !dbg !413
  store ptr %selected15, ptr %to_put, align 8, !dbg !413
  br label %if.aftr12, !dbg !413

if.aftr12:                                        ; preds = %for.body, %if.aftr, %if.true11
  br label %for.incr, !dbg !406
}

; Function Attrs: alwaysinline
define i8 @overload(%string %str, ptr %text) #0 !dbg !414 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %__apoc_internal_context = alloca %__Internal_Context, align 16
  %str2 = alloca %string, align 16
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !417, metadata !DIExpression()), !dbg !418
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !419, metadata !DIExpression()), !dbg !418
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str2, i8 0, i64 16, i1 false), !dbg !420
  %0 = load ptr, ptr %text2, align 8, !dbg !420
  %1 = getelementptr inbounds %string, ptr %str2, i32 0, i32 0, !dbg !420
  store ptr %0, ptr %1, align 8, !dbg !420
  %2 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !420
  %3 = load ptr, ptr %text2, align 8, !dbg !420
  %4 = call i64 @len(ptr %__apoc_internal_context, ptr %3), !dbg !420
  %5 = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !420
  store i64 %4, ptr %5, align 4, !dbg !420
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !421, metadata !DIExpression()), !dbg !420
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !422
  %7 = load %string, ptr %str1, align 8, !dbg !422
  %8 = load %string, ptr %str2, align 8, !dbg !422
  %9 = call i8 @compare(ptr %__apoc_internal_context3, %string %7, %string %8), !dbg !422
  ret i8 %9, !dbg !422
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!27, !29, !30, !32, !34, !35}
!llvm.module.flags = !{!37, !38}

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
!15 = distinct !DIGlobalVariable(name: "called", scope: !12, file: !12, line: 92, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "DELETE", scope: !18, file: !18, line: 58, type: !13, isLocal: true, isDefinition: true)
!18 = !DIFile(filename: "Windows.apoc", directory: "W:\\Apocalypse\\Standard")
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "READ_CONTROL", scope: !18, file: !18, line: 59, type: !13, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "WRITE_DAC", scope: !18, file: !18, line: 60, type: !13, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "WRITE_OWNER", scope: !18, file: !18, line: 61, type: !13, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "SYNCHRONIZE", scope: !18, file: !18, line: 62, type: !13, isLocal: true, isDefinition: true)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!28 = !DIFile(filename: "Test.apoc", directory: "W:\\Apocalypse")
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!31 = !DIFile(filename: "C_Standard.apoc", directory: "W:\\Apocalypse\\Standard")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!33 = !DIFile(filename: "OS.apoc", directory: "W:\\Apocalypse\\Standard")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !36)
!36 = !{!0, !4, !6, !10, !14, !16, !19, !21, !23, !25}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 2, !"CodeView", i32 1}
!39 = distinct !DISubprogram(name: "main", scope: !28, file: !28, line: 5, type: !40, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!40 = !DISubroutineType(types: !41)
!41 = !{!42}
!42 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!43 = !{}
!44 = !DILocation(line: 7, column: 2, scope: !39)
!45 = !DILocalVariable(name: "result", scope: !39, file: !28, line: 7, type: !46, align: 128)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "String_Builder", scope: !12, file: !12, line: 10, size: 2176, align: 2048, elements: !47)
!47 = !{!48, !53, !54}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !12, file: !12, line: 12, baseType: !49, size: 2048, align: 128)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, align: 8, elements: !51)
!50 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!51 = !{!52}
!52 = !DISubrange(count: 256, lowerBound: 0)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !12, file: !12, line: 13, baseType: !13, size: 64, align: 64, offset: 2048)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !12, line: 14, baseType: !55, size: 64, align: 64, offset: 2112)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!56 = !DILocation(line: 9, column: 6, scope: !39)
!57 = !DILocation(line: 15, column: 2, scope: !39)
!58 = !DILocation(line: 16, column: 2, scope: !39)
!59 = !DILocalVariable(name: "str", scope: !39, file: !28, line: 16, type: !60, align: 128)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !12, file: !12, line: 4, size: 128, align: 64, elements: !61)
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !12, file: !12, line: 6, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !12, file: !12, line: 7, baseType: !13, size: 64, align: 64, offset: 64)
!65 = !DILocation(line: 18, column: 7, scope: !39)
!66 = !DILocation(line: 12, column: 7, scope: !39)
!67 = !DILocation(line: 13, column: 7, scope: !39)
!68 = !DILocation(line: 10, column: 12, scope: !39)
!69 = !DILocation(line: 19, column: 5, scope: !39)
!70 = distinct !DISubprogram(name: "mem_alloc", scope: !31, file: !31, line: 11, type: !71, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!71 = !DISubroutineType(types: !72)
!72 = !{!8, !73}
!73 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "size", arg: 1, scope: !70, file: !31, line: 11, type: !73)
!75 = !DILocation(line: 11, scope: !70)
!76 = !DILocation(line: 13, column: 2, scope: !70)
!77 = !DILocalVariable(name: "result", scope: !70, file: !31, line: 13, type: !8, align: 64)
!78 = !DILocation(line: 14, column: 8, scope: !70)
!79 = !DILocation(line: 15, column: 5, scope: !70)
!80 = distinct !DISubprogram(name: "builder_to_string", scope: !12, file: !12, line: 17, type: !81, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!81 = !DISubroutineType(types: !82)
!82 = !{!9, !55}
!83 = !DILocalVariable(name: "builder", arg: 1, scope: !80, file: !12, line: 17, type: !55)
!84 = !DILocation(line: 17, scope: !80)
!85 = !DILocation(line: 19, column: 2, scope: !80)
!86 = !DILocalVariable(name: "out", scope: !80, file: !12, line: 19, type: !60, align: 128)
!87 = !DILocation(line: 20, column: 2, scope: !80)
!88 = !DILocalVariable(name: "out_len", scope: !80, file: !12, line: 20, type: !13, align: 64)
!89 = !DILocation(line: 21, column: 2, scope: !80)
!90 = !DILocalVariable(name: "current", scope: !80, file: !12, line: 21, type: !55, align: 64)
!91 = !DILocation(line: 22, column: 2, scope: !80)
!92 = !DILocalVariable(name: "i", scope: !80, file: !12, line: 22, type: !13, align: 64)
!93 = !DILocation(line: 22, column: 6, scope: !80)
!94 = !DILocation(line: 23, column: 3, scope: !80)
!95 = !DILocation(line: 24, column: 3, scope: !80)
!96 = !DILocation(line: 25, column: 2, scope: !80)
!97 = !DILocation(line: 26, column: 2, scope: !80)
!98 = !DILocation(line: 27, column: 2, scope: !80)
!99 = !DILocation(line: 28, column: 2, scope: !80)
!100 = !DILocation(line: 30, column: 2, scope: !80)
!101 = !DILocalVariable(name: "times", scope: !80, file: !12, line: 30, type: !13, align: 64)
!102 = !DILocation(line: 31, column: 2, scope: !80)
!103 = !DILocalVariable(name: "i", scope: !80, file: !12, line: 31, type: !13, align: 64)
!104 = !DILocation(line: 31, column: 6, scope: !80)
!105 = !DILocation(line: 32, column: 7, scope: !80)
!106 = !DILocation(line: 33, column: 3, scope: !80)
!107 = !DILocation(line: 34, column: 3, scope: !80)
!108 = !DILocation(line: 35, column: 2, scope: !80)
!109 = !DILocation(line: 36, column: 6, scope: !80)
!110 = !DILocation(line: 37, column: 2, scope: !80)
!111 = !DILocation(line: 38, column: 5, scope: !80)
!112 = distinct !DISubprogram(name: "init_builder", scope: !12, file: !12, line: 41, type: !113, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!113 = !DISubroutineType(types: !114)
!114 = !{!9, !63}
!115 = !DILocalVariable(name: "text", arg: 1, scope: !112, file: !12, line: 41, type: !63)
!116 = !DILocation(line: 41, scope: !112)
!117 = !DILocation(line: 43, column: 2, scope: !112)
!118 = !DILocalVariable(name: "out", scope: !112, file: !12, line: 43, type: !46, align: 128)
!119 = !DILocation(line: 44, column: 2, scope: !112)
!120 = !DILocation(line: 45, column: 2, scope: !112)
!121 = !DILocalVariable(name: "current", scope: !112, file: !12, line: 45, type: !55, align: 64)
!122 = !DILocation(line: 46, column: 2, scope: !112)
!123 = !DILocalVariable(name: "times", scope: !112, file: !12, line: 46, type: !13, align: 64)
!124 = !DILocation(line: 47, column: 2, scope: !112)
!125 = !DILocalVariable(name: "i", scope: !112, file: !12, line: 47, type: !13, align: 64)
!126 = !DILocation(line: 47, column: 6, scope: !112)
!127 = !DILocation(line: 48, column: 3, scope: !112)
!128 = !DILocation(line: 49, column: 3, scope: !112)
!129 = !DILocation(line: 50, column: 3, scope: !112)
!130 = !DILocation(line: 56, column: 2, scope: !112)
!131 = !DILocation(line: 57, column: 5, scope: !112)
!132 = !DILocation(line: 51, column: 4, scope: !112)
!133 = !DILocation(line: 52, column: 4, scope: !112)
!134 = !DILocation(line: 53, column: 4, scope: !112)
!135 = !DILocation(line: 54, column: 4, scope: !112)
!136 = !DILocation(line: 55, column: 3, scope: !112)
!137 = distinct !DISubprogram(name: "compare", scope: !12, file: !12, line: 113, type: !138, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!138 = !DISubroutineType(types: !139)
!139 = !{!3, !60, !60}
!140 = !DILocalVariable(name: "str1", arg: 1, scope: !137, file: !12, line: 113, type: !60)
!141 = !DILocation(line: 113, scope: !137)
!142 = !DILocalVariable(name: "str2", arg: 2, scope: !137, file: !12, line: 113, type: !60)
!143 = !DILocation(line: 115, column: 2, scope: !137)
!144 = !DILocation(line: 118, column: 2, scope: !137)
!145 = !DILocation(line: 116, column: 6, scope: !137)
!146 = !DILocalVariable(name: "i", scope: !137, file: !12, line: 118, type: !13, align: 64)
!147 = !DILocation(line: 118, column: 6, scope: !137)
!148 = !DILocation(line: 119, column: 3, scope: !137)
!149 = !DILocation(line: 120, column: 5, scope: !137)
!150 = !DILocation(line: 119, column: 38, scope: !137)
!151 = distinct !DISubprogram(name: "to_string", scope: !12, file: !12, line: 123, type: !113, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!152 = !DILocalVariable(name: "text", arg: 1, scope: !151, file: !12, line: 123, type: !63)
!153 = !DILocation(line: 123, scope: !151)
!154 = !DILocation(line: 125, column: 2, scope: !151)
!155 = !DILocalVariable(name: "text_len", scope: !151, file: !12, line: 125, type: !13, align: 64)
!156 = !DILocation(line: 126, column: 2, scope: !151)
!157 = !DILocalVariable(name: "allocated", scope: !151, file: !12, line: 126, type: !8, align: 64)
!158 = !DILocation(line: 127, column: 6, scope: !151)
!159 = !DILocation(line: 128, column: 2, scope: !151)
!160 = !DILocalVariable(name: "str", scope: !151, file: !12, line: 128, type: !60, align: 128)
!161 = !DILocation(line: 129, column: 5, scope: !151)
!162 = distinct !DISubprogram(name: "terminate_string", scope: !12, file: !12, line: 132, type: !163, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!163 = !DISubroutineType(types: !164)
!164 = !{!9, !60}
!165 = !DILocalVariable(name: "str", arg: 1, scope: !162, file: !12, line: 132, type: !60)
!166 = !DILocation(line: 132, scope: !162)
!167 = !DILocation(line: 134, column: 2, scope: !162)
!168 = !DILocalVariable(name: "out", scope: !162, file: !12, line: 134, type: !60, align: 128)
!169 = !DILocation(line: 135, column: 2, scope: !162)
!170 = !DILocation(line: 136, column: 2, scope: !162)
!171 = !DILocation(line: 137, column: 6, scope: !162)
!172 = !DILocation(line: 138, column: 2, scope: !162)
!173 = !DILocation(line: 139, column: 5, scope: !162)
!174 = distinct !DISubprogram(name: "parse_format", scope: !12, file: !12, line: 143, type: !175, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!175 = !DISubroutineType(types: !176)
!176 = !{!9, !60, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "Any", scope: !2, file: !2, line: 51, size: 128, align: 64, elements: !179)
!179 = !{!180, !235}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, line: 52, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 56, size: 320, align: 64, elements: !183)
!183 = !{!184, !185, !190, !203, !211, !218, !226}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 57, baseType: !42, size: 32, align: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !2, file: !2, line: 66, baseType: !186, size: 64, align: 128)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Primitive", scope: !2, file: !2, line: 66, size: 64, align: 32, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 67, baseType: !42, size: 32, align: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2, file: !2, line: 68, baseType: !42, size: 32, align: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !2, file: !2, line: 71, baseType: !191, size: 320, align: 128)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Struct", scope: !2, file: !2, line: 71, size: 320, align: 64, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !200}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 72, baseType: !42, size: 32, align: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "member_count", scope: !2, file: !2, line: 73, baseType: !42, size: 32, align: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "is_union", scope: !2, file: !2, line: 74, baseType: !3, size: 8, align: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "is_packed", scope: !2, file: !2, line: 75, baseType: !3, size: 8, align: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2, file: !2, line: 76, baseType: !63, size: 64, align: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "member_names", scope: !2, file: !2, line: 77, baseType: !199, size: 64, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "member_types", scope: !2, file: !2, line: 78, baseType: !201, size: 64, align: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 78, size: 320, align: 64, elements: !183)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !2, file: !2, line: 81, baseType: !204, size: 192, align: 128)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Array", scope: !2, file: !2, line: 81, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 82, baseType: !42, size: 32, align: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, line: 83, baseType: !208, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 83, size: 320, align: 64, elements: !183)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "elem_count", scope: !2, file: !2, line: 84, baseType: !73, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2, file: !2, line: 87, baseType: !212, size: 128, align: 128)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Pointer", scope: !2, file: !2, line: 87, size: 128, align: 64, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 88, baseType: !42, size: 32, align: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pointed", scope: !2, file: !2, line: 89, baseType: !216, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 89, size: 320, align: 64, elements: !183)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "enumerator", scope: !2, file: !2, line: 92, baseType: !219, size: 256, align: 128)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Enum", scope: !2, file: !2, line: 92, size: 256, align: 64, elements: !220)
!220 = !{!221, !222, !223, !224}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 93, baseType: !42, size: 32, align: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2, file: !2, line: 94, baseType: !186, size: 64, align: 128, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !2, file: !2, line: 95, baseType: !199, size: 64, align: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2, file: !2, line: 96, baseType: !225, size: 64, align: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2, file: !2, line: 99, baseType: !227, size: 256, align: 128)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Func", scope: !2, file: !2, line: 99, size: 256, align: 64, elements: !228)
!228 = !{!229, !230, !233, !234}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2, file: !2, line: 100, baseType: !42, size: 32, align: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "param_types", scope: !2, file: !2, line: 101, baseType: !231, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !2, file: !2, line: 101, size: 320, align: 64, elements: !183)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "return_type", scope: !2, file: !2, line: 102, baseType: !231, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "calling_convention", scope: !2, file: !2, line: 103, baseType: !42, size: 32, align: 32, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2, file: !2, line: 53, baseType: !8, size: 64, align: 64, offset: 64)
!236 = !DILocalVariable(name: "format", arg: 1, scope: !174, file: !12, line: 143, type: !60)
!237 = !DILocation(line: 143, scope: !174)
!238 = !DILocalVariable(name: "list", arg: 2, scope: !174, file: !12, line: 143, type: !177)
!239 = !DILocation(line: 145, column: 2, scope: !174)
!240 = !DILocalVariable(name: "builder", scope: !174, file: !12, line: 145, type: !46, align: 128)
!241 = !DILocation(line: 146, column: 2, scope: !174)
!242 = !DILocalVariable(name: "list_index", scope: !174, file: !12, line: 146, type: !13, align: 64)
!243 = !DILocation(line: 147, column: 2, scope: !174)
!244 = !DILocalVariable(name: "i", scope: !174, file: !12, line: 147, type: !13, align: 64)
!245 = !DILocation(line: 147, column: 6, scope: !174)
!246 = !DILocation(line: 148, column: 3, scope: !174)
!247 = !DILocation(line: 154, column: 2, scope: !174)
!248 = !DILocation(line: 155, column: 2, scope: !174)
!249 = !DILocation(line: 156, column: 2, scope: !174)
!250 = !DILocalVariable(name: "out", scope: !174, file: !12, line: 156, type: !60, align: 128)
!251 = !DILocation(line: 157, column: 5, scope: !174)
!252 = !DILocation(line: 149, column: 4, scope: !174)
!253 = !DILocalVariable(name: "item", scope: !174, file: !12, line: 149, type: !178, align: 128)
!254 = !DILocation(line: 150, column: 4, scope: !174)
!255 = !DILocation(line: 151, column: 3, scope: !174)
!256 = !DILocation(line: 152, column: 4, scope: !174)
!257 = !DILocation(line: 153, column: 3, scope: !174)
!258 = distinct !DISubprogram(name: "print!@* u8", scope: !12, file: !12, line: 160, type: !113, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!259 = !DILocalVariable(name: "format", arg: 1, scope: !258, file: !12, line: 160, type: !63)
!260 = !DILocation(line: 160, scope: !258)
!261 = !DILocation(line: 162, column: 2, scope: !258)
!262 = !DILocalVariable(name: "str", scope: !258, file: !12, line: 162, type: !60, align: 128)
!263 = !DILocation(line: 163, column: 2, scope: !258)
!264 = !DILocalVariable(name: "list", scope: !258, file: !12, line: 163, type: !177, align: 64)
!265 = !DILocation(line: 164, column: 15, scope: !258)
!266 = !DILocation(line: 165, column: 2, scope: !258)
!267 = !DILocalVariable(name: "out", scope: !258, file: !12, line: 165, type: !60, align: 128)
!268 = !DILocation(line: 166, column: 14, scope: !258)
!269 = !DILocation(line: 167, column: 2, scope: !258)
!270 = !DILocalVariable(name: "stdout", scope: !258, file: !12, line: 167, type: !8, align: 64)
!271 = !DILocation(line: 168, column: 12, scope: !258)
!272 = !DILocation(line: 169, column: 1, scope: !258)
!273 = distinct !DISubprogram(name: "print!@string", scope: !12, file: !12, line: 171, type: !163, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!274 = !DILocalVariable(name: "format", arg: 1, scope: !273, file: !12, line: 171, type: !60)
!275 = !DILocation(line: 171, scope: !273)
!276 = !DILocation(line: 173, column: 2, scope: !273)
!277 = !DILocalVariable(name: "list", scope: !273, file: !12, line: 173, type: !177, align: 64)
!278 = !DILocation(line: 174, column: 15, scope: !273)
!279 = !DILocation(line: 175, column: 2, scope: !273)
!280 = !DILocalVariable(name: "out", scope: !273, file: !12, line: 175, type: !60, align: 128)
!281 = !DILocation(line: 176, column: 14, scope: !273)
!282 = !DILocation(line: 177, column: 2, scope: !273)
!283 = !DILocalVariable(name: "stdout", scope: !273, file: !12, line: 177, type: !8, align: 64)
!284 = !DILocation(line: 178, column: 12, scope: !273)
!285 = !DILocation(line: 179, column: 1, scope: !273)
!286 = distinct !DISubprogram(name: "copy", scope: !12, file: !12, line: 182, type: !287, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!287 = !DISubroutineType(types: !288)
!288 = !{!9, !8, !8, !73}
!289 = !DILocalVariable(name: "dst", arg: 1, scope: !286, file: !12, line: 182, type: !8)
!290 = !DILocation(line: 182, scope: !286)
!291 = !DILocalVariable(name: "src", arg: 2, scope: !286, file: !12, line: 182, type: !8)
!292 = !DILocalVariable(name: "size", arg: 3, scope: !286, file: !12, line: 182, type: !73)
!293 = !DILocation(line: 184, column: 2, scope: !286)
!294 = !DILocalVariable(name: "a0", scope: !286, file: !12, line: 184, type: !63, align: 64)
!295 = !DILocation(line: 185, column: 2, scope: !286)
!296 = !DILocalVariable(name: "a1", scope: !286, file: !12, line: 185, type: !63, align: 64)
!297 = !DILocation(line: 186, column: 2, scope: !286)
!298 = !DILocalVariable(name: "i", scope: !286, file: !12, line: 186, type: !13, align: 64)
!299 = !DILocation(line: 186, column: 6, scope: !286)
!300 = !DILocation(line: 188, column: 3, scope: !286)
!301 = !DILocation(line: 189, column: 2, scope: !286)
!302 = !DILocation(line: 190, column: 1, scope: !286)
!303 = distinct !DISubprogram(name: "len", scope: !12, file: !12, line: 192, type: !304, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!304 = !DISubroutineType(types: !305)
!305 = !{!13, !63}
!306 = !DILocalVariable(name: "text", arg: 1, scope: !303, file: !12, line: 192, type: !63)
!307 = !DILocation(line: 192, scope: !303)
!308 = !DILocation(line: 194, column: 2, scope: !303)
!309 = !DILocalVariable(name: "result", scope: !303, file: !12, line: 194, type: !13, align: 64)
!310 = !DILocation(line: 195, column: 2, scope: !303)
!311 = !DILocation(line: 195, column: 47, scope: !303)
!312 = !DILocation(line: 196, column: 5, scope: !303)
!313 = distinct !DISubprogram(name: "open_file", scope: !18, file: !18, line: 26, type: !314, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!314 = !DISubroutineType(types: !315)
!315 = !{!8, !63, !13}
!316 = !DILocalVariable(name: "f_name", arg: 1, scope: !313, file: !18, line: 26, type: !63)
!317 = !DILocation(line: 26, scope: !313)
!318 = !DILocalVariable(name: "access", arg: 2, scope: !313, file: !18, line: 26, type: !13)
!319 = !DILocation(line: 28, column: 2, scope: !313)
!320 = !DILocalVariable(name: "win_access", scope: !313, file: !18, line: 28, type: !13, align: 64)
!321 = !DILocation(line: 29, column: 2, scope: !313)
!322 = !DILocation(line: 36, column: 1, scope: !313)
!323 = !DILocation(line: 29, column: 41, scope: !313)
!324 = !DILocation(line: 30, column: 2, scope: !313)
!325 = !DILocation(line: 30, column: 41, scope: !313)
!326 = !DILocation(line: 31, column: 2, scope: !313)
!327 = !DILocation(line: 31, column: 41, scope: !313)
!328 = !DILocation(line: 32, column: 2, scope: !313)
!329 = !DILocalVariable(name: "file", scope: !313, file: !18, line: 32, type: !8, align: 64)
!330 = !DILocation(line: 35, column: 5, scope: !313)
!331 = distinct !DISubprogram(name: "write_file", scope: !18, file: !18, line: 38, type: !332, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!332 = !DISubroutineType(types: !333)
!333 = !{!3, !8, !8, !334}
!334 = !DIBasicType(name: "u32", size: 24, encoding: DW_ATE_unsigned)
!335 = !DILocalVariable(name: "file", arg: 1, scope: !331, file: !18, line: 38, type: !8)
!336 = !DILocation(line: 38, scope: !331)
!337 = !DILocalVariable(name: "data", arg: 2, scope: !331, file: !18, line: 38, type: !8)
!338 = !DILocalVariable(name: "size", arg: 3, scope: !331, file: !18, line: 38, type: !334)
!339 = !DILocation(line: 40, column: 2, scope: !331)
!340 = !DILocalVariable(name: "written", scope: !331, file: !18, line: 40, type: !334, align: 32)
!341 = !DILocation(line: 41, column: 11, scope: !331)
!342 = !DILocation(line: 42, column: 2, scope: !331)
!343 = !DILocalVariable(name: "result", scope: !331, file: !18, line: 42, type: !3, align: 8)
!344 = !DILocation(line: 43, column: 5, scope: !331)
!345 = distinct !DISubprogram(name: "get_stdout", scope: !18, file: !18, line: 46, type: !346, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!346 = !DISubroutineType(types: !347)
!347 = !{!8}
!348 = !DILocation(line: 48, column: 5, scope: !345)
!349 = distinct !DISubprogram(name: "overload[]", scope: !12, file: !12, line: 60, type: !350, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!350 = !DISubroutineType(types: !351)
!351 = !{!50, !60, !13}
!352 = !DILocalVariable(name: "str", scope: !349, file: !12, line: 60, type: !60)
!353 = !DILocation(line: 60, scope: !349)
!354 = !DILocalVariable(name: "index", arg: 1, scope: !349, file: !12, line: 60, type: !13)
!355 = !DILocation(line: 62, column: 5, scope: !349)
!356 = distinct !DISubprogram(name: "overload+", scope: !12, file: !12, line: 65, type: !357, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!357 = !DISubroutineType(types: !358)
!358 = !{!60, !60, !63}
!359 = !DILocalVariable(name: "str", scope: !356, file: !12, line: 65, type: !60)
!360 = !DILocation(line: 65, scope: !356)
!361 = !DILocalVariable(name: "text", arg: 1, scope: !356, file: !12, line: 65, type: !63)
!362 = !DILocation(line: 67, column: 2, scope: !356)
!363 = !DILocalVariable(name: "out", scope: !356, file: !12, line: 67, type: !60, align: 128)
!364 = !DILocation(line: 68, column: 2, scope: !356)
!365 = !DILocalVariable(name: "text_len", scope: !356, file: !12, line: 68, type: !13, align: 64)
!366 = !DILocation(line: 69, column: 2, scope: !356)
!367 = !DILocation(line: 70, column: 2, scope: !356)
!368 = !DILocation(line: 71, column: 6, scope: !356)
!369 = !DILocation(line: 72, column: 6, scope: !356)
!370 = !DILocation(line: 73, column: 5, scope: !356)
!371 = distinct !DISubprogram(name: "overload[x]=", scope: !12, file: !12, line: 76, type: !372, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!372 = !DISubroutineType(types: !373)
!373 = !{!9, !55, !63}
!374 = !DILocalVariable(name: "str", scope: !371, file: !12, line: 76, type: !55)
!375 = !DILocation(line: 76, scope: !371)
!376 = !DILocalVariable(name: "text", arg: 1, scope: !371, file: !12, line: 76, type: !63)
!377 = !DILocation(line: 78, column: 2, scope: !371)
!378 = !DILocalVariable(name: "text_len", scope: !371, file: !12, line: 78, type: !13, align: 64)
!379 = !DILocation(line: 79, column: 2, scope: !371)
!380 = !DILocalVariable(name: "times", scope: !371, file: !12, line: 79, type: !13, align: 64)
!381 = !DILocation(line: 80, column: 2, scope: !371)
!382 = !DILocalVariable(name: "current", scope: !371, file: !12, line: 80, type: !55, align: 64)
!383 = !DILocation(line: 81, column: 2, scope: !371)
!384 = !DILocalVariable(name: "i", scope: !371, file: !12, line: 81, type: !13, align: 64)
!385 = !DILocation(line: 81, column: 6, scope: !371)
!386 = !DILocation(line: 82, column: 3, scope: !371)
!387 = !DILocalVariable(name: "copy_size", scope: !371, file: !12, line: 82, type: !13, align: 64)
!388 = !DILocation(line: 83, column: 3, scope: !371)
!389 = !DILocation(line: 88, column: 2, scope: !371)
!390 = !DILocation(line: 90, column: 1, scope: !371)
!391 = !DILocation(line: 83, column: 37, scope: !371)
!392 = !DILocation(line: 84, column: 7, scope: !371)
!393 = !DILocation(line: 85, column: 3, scope: !371)
!394 = !DILocation(line: 86, column: 3, scope: !371)
!395 = !DILocation(line: 87, column: 3, scope: !371)
!396 = distinct !DISubprogram(name: "overload[x]=", scope: !12, file: !12, line: 93, type: !397, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!397 = !DISubroutineType(types: !398)
!398 = !{!9, !55, !50}
!399 = !DILocalVariable(name: "str", scope: !396, file: !12, line: 93, type: !55)
!400 = !DILocation(line: 93, scope: !396)
!401 = !DILocalVariable(name: "c", arg: 1, scope: !396, file: !12, line: 93, type: !50)
!402 = !DILocation(line: 95, column: 2, scope: !396)
!403 = !DILocalVariable(name: "to_put", scope: !396, file: !12, line: 95, type: !55, align: 64)
!404 = !DILocation(line: 96, column: 2, scope: !396)
!405 = !DILocation(line: 97, column: 3, scope: !396)
!406 = !DILocation(line: 102, column: 2, scope: !396)
!407 = !DILocation(line: 103, column: 2, scope: !396)
!408 = !DILocation(line: 104, column: 2, scope: !396)
!409 = !DILocation(line: 105, column: 1, scope: !396)
!410 = !DILocation(line: 98, column: 4, scope: !396)
!411 = !DILocation(line: 99, column: 3, scope: !396)
!412 = !DILocation(line: 100, column: 3, scope: !396)
!413 = !DILocation(line: 101, column: 4, scope: !396)
!414 = distinct !DISubprogram(name: "overload", scope: !12, file: !12, line: 107, type: !415, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !43)
!415 = !DISubroutineType(types: !416)
!416 = !{!3, !60, !63}
!417 = !DILocalVariable(name: "str", scope: !414, file: !12, line: 107, type: !60)
!418 = !DILocation(line: 107, scope: !414)
!419 = !DILocalVariable(name: "text", arg: 1, scope: !414, file: !12, line: 107, type: !63)
!420 = !DILocation(line: 109, column: 2, scope: !414)
!421 = !DILocalVariable(name: "str2", scope: !414, file: !12, line: 109, type: !60, align: 128)
!422 = !DILocation(line: 110, column: 5, scope: !414)
