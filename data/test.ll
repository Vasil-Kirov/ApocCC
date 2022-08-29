; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%__Internal_Context = type { ptr }
%string = type { ptr, i64 }
%String_Builder = type { [256 x i8], i64, ptr }

@global_var = constant i8 1
@global_var.1 = constant i8 0
@global_var.2 = constant ptr null
@global_var.3 = constant i64 256
@0 = private unnamed_addr constant [14 x i8] c"my big string\00", align 1
@1 = private unnamed_addr constant [11 x i8] c" more text\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"len: %d\0A\00", align 1

declare void @var_arg_start(ptr, ptr)

define i32 @main(ptr %__apoc_internal_context) !dbg !23 {
entry:
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %str = alloca %string, align 16
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %result = alloca %String_Builder, align 16
  %__apoc_internal_context2 = alloca %__Internal_Context, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context2, i32 0, i32 0, !dbg !28
  call void @llvm.memset.p0.i64(ptr align 16 %result, i8 0, i64 272, i1 false), !dbg !28
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context2, i32 0, i32 0, !dbg !28
  store ptr %result, ptr %1, align 8, !dbg !28
  call void @init_builder(ptr %__apoc_internal_context2, ptr @0), !dbg !28
  call void @llvm.dbg.declare(metadata ptr %result, metadata !29, metadata !DIExpression()), !dbg !28
  %2 = load %String_Builder, ptr %result, align 8, !dbg !40
  call void @"overload[x]="(ptr %result, ptr @1), !dbg !40
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !41
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false), !dbg !41
  %4 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !41
  store ptr %str, ptr %4, align 8, !dbg !41
  %5 = load %String_Builder, ptr %result, align 8, !dbg !41
  call void @builder_to_string(ptr %__apoc_internal_context3, ptr %result), !dbg !41
  call void @llvm.dbg.declare(metadata ptr %str, metadata !42, metadata !DIExpression()), !dbg !41
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !48
  %7 = load %string, ptr %str, align 8, !dbg !48
  call void @print(ptr %__apoc_internal_context4, %string %7), !dbg !48
  ret i32 0, !dbg !49
}

define ptr @mem_alloc(ptr %__apoc_internal_context, i64 %size) !dbg !50 {
entry:
  %result = alloca ptr, align 8
  %size2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %size2, align 4
  call void @llvm.dbg.declare(metadata ptr %size2, metadata !54, metadata !DIExpression()), !dbg !55
  store i64 %size, ptr %size2, align 4
  %0 = load i64, ptr %size2, align 4, !dbg !56
  %1 = call ptr @malloc(i64 %0), !dbg !56
  store i64 0, ptr %result, align 4, !dbg !56
  store ptr %1, ptr %result, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %result, metadata !57, metadata !DIExpression()), !dbg !56
  %2 = load ptr, ptr %result, align 8, !dbg !58
  %3 = load i64, ptr %size2, align 4, !dbg !58
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3), !dbg !58
  %5 = load ptr, ptr %result, align 8, !dbg !59
  ret ptr %5, !dbg !59
}

define void @builder_to_string(ptr %__apoc_internal_context, ptr %builder) !dbg !60 {
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
  call void @llvm.dbg.declare(metadata ptr %builder2, metadata !63, metadata !DIExpression()), !dbg !64
  store ptr %builder, ptr %builder2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !65
  call void @llvm.dbg.declare(metadata ptr %out, metadata !66, metadata !DIExpression()), !dbg !65
  store i64 0, ptr %out_len, align 4, !dbg !67
  store i64 0, ptr %out_len, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %out_len, metadata !68, metadata !DIExpression()), !dbg !67
  %0 = load ptr, ptr %builder2, align 8, !dbg !69
  store i64 0, ptr %current, align 4, !dbg !69
  store ptr %0, ptr %current, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %current, metadata !70, metadata !DIExpression()), !dbg !69
  store i64 0, ptr %i, align 4, !dbg !71
  store i64 0, ptr %i, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %i, metadata !72, metadata !DIExpression()), !dbg !73
  br label %for.cond, !dbg !71

for.cond:                                         ; preds = %for.incr, %entry
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !71
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 2, !dbg !71
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !71
  %1 = icmp ne ptr %selected, null, !dbg !71
  br i1 %1, label %for.body, label %for.aftr, !dbg !71

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %out_len, align 4, !dbg !74
  %"derefrence struct3" = load ptr, ptr %current, align 8, !dbg !74
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 1, !dbg !74
  %selected5 = load i64, ptr %"struct member ptr4", align 4, !dbg !74
  %3 = add i64 %2, %selected5, !dbg !74
  store i64 %3, ptr %out_len, align 4, !dbg !74
  %"derefrence struct6" = load ptr, ptr %current, align 8, !dbg !75
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2, !dbg !75
  %selected8 = load ptr, ptr %"struct member ptr7", align 8, !dbg !75
  store ptr %selected8, ptr %current, align 8, !dbg !75
  br label %for.incr, !dbg !76

for.aftr:                                         ; preds = %for.cond
  %4 = load i64, ptr %out_len, align 4, !dbg !77
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !77
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !77
  %selected11 = load i64, ptr %"struct member ptr10", align 4, !dbg !77
  %5 = add i64 %4, %selected11, !dbg !77
  store i64 %5, ptr %out_len, align 4, !dbg !77
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context12, i32 0, i32 0, !dbg !78
  %7 = load i64, ptr %out_len, align 4, !dbg !78
  %8 = call ptr @mem_alloc(ptr %__apoc_internal_context12, i64 %7), !dbg !78
  %"struct member ptr13" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !78
  store ptr %8, ptr %"struct member ptr13", align 8, !dbg !78
  %9 = load i64, ptr %out_len, align 4, !dbg !79
  %"struct member ptr14" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !79
  store i64 %9, ptr %"struct member ptr14", align 4, !dbg !79
  store i64 0, ptr %times, align 4, !dbg !80
  store i64 0, ptr %times, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %times, metadata !81, metadata !DIExpression()), !dbg !80
  store i64 0, ptr %i15, align 4, !dbg !82
  store i64 0, ptr %i15, align 4, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %i15, metadata !83, metadata !DIExpression()), !dbg !84
  br label %for.cond16, !dbg !82

for.incr:                                         ; preds = %for.body
  %10 = load i64, ptr %i, align 4, !dbg !76
  %11 = add i64 %10, 1, !dbg !76
  store i64 %11, ptr %i, align 4, !dbg !76
  br label %for.cond, !dbg !76

for.cond16:                                       ; preds = %for.incr22, %for.aftr
  %"derefrence struct19" = load ptr, ptr %current, align 8, !dbg !82
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 2, !dbg !82
  %selected21 = load ptr, ptr %"struct member ptr20", align 8, !dbg !82
  %12 = icmp ne ptr %selected21, null, !dbg !82
  br i1 %12, label %for.body17, label %for.aftr18, !dbg !82

for.body17:                                       ; preds = %for.cond16
  %13 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context23, i32 0, i32 0, !dbg !85
  %14 = load i64, ptr %times, align 4, !dbg !85
  %15 = mul i64 %14, 256, !dbg !85
  %"struct member ptr24" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !85
  %ptr_load = load ptr, ptr %"struct member ptr24", align 8, !dbg !85
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %15, !dbg !85
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !85
  %16 = load i64, ptr %times, align 4, !dbg !85
  %17 = mul i64 %16, 256, !dbg !85
  %"struct member ptr25" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !85
  %ptr_load26 = load ptr, ptr %"struct member ptr25", align 8, !dbg !85
  %elem_ptr27 = getelementptr i8, ptr %ptr_load26, i64 %17, !dbg !85
  %"derefrence struct28" = load ptr, ptr %current, align 8, !dbg !85
  %"struct member ptr29" = getelementptr inbounds %String_Builder, ptr %"derefrence struct28", i32 0, i32 0, !dbg !85
  %elem_ptr30 = getelementptr [256 x i8], ptr %"struct member ptr29", i64 0, i64 0, !dbg !85
  %indexed_val31 = load i8, ptr %elem_ptr30, align 1, !dbg !85
  %"derefrence struct32" = load ptr, ptr %current, align 8, !dbg !85
  %"struct member ptr33" = getelementptr inbounds %String_Builder, ptr %"derefrence struct32", i32 0, i32 0, !dbg !85
  %elem_ptr34 = getelementptr [256 x i8], ptr %"struct member ptr33", i64 0, i64 0, !dbg !85
  %"derefrence struct35" = load ptr, ptr %current, align 8, !dbg !85
  %"struct member ptr36" = getelementptr inbounds %String_Builder, ptr %"derefrence struct35", i32 0, i32 1, !dbg !85
  %selected37 = load i64, ptr %"struct member ptr36", align 4, !dbg !85
  call void @copy(ptr %__apoc_internal_context23, ptr %elem_ptr27, ptr %elem_ptr34, i64 %selected37), !dbg !85
  %"derefrence struct38" = load ptr, ptr %current, align 8, !dbg !86
  %"struct member ptr39" = getelementptr inbounds %String_Builder, ptr %"derefrence struct38", i32 0, i32 2, !dbg !86
  %selected40 = load ptr, ptr %"struct member ptr39", align 8, !dbg !86
  store ptr %selected40, ptr %current, align 8, !dbg !86
  %18 = load i64, ptr %times, align 4, !dbg !87
  %19 = add i64 %18, 1, !dbg !87
  store i64 %19, ptr %times, align 4, !dbg !87
  br label %for.incr22, !dbg !88

for.aftr18:                                       ; preds = %for.cond16
  %20 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context41, i32 0, i32 0, !dbg !89
  %21 = load i64, ptr %times, align 4, !dbg !89
  %22 = mul i64 %21, 256, !dbg !89
  %"struct member ptr42" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !89
  %ptr_load43 = load ptr, ptr %"struct member ptr42", align 8, !dbg !89
  %elem_ptr44 = getelementptr i8, ptr %ptr_load43, i64 %22, !dbg !89
  %indexed_val45 = load i8, ptr %elem_ptr44, align 1, !dbg !89
  %23 = load i64, ptr %times, align 4, !dbg !89
  %24 = mul i64 %23, 256, !dbg !89
  %"struct member ptr46" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !89
  %ptr_load47 = load ptr, ptr %"struct member ptr46", align 8, !dbg !89
  %elem_ptr48 = getelementptr i8, ptr %ptr_load47, i64 %24, !dbg !89
  %"derefrence struct49" = load ptr, ptr %current, align 8, !dbg !89
  %"struct member ptr50" = getelementptr inbounds %String_Builder, ptr %"derefrence struct49", i32 0, i32 0, !dbg !89
  %elem_ptr51 = getelementptr [256 x i8], ptr %"struct member ptr50", i64 0, i64 0, !dbg !89
  %indexed_val52 = load i8, ptr %elem_ptr51, align 1, !dbg !89
  %"derefrence struct53" = load ptr, ptr %current, align 8, !dbg !89
  %"struct member ptr54" = getelementptr inbounds %String_Builder, ptr %"derefrence struct53", i32 0, i32 0, !dbg !89
  %elem_ptr55 = getelementptr [256 x i8], ptr %"struct member ptr54", i64 0, i64 0, !dbg !89
  %"derefrence struct56" = load ptr, ptr %current, align 8, !dbg !89
  %"struct member ptr57" = getelementptr inbounds %String_Builder, ptr %"derefrence struct56", i32 0, i32 1, !dbg !89
  %selected58 = load i64, ptr %"struct member ptr57", align 4, !dbg !89
  call void @copy(ptr %__apoc_internal_context41, ptr %elem_ptr48, ptr %elem_ptr55, i64 %selected58), !dbg !89
  %"derefrence struct59" = load ptr, ptr %current, align 8, !dbg !90
  %"struct member ptr60" = getelementptr inbounds %String_Builder, ptr %"derefrence struct59", i32 0, i32 1, !dbg !90
  %selected61 = load i64, ptr %"struct member ptr60", align 4, !dbg !90
  %25 = call i32 (ptr, ...) @printf(ptr @2, i64 %selected61), !dbg !90
  %26 = load i64, ptr %out_len, align 4, !dbg !91
  %"derefrence struct62" = load ptr, ptr %builder2, align 8, !dbg !91
  %"struct member ptr63" = getelementptr inbounds %String_Builder, ptr %"derefrence struct62", i32 0, i32 1, !dbg !91
  %selected64 = load i64, ptr %"struct member ptr63", align 4, !dbg !91
  %27 = add i64 %26, %selected64, !dbg !91
  store i64 %27, ptr %out_len, align 4, !dbg !91
  %28 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !92
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %28, i32 0, i32 0, !dbg !92
  %29 = load ptr, ptr %ret_ptr, align 8, !dbg !92
  %30 = load %string, ptr %out, align 8, !dbg !92
  store %string %30, ptr %29, align 8, !dbg !92
  ret void, !dbg !92

for.incr22:                                       ; preds = %for.body17
  %31 = load i64, ptr %i15, align 4, !dbg !88
  %32 = add i64 %31, 1, !dbg !88
  store i64 %32, ptr %i15, align 4, !dbg !88
  br label %for.cond16, !dbg !88
}

define void @init_builder(ptr %__apoc_internal_context, ptr %text) !dbg !93 {
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
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !96, metadata !DIExpression()), !dbg !97
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 272, i1 false), !dbg !98
  call void @llvm.dbg.declare(metadata ptr %out, metadata !99, metadata !DIExpression()), !dbg !98
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %out, i32 0, i32 1, !dbg !100
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !100
  %0 = add i64 %selected, 1, !dbg !100
  %"struct member ptr3" = getelementptr inbounds %String_Builder, ptr %out, i32 0, i32 1, !dbg !100
  store i64 %0, ptr %"struct member ptr3", align 4, !dbg !100
  %1 = load %String_Builder, ptr %out, align 8, !dbg !101
  store i64 0, ptr %current, align 4, !dbg !101
  store ptr %out, ptr %current, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata ptr %current, metadata !102, metadata !DIExpression()), !dbg !101
  store i64 0, ptr %times, align 4, !dbg !103
  store i64 0, ptr %times, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata ptr %times, metadata !104, metadata !DIExpression()), !dbg !103
  store i64 0, ptr %i, align 4, !dbg !105
  store i64 0, ptr %i, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %i, metadata !106, metadata !DIExpression()), !dbg !107
  br label %for.cond, !dbg !105

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 4, !dbg !105
  %3 = load i64, ptr %times, align 4, !dbg !105
  %4 = mul i64 %3, 256, !dbg !105
  %5 = add i64 %2, %4, !dbg !105
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !105
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5, !dbg !105
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !105
  %6 = icmp ne i8 %indexed_val, 0, !dbg !105
  br i1 %6, label %for.body, label %for.aftr, !dbg !105

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %i, align 4, !dbg !108
  %8 = load i64, ptr %times, align 4, !dbg !108
  %9 = mul i64 %8, 256, !dbg !108
  %10 = add i64 %7, %9, !dbg !108
  %ptr_load4 = load ptr, ptr %text2, align 8, !dbg !108
  %elem_ptr5 = getelementptr i8, ptr %ptr_load4, i64 %10, !dbg !108
  %indexed_val6 = load i8, ptr %elem_ptr5, align 1, !dbg !108
  %11 = load i64, ptr %i, align 4, !dbg !108
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !108
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 0, !dbg !108
  %elem_ptr8 = getelementptr [256 x i8], ptr %"struct member ptr7", i64 0, i64 %11, !dbg !108
  store i8 %indexed_val6, ptr %elem_ptr8, align 1, !dbg !108
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !109
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !109
  %selected11 = load i64, ptr %"struct member ptr10", align 4, !dbg !109
  %12 = add i64 %selected11, 1, !dbg !109
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !109
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 1, !dbg !109
  store i64 %12, ptr %"struct member ptr13", align 4, !dbg !109
  %13 = load i64, ptr %i, align 4, !dbg !110
  %14 = icmp eq i64 %13, 256, !dbg !110
  br i1 %14, label %if.true, label %for.incr, !dbg !111

for.aftr:                                         ; preds = %for.cond
  %15 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !112
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %15, i32 0, i32 0, !dbg !112
  %16 = load ptr, ptr %ret_ptr, align 8, !dbg !112
  %17 = load %String_Builder, ptr %out, align 8, !dbg !112
  store %String_Builder %17, ptr %16, align 8, !dbg !112
  ret void, !dbg !112

for.incr:                                         ; preds = %for.body, %if.true
  %18 = load i64, ptr %i, align 4, !dbg !111
  %19 = add i64 %18, 1, !dbg !111
  store i64 %19, ptr %i, align 4, !dbg !111
  br label %for.cond, !dbg !111

if.true:                                          ; preds = %for.body
  store i64 0, ptr %i, align 4, !dbg !113
  %20 = load i64, ptr %times, align 4, !dbg !114
  %21 = add i64 %20, 1, !dbg !114
  store i64 %21, ptr %times, align 4, !dbg !114
  %22 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context14, i32 0, i32 0, !dbg !115
  %23 = call ptr @mem_alloc(ptr %__apoc_internal_context14, i64 272), !dbg !115
  %"derefrence struct15" = load ptr, ptr %current, align 8, !dbg !115
  %"struct member ptr16" = getelementptr inbounds %String_Builder, ptr %"derefrence struct15", i32 0, i32 2, !dbg !115
  store ptr %23, ptr %"struct member ptr16", align 8, !dbg !115
  %"derefrence struct17" = load ptr, ptr %current, align 8, !dbg !116
  %"struct member ptr18" = getelementptr inbounds %String_Builder, ptr %"derefrence struct17", i32 0, i32 2, !dbg !116
  %selected19 = load ptr, ptr %"struct member ptr18", align 8, !dbg !116
  store ptr %selected19, ptr %current, align 8, !dbg !116
  br label %for.incr, !dbg !117
}

define i8 @compare(ptr %__apoc_internal_context, %string %str1, %string %str2) !dbg !118 {
entry:
  %i = alloca i64, align 8
  %str23 = alloca %string, align 16
  %str12 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str12, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str12, metadata !121, metadata !DIExpression()), !dbg !122
  store %string %str1, ptr %str12, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str23, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str23, metadata !123, metadata !DIExpression()), !dbg !122
  store %string %str2, ptr %str23, align 8
  %"struct member ptr" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1, !dbg !124
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !124
  %"struct member ptr4" = getelementptr inbounds %string, ptr %str23, i32 0, i32 1, !dbg !124
  %selected5 = load i64, ptr %"struct member ptr4", align 4, !dbg !124
  %0 = icmp ne i64 %selected, %selected5, !dbg !124
  br i1 %0, label %if.true, label %if.aftr, !dbg !125

if.true:                                          ; preds = %entry
  ret i8 0, !dbg !126

if.aftr:                                          ; preds = %entry
  store i64 0, ptr %i, align 4, !dbg !125
  store i64 0, ptr %i, align 4, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %i, metadata !127, metadata !DIExpression()), !dbg !128
  br label %for.cond, !dbg !125

for.cond:                                         ; preds = %for.incr, %if.aftr
  %1 = load i64, ptr %i, align 4, !dbg !125
  %"struct member ptr6" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1, !dbg !125
  %selected7 = load i64, ptr %"struct member ptr6", align 4, !dbg !125
  %2 = icmp slt i64 %1, %selected7, !dbg !125
  br i1 %2, label %for.body, label %for.aftr, !dbg !125

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 4, !dbg !129
  %"struct member ptr8" = getelementptr inbounds %string, ptr %str12, i32 0, i32 0, !dbg !129
  %ptr_load = load ptr, ptr %"struct member ptr8", align 8, !dbg !129
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %3, !dbg !129
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !129
  %4 = load i64, ptr %i, align 4, !dbg !129
  %"struct member ptr9" = getelementptr inbounds %string, ptr %str23, i32 0, i32 0, !dbg !129
  %ptr_load10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !129
  %elem_ptr11 = getelementptr i8, ptr %ptr_load10, i64 %4, !dbg !129
  %indexed_val12 = load i8, ptr %elem_ptr11, align 1, !dbg !129
  %5 = icmp ne i8 %indexed_val, %indexed_val12, !dbg !129
  br i1 %5, label %if.true13, label %for.incr, !dbg !129

for.aftr:                                         ; preds = %for.cond
  ret i8 1, !dbg !130

for.incr:                                         ; preds = %for.body
  %6 = load i64, ptr %i, align 4, !dbg !129
  %7 = add i64 %6, 1, !dbg !129
  store i64 %7, ptr %i, align 4, !dbg !129
  br label %for.cond, !dbg !129

if.true13:                                        ; preds = %for.body
  ret i8 0, !dbg !131
}

define void @to_string(ptr %__apoc_internal_context, ptr %text) !dbg !132 {
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
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !133, metadata !DIExpression()), !dbg !134
  store ptr %text, ptr %text2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !135
  %1 = load ptr, ptr %text2, align 8, !dbg !135
  %2 = call i64 @len(ptr %__apoc_internal_context3, ptr %1), !dbg !135
  store i64 0, ptr %text_len, align 4, !dbg !135
  store i64 %2, ptr %text_len, align 4, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !136, metadata !DIExpression()), !dbg !135
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !137
  %4 = load i64, ptr %text_len, align 4, !dbg !137
  %5 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %4), !dbg !137
  store i64 0, ptr %allocated, align 4, !dbg !137
  store ptr %5, ptr %allocated, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !138, metadata !DIExpression()), !dbg !137
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0, !dbg !139
  %7 = load ptr, ptr %allocated, align 8, !dbg !139
  %8 = load ptr, ptr %text2, align 8, !dbg !139
  %9 = load i64, ptr %text_len, align 4, !dbg !139
  call void @copy(ptr %__apoc_internal_context5, ptr %7, ptr %8, i64 %9), !dbg !139
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false), !dbg !140
  %10 = load ptr, ptr %allocated, align 8, !dbg !140
  %11 = getelementptr inbounds %string, ptr %str, i32 0, i32 0, !dbg !140
  store ptr %10, ptr %11, align 8, !dbg !140
  %12 = load i64, ptr %text_len, align 4, !dbg !140
  %13 = getelementptr inbounds %string, ptr %str, i32 0, i32 1, !dbg !140
  store i64 %12, ptr %13, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %str, metadata !141, metadata !DIExpression()), !dbg !140
  %14 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !142
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %14, i32 0, i32 0, !dbg !142
  %15 = load ptr, ptr %ret_ptr, align 8, !dbg !142
  %16 = load %string, ptr %str, align 8, !dbg !142
  store %string %16, ptr %15, align 8, !dbg !142
  ret void, !dbg !142
}

define void @terminate_string(ptr %__apoc_internal_context, %string %str) !dbg !143 {
entry:
  %__apoc_internal_context8 = alloca %__Internal_Context, align 16
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %out = alloca %string, align 16
  %str2 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str2, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !146, metadata !DIExpression()), !dbg !147
  store %string %str, ptr %str2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !148
  call void @llvm.dbg.declare(metadata ptr %out, metadata !149, metadata !DIExpression()), !dbg !148
  %"struct member ptr" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !150
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !150
  %0 = add i64 %selected, 1, !dbg !150
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !150
  store i64 %0, ptr %"struct member ptr3", align 4, !dbg !150
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !151
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !151
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !151
  %2 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6), !dbg !151
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !151
  store ptr %2, ptr %"struct member ptr7", align 8, !dbg !151
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context8, i32 0, i32 0, !dbg !152
  %"struct member ptr9" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !152
  %selected10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !152
  %"struct member ptr11" = getelementptr inbounds %string, ptr %str2, i32 0, i32 0, !dbg !152
  %selected12 = load ptr, ptr %"struct member ptr11", align 8, !dbg !152
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !152
  %selected14 = load i64, ptr %"struct member ptr13", align 4, !dbg !152
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14), !dbg !152
  %"struct member ptr15" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !153
  %selected16 = load i64, ptr %"struct member ptr15", align 4, !dbg !153
  %"struct member ptr17" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !153
  %ptr_load = load ptr, ptr %"struct member ptr17", align 8, !dbg !153
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected16, !dbg !153
  store i8 0, ptr %elem_ptr, align 1, !dbg !153
  %4 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !154
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %4, i32 0, i32 0, !dbg !154
  %5 = load ptr, ptr %ret_ptr, align 8, !dbg !154
  %6 = load %string, ptr %out, align 8, !dbg !154
  store %string %6, ptr %5, align 8, !dbg !154
  ret void, !dbg !154
}

define void @print(ptr %__apoc_internal_context, %string %str) !dbg !155 {
entry:
  %to_print = alloca %string, align 16
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %str2 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str2, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !156, metadata !DIExpression()), !dbg !157
  store %string %str, ptr %str2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !158
  call void @llvm.memset.p0.i64(ptr align 16 %to_print, i8 0, i64 16, i1 false), !dbg !158
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !158
  store ptr %to_print, ptr %1, align 8, !dbg !158
  %2 = load %string, ptr %str2, align 8, !dbg !158
  call void @terminate_string(ptr %__apoc_internal_context3, %string %2), !dbg !158
  call void @llvm.dbg.declare(metadata ptr %to_print, metadata !159, metadata !DIExpression()), !dbg !158
  %"struct member ptr" = getelementptr inbounds %string, ptr %to_print, i32 0, i32 0, !dbg !160
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !160
  %3 = call i32 (ptr, ...) @printf(ptr %selected), !dbg !160
  ret void
}

define void @copy(ptr %__apoc_internal_context, ptr %dst, ptr %src, i64 %size) !dbg !161 {
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
  call void @llvm.dbg.declare(metadata ptr %dst2, metadata !164, metadata !DIExpression()), !dbg !165
  store ptr %dst, ptr %dst2, align 8
  store i64 0, ptr %src3, align 4
  call void @llvm.dbg.declare(metadata ptr %src3, metadata !166, metadata !DIExpression()), !dbg !165
  store ptr %src, ptr %src3, align 8
  store i64 0, ptr %size4, align 4
  call void @llvm.dbg.declare(metadata ptr %size4, metadata !167, metadata !DIExpression()), !dbg !165
  store i64 %size, ptr %size4, align 4
  %0 = load ptr, ptr %dst2, align 8, !dbg !168
  store i64 0, ptr %a0, align 4, !dbg !168
  store ptr %0, ptr %a0, align 8, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %a0, metadata !169, metadata !DIExpression()), !dbg !168
  %1 = load ptr, ptr %src3, align 8, !dbg !170
  store i64 0, ptr %a1, align 4, !dbg !170
  store ptr %1, ptr %a1, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !171, metadata !DIExpression()), !dbg !170
  store i64 0, ptr %i, align 4, !dbg !172
  store i64 0, ptr %i, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %i, metadata !173, metadata !DIExpression()), !dbg !174
  br label %for.cond, !dbg !172

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 4, !dbg !172
  %3 = load i64, ptr %size4, align 4, !dbg !172
  %4 = icmp slt i64 %2, %3, !dbg !172
  br i1 %4, label %for.body, label %for.aftr, !dbg !172

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %i, align 4, !dbg !175
  %ptr_load = load ptr, ptr %a1, align 8, !dbg !175
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5, !dbg !175
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !175
  %6 = load i64, ptr %i, align 4, !dbg !175
  %ptr_load5 = load ptr, ptr %a0, align 8, !dbg !175
  %elem_ptr6 = getelementptr i8, ptr %ptr_load5, i64 %6, !dbg !175
  store i8 %indexed_val, ptr %elem_ptr6, align 1, !dbg !175
  br label %for.incr, !dbg !176

for.aftr:                                         ; preds = %for.cond
  ret void

for.incr:                                         ; preds = %for.body
  %7 = load i64, ptr %i, align 4, !dbg !176
  %8 = add i64 %7, 1, !dbg !176
  store i64 %8, ptr %i, align 4, !dbg !176
  br label %for.cond, !dbg !176
}

define i64 @len(ptr %__apoc_internal_context, ptr %text) !dbg !177 {
entry:
  %result = alloca i64, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !180, metadata !DIExpression()), !dbg !181
  store ptr %text, ptr %text2, align 8
  store i64 0, ptr %result, align 4, !dbg !182
  store i64 0, ptr %result, align 4, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %result, metadata !183, metadata !DIExpression()), !dbg !182
  store i64 0, ptr %result, align 4, !dbg !184
  br label %for.cond, !dbg !184

for.cond:                                         ; preds = %for.incr, %entry
  %0 = load i64, ptr %result, align 4, !dbg !184
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !184
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !184
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !184
  %1 = icmp ne i8 %indexed_val, 0, !dbg !184
  br i1 %1, label %for.body, label %for.aftr, !dbg !184

for.body:                                         ; preds = %for.cond
  br label %for.incr, !dbg !185

for.aftr:                                         ; preds = %for.cond
  %2 = load i64, ptr %result, align 4, !dbg !186
  ret i64 %2, !dbg !186

for.incr:                                         ; preds = %for.body
  %3 = load i64, ptr %result, align 4, !dbg !185
  %4 = add i64 %3, 1, !dbg !185
  store i64 %4, ptr %result, align 4, !dbg !185
  br label %for.cond, !dbg !185
}

declare ptr @malloc(i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @scanf(ptr, ...)

declare i32 @printf(ptr, ...)

declare i32 @atoi(ptr)

declare void @srand(i32)

declare i32 @rand()

declare i32 @puts(ptr)

; Function Attrs: alwaysinline
define i8 @"overload[]"(%string %str, i64 %index) #0 !dbg !187 {
entry:
  %index2 = alloca i64, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !190, metadata !DIExpression()), !dbg !191
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %index2, align 4
  call void @llvm.dbg.declare(metadata ptr %index2, metadata !192, metadata !DIExpression()), !dbg !191
  store i64 %index, ptr %index2, align 4
  %0 = load i64, ptr %index2, align 4, !dbg !193
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0, !dbg !193
  %ptr_load = load ptr, ptr %"struct member ptr", align 8, !dbg !193
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !193
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !193
  ret i8 %indexed_val, !dbg !193
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline
define %string @"overload+"(%string %str, ptr %text) #0 !dbg !194 {
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
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !197, metadata !DIExpression()), !dbg !198
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !199, metadata !DIExpression()), !dbg !198
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !200
  call void @llvm.dbg.declare(metadata ptr %out, metadata !201, metadata !DIExpression()), !dbg !200
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !202
  %1 = load ptr, ptr %text2, align 8, !dbg !202
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1), !dbg !202
  store i64 0, ptr %text_len, align 4, !dbg !202
  store i64 %2, ptr %text_len, align 4, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !203, metadata !DIExpression()), !dbg !202
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !204
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !204
  %3 = load i64, ptr %text_len, align 4, !dbg !204
  %4 = add i64 %selected, %3, !dbg !204
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !204
  store i64 %4, ptr %"struct member ptr3", align 4, !dbg !204
  %5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0, !dbg !205
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !205
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !205
  %6 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6), !dbg !205
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !205
  store ptr %6, ptr %"struct member ptr7", align 8, !dbg !205
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context8, i32 0, i32 0, !dbg !206
  %"struct member ptr9" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !206
  %selected10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !206
  %"struct member ptr11" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0, !dbg !206
  %selected12 = load ptr, ptr %"struct member ptr11", align 8, !dbg !206
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !206
  %selected14 = load i64, ptr %"struct member ptr13", align 4, !dbg !206
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14), !dbg !206
  %8 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context15, i32 0, i32 0, !dbg !207
  %"struct member ptr16" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !207
  %selected17 = load i64, ptr %"struct member ptr16", align 4, !dbg !207
  %"struct member ptr18" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !207
  %ptr_load = load ptr, ptr %"struct member ptr18", align 8, !dbg !207
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected17, !dbg !207
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !207
  %"struct member ptr19" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !207
  %selected20 = load i64, ptr %"struct member ptr19", align 4, !dbg !207
  %"struct member ptr21" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !207
  %ptr_load22 = load ptr, ptr %"struct member ptr21", align 8, !dbg !207
  %elem_ptr23 = getelementptr i8, ptr %ptr_load22, i64 %selected20, !dbg !207
  %9 = load ptr, ptr %text2, align 8, !dbg !207
  %10 = load i64, ptr %text_len, align 4, !dbg !207
  call void @copy(ptr %__apoc_internal_context15, ptr %elem_ptr23, ptr %9, i64 %10), !dbg !207
  %11 = load %string, ptr %out, align 8, !dbg !208
  ret %string %11, !dbg !208
}

; Function Attrs: alwaysinline
define void @"overload[x]="(ptr %str, ptr %text) #0 !dbg !209 {
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
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !212, metadata !DIExpression()), !dbg !213
  store ptr %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !214, metadata !DIExpression()), !dbg !213
  store ptr %text, ptr %text2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !215
  %1 = load ptr, ptr %text2, align 8, !dbg !215
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1), !dbg !215
  store i64 0, ptr %text_len, align 4, !dbg !215
  store i64 %2, ptr %text_len, align 4, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !216, metadata !DIExpression()), !dbg !215
  %3 = load i64, ptr %text_len, align 4, !dbg !217
  %"derefrence struct" = load ptr, ptr %str1, align 8, !dbg !217
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1, !dbg !217
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !217
  %4 = sdiv i64 %3, %selected, !dbg !217
  store i64 0, ptr %times, align 4, !dbg !217
  store i64 %4, ptr %times, align 4, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %times, metadata !218, metadata !DIExpression()), !dbg !217
  %5 = load ptr, ptr %str1, align 8, !dbg !219
  store i64 0, ptr %current, align 4, !dbg !219
  store ptr %5, ptr %current, align 8, !dbg !219
  call void @llvm.dbg.declare(metadata ptr %current, metadata !220, metadata !DIExpression()), !dbg !219
  store i64 0, ptr %i, align 4, !dbg !221
  store i64 0, ptr %i, align 4, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %i, metadata !222, metadata !DIExpression()), !dbg !223
  br label %for.cond, !dbg !221

for.cond:                                         ; preds = %for.incr, %entry
  %6 = load i64, ptr %i, align 4, !dbg !221
  %7 = sub i64 %6, 1, !dbg !221
  %8 = load i64, ptr %times, align 4, !dbg !221
  %9 = icmp slt i64 %7, %8, !dbg !221
  br i1 %9, label %for.body, label %for.aftr, !dbg !221

for.body:                                         ; preds = %for.cond
  %10 = load i64, ptr %text_len, align 4, !dbg !224
  store i64 0, ptr %copy_size, align 4, !dbg !224
  store i64 %10, ptr %copy_size, align 4, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !225, metadata !DIExpression()), !dbg !224
  %11 = load i64, ptr %copy_size, align 4, !dbg !226
  %12 = icmp sgt i64 %11, 256, !dbg !226
  br i1 %12, label %if.true, label %for.incr, !dbg !227

for.aftr:                                         ; preds = %for.cond
  ret void

for.incr:                                         ; preds = %for.body, %if.true
  %13 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !228
  %"derefrence struct4" = load ptr, ptr %current, align 8, !dbg !228
  %"struct member ptr5" = getelementptr inbounds %String_Builder, ptr %"derefrence struct4", i32 0, i32 1, !dbg !228
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !228
  %14 = sub i64 %selected6, 1, !dbg !228
  %"derefrence struct7" = load ptr, ptr %current, align 8, !dbg !228
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %"derefrence struct7", i32 0, i32 0, !dbg !228
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr8", i64 0, i64 %14, !dbg !228
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !228
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !228
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !228
  %selected11 = load i64, ptr %"struct member ptr10", align 4, !dbg !228
  %15 = sub i64 %selected11, 1, !dbg !228
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !228
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 0, !dbg !228
  %elem_ptr14 = getelementptr [256 x i8], ptr %"struct member ptr13", i64 0, i64 %15, !dbg !228
  %16 = load i64, ptr %i, align 4, !dbg !228
  %17 = mul i64 %16, 256, !dbg !228
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !228
  %elem_ptr15 = getelementptr i8, ptr %ptr_load, i64 %17, !dbg !228
  %indexed_val16 = load i8, ptr %elem_ptr15, align 1, !dbg !228
  %18 = load i64, ptr %i, align 4, !dbg !228
  %19 = mul i64 %18, 256, !dbg !228
  %ptr_load17 = load ptr, ptr %text2, align 8, !dbg !228
  %elem_ptr18 = getelementptr i8, ptr %ptr_load17, i64 %19, !dbg !228
  %20 = load i64, ptr %copy_size, align 4, !dbg !228
  call void @copy(ptr %__apoc_internal_context3, ptr %elem_ptr14, ptr %elem_ptr18, i64 %20), !dbg !228
  %"derefrence struct19" = load ptr, ptr %current, align 8, !dbg !229
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 1, !dbg !229
  %selected21 = load i64, ptr %"struct member ptr20", align 4, !dbg !229
  %21 = load i64, ptr %copy_size, align 4, !dbg !229
  %22 = add i64 %selected21, %21, !dbg !229
  %"derefrence struct22" = load ptr, ptr %current, align 8, !dbg !229
  %"struct member ptr23" = getelementptr inbounds %String_Builder, ptr %"derefrence struct22", i32 0, i32 1, !dbg !229
  store i64 %22, ptr %"struct member ptr23", align 4, !dbg !229
  %23 = load i64, ptr %text_len, align 4, !dbg !230
  %24 = sub i64 %23, 256, !dbg !230
  store i64 %24, ptr %text_len, align 4, !dbg !230
  %"derefrence struct24" = load ptr, ptr %current, align 8, !dbg !231
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 2, !dbg !231
  %selected26 = load ptr, ptr %"struct member ptr25", align 8, !dbg !231
  store ptr %selected26, ptr %current, align 8, !dbg !231
  %25 = load i64, ptr %i, align 4, !dbg !227
  %26 = add i64 %25, 1, !dbg !227
  store i64 %26, ptr %i, align 4, !dbg !227
  br label %for.cond, !dbg !227

if.true:                                          ; preds = %for.body
  store i64 256, ptr %copy_size, align 4, !dbg !232
  br label %for.incr, !dbg !232
}

; Function Attrs: alwaysinline
define i8 @overload(%string %str, ptr %text) #0 !dbg !233 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %__apoc_internal_context = alloca %__Internal_Context, align 16
  %str2 = alloca %string, align 16
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !236, metadata !DIExpression()), !dbg !237
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !238, metadata !DIExpression()), !dbg !237
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str2, i8 0, i64 16, i1 false), !dbg !239
  %0 = load ptr, ptr %text2, align 8, !dbg !239
  %1 = getelementptr inbounds %string, ptr %str2, i32 0, i32 0, !dbg !239
  store ptr %0, ptr %1, align 8, !dbg !239
  %2 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0, !dbg !239
  %3 = load ptr, ptr %text2, align 8, !dbg !239
  %4 = call i64 @len(ptr %__apoc_internal_context, ptr %3), !dbg !239
  %5 = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !239
  store i64 %4, ptr %5, align 4, !dbg !239
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !240, metadata !DIExpression()), !dbg !239
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0, !dbg !241
  %7 = load %string, ptr %str1, align 8, !dbg !241
  %8 = load %string, ptr %str2, align 8, !dbg !241
  %9 = call i8 @compare(ptr %__apoc_internal_context3, %string %7, %string %8), !dbg !241
  ret i8 %9, !dbg !241
}

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!21, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "Test.apoc", directory: "W:\\Apocalypse")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "Basic.apoc", directory: "W:\\Apocalypse\\Standard")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "String.apoc", directory: "W:\\Apocalypse\\Standard")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !8)
!7 = !DIFile(filename: "C_Standard.apoc", directory: "W:\\Apocalypse\\Standard")
!8 = !{!9, !12, !14, !18}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "true", scope: !3, file: !3, line: 2, type: !11, isLocal: true, isDefinition: true)
!11 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "false", scope: !3, file: !3, line: 3, type: !11, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "null", scope: !3, file: !3, line: 4, type: !16, isLocal: true, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "STRING_BUFFER_SIZE", scope: !5, file: !5, line: 2, type: !20, isLocal: true, isDefinition: true)
!20 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 2, !"CodeView", i32 1}
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !24, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!27 = !{}
!28 = !DILocation(line: 6, column: 2, scope: !23)
!29 = !DILocalVariable(name: "result", scope: !23, file: !1, line: 6, type: !30, align: 128)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "String_Builder", scope: !5, file: !5, line: 10, size: 2176, align: 2048, elements: !31)
!31 = !{!32, !37, !38}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5, file: !5, line: 12, baseType: !33, size: 2048, align: 128)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, align: 8, elements: !35)
!34 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DISubrange(count: 256, lowerBound: 0)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5, file: !5, line: 13, baseType: !20, size: 64, align: 64, offset: 2048)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !5, line: 14, baseType: !39, size: 64, align: 64, offset: 2112)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!40 = !DILocation(line: 7, column: 2, scope: !23)
!41 = !DILocation(line: 8, column: 2, scope: !23)
!42 = !DILocalVariable(name: "str", scope: !23, file: !1, line: 8, type: !43, align: 128)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !5, file: !5, line: 4, size: 128, align: 64, elements: !44)
!44 = !{!45, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !5, file: !5, line: 6, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5, file: !5, line: 7, baseType: !20, size: 64, align: 64, offset: 64)
!48 = !DILocation(line: 9, column: 7, scope: !23)
!49 = !DILocation(line: 10, column: 5, scope: !23)
!50 = distinct !DISubprogram(name: "mem_alloc", scope: !3, file: !3, line: 66, type: !51, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!51 = !DISubroutineType(types: !52)
!52 = !{!16, !53}
!53 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!54 = !DILocalVariable(name: "size", arg: 1, scope: !50, file: !3, line: 66, type: !53)
!55 = !DILocation(line: 66, scope: !50)
!56 = !DILocation(line: 68, column: 2, scope: !50)
!57 = !DILocalVariable(name: "result", scope: !50, file: !3, line: 68, type: !16, align: 64)
!58 = !DILocation(line: 69, column: 8, scope: !50)
!59 = !DILocation(line: 70, column: 5, scope: !50)
!60 = distinct !DISubprogram(name: "builder_to_string", scope: !5, file: !5, line: 17, type: !61, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!61 = !DISubroutineType(types: !62)
!62 = !{!17, !39}
!63 = !DILocalVariable(name: "builder", arg: 1, scope: !60, file: !5, line: 17, type: !39)
!64 = !DILocation(line: 17, scope: !60)
!65 = !DILocation(line: 19, column: 2, scope: !60)
!66 = !DILocalVariable(name: "out", scope: !60, file: !5, line: 19, type: !43, align: 128)
!67 = !DILocation(line: 20, column: 2, scope: !60)
!68 = !DILocalVariable(name: "out_len", scope: !60, file: !5, line: 20, type: !20, align: 64)
!69 = !DILocation(line: 21, column: 2, scope: !60)
!70 = !DILocalVariable(name: "current", scope: !60, file: !5, line: 21, type: !39, align: 64)
!71 = !DILocation(line: 22, column: 2, scope: !60)
!72 = !DILocalVariable(name: "i", scope: !60, file: !5, line: 22, type: !20, align: 64)
!73 = !DILocation(line: 22, column: 6, scope: !60)
!74 = !DILocation(line: 23, column: 3, scope: !60)
!75 = !DILocation(line: 24, column: 3, scope: !60)
!76 = !DILocation(line: 25, column: 2, scope: !60)
!77 = !DILocation(line: 26, column: 2, scope: !60)
!78 = !DILocation(line: 27, column: 2, scope: !60)
!79 = !DILocation(line: 28, column: 2, scope: !60)
!80 = !DILocation(line: 30, column: 2, scope: !60)
!81 = !DILocalVariable(name: "times", scope: !60, file: !5, line: 30, type: !20, align: 64)
!82 = !DILocation(line: 31, column: 2, scope: !60)
!83 = !DILocalVariable(name: "i", scope: !60, file: !5, line: 31, type: !20, align: 64)
!84 = !DILocation(line: 31, column: 6, scope: !60)
!85 = !DILocation(line: 32, column: 7, scope: !60)
!86 = !DILocation(line: 33, column: 3, scope: !60)
!87 = !DILocation(line: 34, column: 3, scope: !60)
!88 = !DILocation(line: 35, column: 2, scope: !60)
!89 = !DILocation(line: 36, column: 6, scope: !60)
!90 = !DILocation(line: 37, column: 8, scope: !60)
!91 = !DILocation(line: 38, column: 2, scope: !60)
!92 = !DILocation(line: 39, column: 5, scope: !60)
!93 = distinct !DISubprogram(name: "init_builder", scope: !5, file: !5, line: 42, type: !94, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!94 = !DISubroutineType(types: !95)
!95 = !{!17, !46}
!96 = !DILocalVariable(name: "text", arg: 1, scope: !93, file: !5, line: 42, type: !46)
!97 = !DILocation(line: 42, scope: !93)
!98 = !DILocation(line: 44, column: 2, scope: !93)
!99 = !DILocalVariable(name: "out", scope: !93, file: !5, line: 44, type: !30, align: 128)
!100 = !DILocation(line: 45, column: 2, scope: !93)
!101 = !DILocation(line: 46, column: 2, scope: !93)
!102 = !DILocalVariable(name: "current", scope: !93, file: !5, line: 46, type: !39, align: 64)
!103 = !DILocation(line: 47, column: 2, scope: !93)
!104 = !DILocalVariable(name: "times", scope: !93, file: !5, line: 47, type: !20, align: 64)
!105 = !DILocation(line: 48, column: 2, scope: !93)
!106 = !DILocalVariable(name: "i", scope: !93, file: !5, line: 48, type: !20, align: 64)
!107 = !DILocation(line: 48, column: 6, scope: !93)
!108 = !DILocation(line: 49, column: 3, scope: !93)
!109 = !DILocation(line: 50, column: 3, scope: !93)
!110 = !DILocation(line: 51, column: 3, scope: !93)
!111 = !DILocation(line: 57, column: 2, scope: !93)
!112 = !DILocation(line: 58, column: 5, scope: !93)
!113 = !DILocation(line: 52, column: 4, scope: !93)
!114 = !DILocation(line: 53, column: 4, scope: !93)
!115 = !DILocation(line: 54, column: 4, scope: !93)
!116 = !DILocation(line: 55, column: 4, scope: !93)
!117 = !DILocation(line: 56, column: 3, scope: !93)
!118 = distinct !DISubprogram(name: "compare", scope: !5, file: !5, line: 99, type: !119, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!119 = !DISubroutineType(types: !120)
!120 = !{!11, !43, !43}
!121 = !DILocalVariable(name: "str1", arg: 1, scope: !118, file: !5, line: 99, type: !43)
!122 = !DILocation(line: 99, scope: !118)
!123 = !DILocalVariable(name: "str2", arg: 2, scope: !118, file: !5, line: 99, type: !43)
!124 = !DILocation(line: 101, column: 2, scope: !118)
!125 = !DILocation(line: 104, column: 2, scope: !118)
!126 = !DILocation(line: 102, column: 6, scope: !118)
!127 = !DILocalVariable(name: "i", scope: !118, file: !5, line: 104, type: !20, align: 64)
!128 = !DILocation(line: 104, column: 6, scope: !118)
!129 = !DILocation(line: 105, column: 3, scope: !118)
!130 = !DILocation(line: 106, column: 5, scope: !118)
!131 = !DILocation(line: 105, column: 38, scope: !118)
!132 = distinct !DISubprogram(name: "to_string", scope: !5, file: !5, line: 109, type: !94, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!133 = !DILocalVariable(name: "text", arg: 1, scope: !132, file: !5, line: 109, type: !46)
!134 = !DILocation(line: 109, scope: !132)
!135 = !DILocation(line: 111, column: 2, scope: !132)
!136 = !DILocalVariable(name: "text_len", scope: !132, file: !5, line: 111, type: !20, align: 64)
!137 = !DILocation(line: 112, column: 2, scope: !132)
!138 = !DILocalVariable(name: "allocated", scope: !132, file: !5, line: 112, type: !16, align: 64)
!139 = !DILocation(line: 113, column: 6, scope: !132)
!140 = !DILocation(line: 114, column: 2, scope: !132)
!141 = !DILocalVariable(name: "str", scope: !132, file: !5, line: 114, type: !43, align: 128)
!142 = !DILocation(line: 115, column: 5, scope: !132)
!143 = distinct !DISubprogram(name: "terminate_string", scope: !5, file: !5, line: 118, type: !144, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!144 = !DISubroutineType(types: !145)
!145 = !{!17, !43}
!146 = !DILocalVariable(name: "str", arg: 1, scope: !143, file: !5, line: 118, type: !43)
!147 = !DILocation(line: 118, scope: !143)
!148 = !DILocation(line: 120, column: 2, scope: !143)
!149 = !DILocalVariable(name: "out", scope: !143, file: !5, line: 120, type: !43, align: 128)
!150 = !DILocation(line: 121, column: 2, scope: !143)
!151 = !DILocation(line: 122, column: 2, scope: !143)
!152 = !DILocation(line: 123, column: 6, scope: !143)
!153 = !DILocation(line: 124, column: 2, scope: !143)
!154 = !DILocation(line: 125, column: 5, scope: !143)
!155 = distinct !DISubprogram(name: "print", scope: !5, file: !5, line: 128, type: !144, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!156 = !DILocalVariable(name: "str", arg: 1, scope: !155, file: !5, line: 128, type: !43)
!157 = !DILocation(line: 128, scope: !155)
!158 = !DILocation(line: 130, column: 2, scope: !155)
!159 = !DILocalVariable(name: "to_print", scope: !155, file: !5, line: 130, type: !43, align: 128)
!160 = !DILocation(line: 131, column: 8, scope: !155)
!161 = distinct !DISubprogram(name: "copy", scope: !5, file: !5, line: 134, type: !162, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!162 = !DISubroutineType(types: !163)
!163 = !{!17, !16, !16, !53}
!164 = !DILocalVariable(name: "dst", arg: 1, scope: !161, file: !5, line: 134, type: !16)
!165 = !DILocation(line: 134, scope: !161)
!166 = !DILocalVariable(name: "src", arg: 2, scope: !161, file: !5, line: 134, type: !16)
!167 = !DILocalVariable(name: "size", arg: 3, scope: !161, file: !5, line: 134, type: !53)
!168 = !DILocation(line: 136, column: 2, scope: !161)
!169 = !DILocalVariable(name: "a0", scope: !161, file: !5, line: 136, type: !46, align: 64)
!170 = !DILocation(line: 137, column: 2, scope: !161)
!171 = !DILocalVariable(name: "a1", scope: !161, file: !5, line: 137, type: !46, align: 64)
!172 = !DILocation(line: 138, column: 2, scope: !161)
!173 = !DILocalVariable(name: "i", scope: !161, file: !5, line: 138, type: !20, align: 64)
!174 = !DILocation(line: 138, column: 6, scope: !161)
!175 = !DILocation(line: 140, column: 3, scope: !161)
!176 = !DILocation(line: 141, column: 2, scope: !161)
!177 = distinct !DISubprogram(name: "len", scope: !5, file: !5, line: 144, type: !178, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!178 = !DISubroutineType(types: !179)
!179 = !{!20, !46}
!180 = !DILocalVariable(name: "text", arg: 1, scope: !177, file: !5, line: 144, type: !46)
!181 = !DILocation(line: 144, scope: !177)
!182 = !DILocation(line: 146, column: 2, scope: !177)
!183 = !DILocalVariable(name: "result", scope: !177, file: !5, line: 146, type: !20, align: 64)
!184 = !DILocation(line: 147, column: 2, scope: !177)
!185 = !DILocation(line: 147, column: 47, scope: !177)
!186 = !DILocation(line: 148, column: 5, scope: !177)
!187 = distinct !DISubprogram(name: "overload[]", scope: !5, file: !5, line: 61, type: !188, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!188 = !DISubroutineType(types: !189)
!189 = !{!34, !43, !53}
!190 = !DILocalVariable(name: "str", scope: !187, file: !5, line: 61, type: !43)
!191 = !DILocation(line: 61, scope: !187)
!192 = !DILocalVariable(name: "index", arg: 1, scope: !187, file: !5, line: 61, type: !53)
!193 = !DILocation(line: 63, column: 5, scope: !187)
!194 = distinct !DISubprogram(name: "overload+", scope: !5, file: !5, line: 66, type: !195, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!195 = !DISubroutineType(types: !196)
!196 = !{!43, !43, !46}
!197 = !DILocalVariable(name: "str", scope: !194, file: !5, line: 66, type: !43)
!198 = !DILocation(line: 66, scope: !194)
!199 = !DILocalVariable(name: "text", arg: 1, scope: !194, file: !5, line: 66, type: !46)
!200 = !DILocation(line: 68, column: 2, scope: !194)
!201 = !DILocalVariable(name: "out", scope: !194, file: !5, line: 68, type: !43, align: 128)
!202 = !DILocation(line: 69, column: 2, scope: !194)
!203 = !DILocalVariable(name: "text_len", scope: !194, file: !5, line: 69, type: !20, align: 64)
!204 = !DILocation(line: 70, column: 2, scope: !194)
!205 = !DILocation(line: 71, column: 2, scope: !194)
!206 = !DILocation(line: 72, column: 6, scope: !194)
!207 = !DILocation(line: 73, column: 6, scope: !194)
!208 = !DILocation(line: 74, column: 5, scope: !194)
!209 = distinct !DISubprogram(name: "overload[x]=", scope: !5, file: !5, line: 77, type: !210, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!210 = !DISubroutineType(types: !211)
!211 = !{!17, !39, !46}
!212 = !DILocalVariable(name: "str", scope: !209, file: !5, line: 77, type: !39)
!213 = !DILocation(line: 77, scope: !209)
!214 = !DILocalVariable(name: "text", arg: 1, scope: !209, file: !5, line: 77, type: !46)
!215 = !DILocation(line: 79, column: 2, scope: !209)
!216 = !DILocalVariable(name: "text_len", scope: !209, file: !5, line: 79, type: !20, align: 64)
!217 = !DILocation(line: 80, column: 2, scope: !209)
!218 = !DILocalVariable(name: "times", scope: !209, file: !5, line: 80, type: !20, align: 64)
!219 = !DILocation(line: 81, column: 2, scope: !209)
!220 = !DILocalVariable(name: "current", scope: !209, file: !5, line: 81, type: !39, align: 64)
!221 = !DILocation(line: 82, column: 2, scope: !209)
!222 = !DILocalVariable(name: "i", scope: !209, file: !5, line: 82, type: !20, align: 64)
!223 = !DILocation(line: 82, column: 6, scope: !209)
!224 = !DILocation(line: 83, column: 3, scope: !209)
!225 = !DILocalVariable(name: "copy_size", scope: !209, file: !5, line: 83, type: !20, align: 64)
!226 = !DILocation(line: 84, column: 3, scope: !209)
!227 = !DILocation(line: 89, column: 2, scope: !209)
!228 = !DILocation(line: 85, column: 7, scope: !209)
!229 = !DILocation(line: 86, column: 3, scope: !209)
!230 = !DILocation(line: 87, column: 3, scope: !209)
!231 = !DILocation(line: 88, column: 3, scope: !209)
!232 = !DILocation(line: 84, column: 37, scope: !209)
!233 = distinct !DISubprogram(name: "overload", scope: !5, file: !5, line: 93, type: !234, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!234 = !DISubroutineType(types: !235)
!235 = !{!11, !43, !46}
!236 = !DILocalVariable(name: "str", scope: !233, file: !5, line: 93, type: !43)
!237 = !DILocation(line: 93, scope: !233)
!238 = !DILocalVariable(name: "text", arg: 1, scope: !233, file: !5, line: 93, type: !46)
!239 = !DILocation(line: 95, column: 2, scope: !233)
!240 = !DILocalVariable(name: "str2", scope: !233, file: !5, line: 95, type: !43, align: 128)
!241 = !DILocation(line: 96, column: 5, scope: !233)
