; ModuleID = 'C_Standard.apoc'
source_filename = "C_Standard.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Printable_Type_Info = type { ptr, ptr }
%__Internal_Context.0 = type { ptr }
%string = type { ptr, i64 }
%String_Builder = type { [256 x i8], i64, ptr }
%Type_Struct = type { i32, i32, i8, i8, ptr, ptr, ptr }
%Any = type { ptr, ptr }
%Type_Primitive = type { i32, i32 }
%Printable_Struct = type { i32, i32 }
%Type_Info = type { i32, i32, i8, i8, ptr, ptr, ptr }

@global_var = constant i64 256, !dbg !0
@global_var.1 = global [1024 x %Printable_Type_Info] zeroinitializer, !dbg !4
@global_var.2 = global i64 0, !dbg !16
@global_var.3 = constant i64 65536, !dbg !18
@global_var.4 = constant i64 131072, !dbg !21
@global_var.5 = constant i64 262144, !dbg !23
@global_var.6 = constant i64 524288, !dbg !25
@global_var.7 = constant i64 1048576, !dbg !27
@global_var.8 = global i64 54321, !dbg !29
@global_var.9 = constant i8 1, !dbg !32
@global_var.10 = constant i8 0, !dbg !36
@global_var.11 = constant ptr null, !dbg !38
@0 = private unnamed_addr constant [14 x i8] c"Unkown struct\00", align 1
@1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@4 = private unnamed_addr constant [17 x i8] c"len: %d, text %s\00", align 1
@5 = private unnamed_addr constant [17 x i8] c"Printable_Struct\00", align 1
@6 = private unnamed_addr constant [9 x i8] c"works? %\00", align 1
@7 = private unnamed_addr constant [17 x i8] c"Printable_Struct\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"num1\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"num2\00", align 1
@10 = private unnamed_addr constant [34 x i8] c"Printable Struct:\0Anum1: %\0Anum2: %\00", align 1

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

define ptr @mem_alloc(ptr %__apoc_internal_context, i64 %size) !dbg !45 {
entry:
  %result = alloca ptr, align 8
  %size2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !50, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata ptr %size2, metadata !55, metadata !DIExpression()), !dbg !54
  store i64 %size, ptr %size2, align 8
  %1 = load i64, ptr %size2, align 8, !dbg !56
  %2 = call ptr @malloc(i64 %1), !dbg !56
  store ptr %2, ptr %result, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %result, metadata !57, metadata !DIExpression()), !dbg !56
  %3 = load ptr, ptr %result, align 8, !dbg !58
  %4 = load i64, ptr %size2, align 8, !dbg !58
  %5 = call ptr @memset(ptr %3, i32 0, i64 %4), !dbg !58
  %6 = load ptr, ptr %result, align 8, !dbg !59
  ret ptr %6, !dbg !59
}

declare i32 @strcmp(ptr, ptr)

define void @register_printable(ptr %__apoc_internal_context, ptr %print_fn, ptr %type_name) !dbg !60 {
entry:
  %printable_types = alloca %Printable_Type_Info, align 8
  %type_name3 = alloca ptr, align 8
  %print_fn2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata ptr %print_fn2, metadata !65, metadata !DIExpression()), !dbg !64
  store ptr %print_fn, ptr %print_fn2, align 8
  call void @llvm.dbg.declare(metadata ptr %type_name3, metadata !66, metadata !DIExpression()), !dbg !64
  store ptr %type_name, ptr %type_name3, align 8
  %1 = load ptr, ptr %type_name3, align 8, !dbg !67
  %2 = getelementptr inbounds %Printable_Type_Info, ptr %printable_types, i32 0, i32 1, !dbg !67
  store ptr %1, ptr %2, align 8, !dbg !67
  %3 = bitcast ptr %printable_types to ptr, !dbg !67
  store ptr %print_fn2, ptr %3, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %printable_types, metadata !68, metadata !DIExpression()), !dbg !67
  %4 = load i64, ptr @global_var.2, align 8, !dbg !69
  %5 = add i64 %4, 1, !dbg !69
  store i64 %5, ptr @global_var.2, align 8, !dbg !69
  ret void, !dbg !70
}

define void @builder_to_string(ptr %__apoc_internal_context, ptr %builder) !dbg !71 {
entry:
  %__apoc_internal_context34 = alloca %__Internal_Context.0, align 8
  %__apoc_internal_context23 = alloca %__Internal_Context.0, align 8
  %i15 = alloca i64, align 8
  %times = alloca i64, align 8
  %__apoc_internal_context12 = alloca %__Internal_Context.0, align 8
  %i = alloca i64, align 8
  %current = alloca ptr, align 8
  %out_len = alloca i64, align 8
  %out = alloca %string, align 8
  %builder2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata ptr %builder2, metadata !89, metadata !DIExpression()), !dbg !88
  store ptr %builder, ptr %builder2, align 8
  call void @llvm.dbg.declare(metadata ptr %out, metadata !90, metadata !DIExpression()), !dbg !91
  store i64 0, ptr %out_len, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %out_len, metadata !93, metadata !DIExpression()), !dbg !92
  %1 = load ptr, ptr %builder2, align 8, !dbg !94
  store ptr %1, ptr %current, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %current, metadata !95, metadata !DIExpression()), !dbg !94
  store i64 0, ptr %i, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %i, metadata !97, metadata !DIExpression()), !dbg !98
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.body, %entry
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !96
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 2, !dbg !96
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !96
  %2 = icmp ne ptr %selected, null, !dbg !96
  br i1 %2, label %for.body, label %for.aftr, !dbg !96

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %out_len, align 8, !dbg !99
  %"derefrence struct3" = load ptr, ptr %current, align 8, !dbg !99
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 1, !dbg !99
  %selected5 = load i64, ptr %"struct member ptr4", align 8, !dbg !99
  %4 = add i64 %3, %selected5, !dbg !99
  store i64 %4, ptr %out_len, align 8, !dbg !99
  %"derefrence struct6" = load ptr, ptr %current, align 8, !dbg !100
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2, !dbg !100
  %selected8 = load ptr, ptr %"struct member ptr7", align 8, !dbg !100
  store ptr %selected8, ptr %current, align 8, !dbg !100
  %5 = load i64, ptr %i, align 8, !dbg !100
  %6 = add i64 %5, 1, !dbg !100
  store i64 %6, ptr %i, align 8, !dbg !100
  br label %for.cond, !dbg !100

for.aftr:                                         ; preds = %for.cond
  %7 = load i64, ptr %out_len, align 8, !dbg !101
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !101
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !101
  %selected11 = load i64, ptr %"struct member ptr10", align 8, !dbg !101
  %8 = add i64 %7, %selected11, !dbg !101
  store i64 %8, ptr %out_len, align 8, !dbg !101
  %9 = load i64, ptr %out_len, align 8, !dbg !102
  %10 = call ptr @mem_alloc(ptr %__apoc_internal_context12, i64 %9), !dbg !102
  %"struct member ptr1347" = bitcast ptr %out to ptr, !dbg !102
  store ptr %10, ptr %"struct member ptr1347", align 8, !dbg !102
  %11 = load i64, ptr %out_len, align 8, !dbg !103
  %"struct member ptr14" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !103
  store i64 %11, ptr %"struct member ptr14", align 8, !dbg !103
  store i64 0, ptr %times, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata ptr %times, metadata !105, metadata !DIExpression()), !dbg !104
  store i64 0, ptr %i15, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %i15, metadata !107, metadata !DIExpression()), !dbg !108
  br label %for.cond16, !dbg !106

for.cond16:                                       ; preds = %for.body17, %for.aftr
  %"derefrence struct19" = load ptr, ptr %current, align 8, !dbg !106
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 2, !dbg !106
  %selected21 = load ptr, ptr %"struct member ptr20", align 8, !dbg !106
  %12 = icmp ne ptr %selected21, null, !dbg !106
  br i1 %12, label %for.body17, label %for.aftr18, !dbg !106

for.body17:                                       ; preds = %for.cond16
  %13 = load i64, ptr %times, align 8, !dbg !109
  %14 = mul i64 %13, 256, !dbg !109
  %"struct member ptr2448" = bitcast ptr %out to ptr, !dbg !109
  %ptr_load = load ptr, ptr %"struct member ptr2448", align 8, !dbg !109
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %14, !dbg !109
  %"derefrence struct25" = load ptr, ptr %current, align 8, !dbg !109
  %"struct member ptr2649" = bitcast ptr %"derefrence struct25" to ptr, !dbg !109
  %elem_ptr2750 = bitcast ptr %"struct member ptr2649" to ptr, !dbg !109
  %"derefrence struct28" = load ptr, ptr %current, align 8, !dbg !109
  %"struct member ptr29" = getelementptr inbounds %String_Builder, ptr %"derefrence struct28", i32 0, i32 1, !dbg !109
  %selected30 = load i64, ptr %"struct member ptr29", align 8, !dbg !109
  call void @copy(ptr %__apoc_internal_context23, ptr %elem_ptr, ptr %elem_ptr2750, i64 %selected30), !dbg !109
  %"derefrence struct31" = load ptr, ptr %current, align 8, !dbg !110
  %"struct member ptr32" = getelementptr inbounds %String_Builder, ptr %"derefrence struct31", i32 0, i32 2, !dbg !110
  %selected33 = load ptr, ptr %"struct member ptr32", align 8, !dbg !110
  store ptr %selected33, ptr %current, align 8, !dbg !110
  %15 = load i64, ptr %times, align 8, !dbg !111
  %16 = add i64 %15, 1, !dbg !111
  store i64 %16, ptr %times, align 8, !dbg !111
  %17 = load i64, ptr %i15, align 8, !dbg !111
  %18 = add i64 %17, 1, !dbg !111
  store i64 %18, ptr %i15, align 8, !dbg !111
  br label %for.cond16, !dbg !111

for.aftr18:                                       ; preds = %for.cond16
  %19 = load i64, ptr %times, align 8, !dbg !112
  %20 = mul i64 %19, 256, !dbg !112
  %"struct member ptr3551" = bitcast ptr %out to ptr, !dbg !112
  %ptr_load36 = load ptr, ptr %"struct member ptr3551", align 8, !dbg !112
  %elem_ptr37 = getelementptr i8, ptr %ptr_load36, i64 %20, !dbg !112
  %"derefrence struct38" = load ptr, ptr %current, align 8, !dbg !112
  %"struct member ptr3952" = bitcast ptr %"derefrence struct38" to ptr, !dbg !112
  %elem_ptr4053 = bitcast ptr %"struct member ptr3952" to ptr, !dbg !112
  %"derefrence struct41" = load ptr, ptr %current, align 8, !dbg !112
  %"struct member ptr42" = getelementptr inbounds %String_Builder, ptr %"derefrence struct41", i32 0, i32 1, !dbg !112
  %selected43 = load i64, ptr %"struct member ptr42", align 8, !dbg !112
  call void @copy(ptr %__apoc_internal_context34, ptr %elem_ptr37, ptr %elem_ptr4053, i64 %selected43), !dbg !112
  %21 = load i64, ptr %out_len, align 8, !dbg !113
  %"derefrence struct44" = load ptr, ptr %builder2, align 8, !dbg !113
  %"struct member ptr45" = getelementptr inbounds %String_Builder, ptr %"derefrence struct44", i32 0, i32 1, !dbg !113
  %selected46 = load i64, ptr %"struct member ptr45", align 8, !dbg !113
  %22 = add i64 %21, %selected46, !dbg !113
  store i64 %22, ptr %out_len, align 8, !dbg !113
  %ret_ptr54 = bitcast ptr %__apoc_internal_context1 to ptr, !dbg !114
  %23 = load ptr, ptr %ret_ptr54, align 8, !dbg !114
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %out, i64 16, i1 false), !dbg !114
  ret void, !dbg !114
}

define void @init_builder(ptr %__apoc_internal_context, ptr %text) !dbg !115 {
entry:
  %__apoc_internal_context11 = alloca %__Internal_Context.0, align 8
  %i = alloca i64, align 8
  %times = alloca i64, align 8
  %current = alloca ptr, align 8
  %out = alloca %String_Builder, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !120, metadata !DIExpression()), !dbg !119
  store ptr %text, ptr %text2, align 8
  call void @llvm.dbg.declare(metadata ptr %out, metadata !121, metadata !DIExpression()), !dbg !122
  store ptr %out, ptr %current, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %current, metadata !124, metadata !DIExpression()), !dbg !123
  store i64 0, ptr %times, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %times, metadata !126, metadata !DIExpression()), !dbg !125
  store i64 0, ptr %i, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %i, metadata !128, metadata !DIExpression()), !dbg !129
  br label %for.cond, !dbg !127

for.cond:                                         ; preds = %if.aftr, %entry
  %1 = load i64, ptr %i, align 8, !dbg !127
  %2 = load i64, ptr %times, align 8, !dbg !127
  %3 = mul i64 %2, 256, !dbg !127
  %4 = add i64 %1, %3, !dbg !127
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !127
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %4, !dbg !127
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !127
  %5 = icmp ne i8 %indexed_val, 0, !dbg !127
  br i1 %5, label %for.body, label %for.aftr, !dbg !127

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8, !dbg !130
  %7 = load i64, ptr %times, align 8, !dbg !130
  %8 = mul i64 %7, 256, !dbg !130
  %9 = add i64 %6, %8, !dbg !130
  %ptr_load3 = load ptr, ptr %text2, align 8, !dbg !130
  %elem_ptr4 = getelementptr i8, ptr %ptr_load3, i64 %9, !dbg !130
  %indexed_val5 = load i8, ptr %elem_ptr4, align 1, !dbg !130
  %10 = load i64, ptr %i, align 8, !dbg !130
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !130
  %"struct member ptr17" = bitcast ptr %"derefrence struct" to ptr, !dbg !130
  %elem_ptr6 = getelementptr [256 x i8], ptr %"struct member ptr17", i64 0, i64 %10, !dbg !130
  store i8 %indexed_val5, ptr %elem_ptr6, align 1, !dbg !130
  %"derefrence struct7" = load ptr, ptr %current, align 8, !dbg !131
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %"derefrence struct7", i32 0, i32 1, !dbg !131
  %selected = load i64, ptr %"struct member ptr8", align 8, !dbg !131
  %11 = add i64 %selected, 1, !dbg !131
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !131
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !131
  store i64 %11, ptr %"struct member ptr10", align 8, !dbg !131
  %12 = load i64, ptr %i, align 8, !dbg !132
  %13 = icmp eq i64 %12, 256, !dbg !132
  br i1 %13, label %if.true, label %if.aftr, !dbg !133

for.aftr:                                         ; preds = %for.cond
  %ret_ptr18 = bitcast ptr %__apoc_internal_context1 to ptr, !dbg !134
  %14 = load ptr, ptr %ret_ptr18, align 8, !dbg !134
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %out, i64 272, i1 false), !dbg !134
  ret void, !dbg !134

if.true:                                          ; preds = %for.body
  store i64 0, ptr %i, align 8, !dbg !135
  %15 = load i64, ptr %times, align 8, !dbg !136
  %16 = add i64 %15, 1, !dbg !136
  store i64 %16, ptr %times, align 8, !dbg !136
  %17 = call ptr @mem_alloc(ptr %__apoc_internal_context11, i64 272), !dbg !137
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !137
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 2, !dbg !137
  store ptr %17, ptr %"struct member ptr13", align 8, !dbg !137
  %"derefrence struct14" = load ptr, ptr %current, align 8, !dbg !133
  %"struct member ptr15" = getelementptr inbounds %String_Builder, ptr %"derefrence struct14", i32 0, i32 2, !dbg !133
  %selected16 = load ptr, ptr %"struct member ptr15", align 8, !dbg !133
  store ptr %selected16, ptr %current, align 8, !dbg !133
  br label %if.aftr, !dbg !133

if.aftr:                                          ; preds = %for.body, %if.true
  %18 = load i64, ptr %i, align 8, !dbg !133
  %19 = add i64 %18, 1, !dbg !133
  store i64 %19, ptr %i, align 8, !dbg !133
  br label %for.cond, !dbg !133
}

define i8 @compare(ptr %__apoc_internal_context, ptr %str1, ptr %str2) !dbg !138 {
entry:
  %i = alloca i64, align 8
  %str23 = alloca ptr, align 8
  %str12 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata ptr %str12, metadata !144, metadata !DIExpression()), !dbg !143
  store ptr %str1, ptr %str12, align 8
  call void @llvm.dbg.declare(metadata ptr %str23, metadata !145, metadata !DIExpression()), !dbg !143
  store ptr %str2, ptr %str23, align 8
  %"derefrence struct" = load ptr, ptr %str12, align 8, !dbg !146
  %"struct member ptr" = getelementptr inbounds %string, ptr %"derefrence struct", i32 0, i32 1, !dbg !146
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !146
  %"derefrence struct4" = load ptr, ptr %str23, align 8, !dbg !146
  %"struct member ptr5" = getelementptr inbounds %string, ptr %"derefrence struct4", i32 0, i32 1, !dbg !146
  %selected6 = load i64, ptr %"struct member ptr5", align 8, !dbg !146
  %1 = icmp ne i64 %selected, %selected6, !dbg !146
  br i1 %1, label %if.true, label %if.aftr, !dbg !147

if.true:                                          ; preds = %entry
  ret i8 0, !dbg !148

if.aftr:                                          ; preds = %entry
  store i64 0, ptr %i, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %i, metadata !149, metadata !DIExpression()), !dbg !150
  br label %for.cond, !dbg !147

for.cond:                                         ; preds = %if.aftr18, %if.aftr
  %2 = load i64, ptr %i, align 8, !dbg !147
  %"derefrence struct7" = load ptr, ptr %str12, align 8, !dbg !147
  %"struct member ptr8" = getelementptr inbounds %string, ptr %"derefrence struct7", i32 0, i32 1, !dbg !147
  %selected9 = load i64, ptr %"struct member ptr8", align 8, !dbg !147
  %3 = icmp slt i64 %2, %selected9, !dbg !147
  br i1 %3, label %for.body, label %for.aftr, !dbg !147

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %i, align 8, !dbg !151
  %"derefrence struct10" = load ptr, ptr %str12, align 8, !dbg !151
  %"struct member ptr1119" = bitcast ptr %"derefrence struct10" to ptr, !dbg !151
  %ptr_load = load ptr, ptr %"struct member ptr1119", align 8, !dbg !151
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %4, !dbg !151
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !151
  %5 = load i64, ptr %i, align 8, !dbg !151
  %"derefrence struct12" = load ptr, ptr %str23, align 8, !dbg !151
  %"struct member ptr1320" = bitcast ptr %"derefrence struct12" to ptr, !dbg !151
  %ptr_load14 = load ptr, ptr %"struct member ptr1320", align 8, !dbg !151
  %elem_ptr15 = getelementptr i8, ptr %ptr_load14, i64 %5, !dbg !151
  %indexed_val16 = load i8, ptr %elem_ptr15, align 1, !dbg !151
  %6 = icmp ne i8 %indexed_val, %indexed_val16, !dbg !151
  br i1 %6, label %if.true17, label %if.aftr18, !dbg !152

for.aftr:                                         ; preds = %for.cond
  ret i8 1, !dbg !153

if.true17:                                        ; preds = %for.body
  ret i8 0, !dbg !152

if.aftr18:                                        ; preds = %for.body
  %7 = load i64, ptr %i, align 8, !dbg !152
  %8 = add i64 %7, 1, !dbg !152
  store i64 %8, ptr %i, align 8, !dbg !152
  br label %for.cond, !dbg !152
}

define void @to_string(ptr %__apoc_internal_context, ptr %text) !dbg !154 {
entry:
  %str = alloca %string, align 8
  %__apoc_internal_context5 = alloca %__Internal_Context.0, align 8
  %allocated = alloca ptr, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context.0, align 8
  %text_len = alloca i64, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context.0, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !159, metadata !DIExpression()), !dbg !158
  store ptr %text, ptr %text2, align 8
  %1 = load ptr, ptr %text2, align 8, !dbg !160
  %2 = call i64 @len(ptr %__apoc_internal_context3, ptr %1), !dbg !160
  store i64 %2, ptr %text_len, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !161, metadata !DIExpression()), !dbg !160
  %3 = load i64, ptr %text_len, align 8, !dbg !162
  %4 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %3), !dbg !162
  store ptr %4, ptr %allocated, align 8, !dbg !162
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !163, metadata !DIExpression()), !dbg !162
  %5 = load ptr, ptr %allocated, align 8, !dbg !164
  %6 = load ptr, ptr %text2, align 8, !dbg !164
  %7 = load i64, ptr %text_len, align 8, !dbg !164
  call void @copy(ptr %__apoc_internal_context5, ptr %5, ptr %6, i64 %7), !dbg !164
  %8 = load i64, ptr %text_len, align 8, !dbg !165
  %9 = getelementptr inbounds %string, ptr %str, i32 0, i32 1, !dbg !165
  store i64 %8, ptr %9, align 8, !dbg !165
  %10 = load ptr, ptr %allocated, align 8, !dbg !165
  %11 = bitcast ptr %str to ptr, !dbg !165
  store ptr %10, ptr %11, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %str, metadata !166, metadata !DIExpression()), !dbg !165
  %ret_ptr6 = bitcast ptr %__apoc_internal_context1 to ptr, !dbg !167
  %12 = load ptr, ptr %ret_ptr6, align 8, !dbg !167
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %str, i64 16, i1 false), !dbg !167
  ret void, !dbg !167
}

define void @terminate_string(ptr %__apoc_internal_context, ptr %str) !dbg !168 {
entry:
  %__apoc_internal_context8 = alloca %__Internal_Context.0, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context.0, align 8
  %out = alloca %string, align 8
  %str2 = alloca %string, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !173, metadata !DIExpression()), !dbg !172
  %1 = load %string, ptr %str, align 8
  store %string %1, ptr %str2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false), !dbg !174
  call void @llvm.dbg.declare(metadata ptr %out, metadata !175, metadata !DIExpression()), !dbg !174
  %"struct member ptr" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !176
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !176
  %2 = add i64 %selected, 1, !dbg !176
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !176
  store i64 %2, ptr %"struct member ptr3", align 8, !dbg !176
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !177
  %selected6 = load i64, ptr %"struct member ptr5", align 8, !dbg !177
  %3 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6), !dbg !177
  %"struct member ptr718" = bitcast ptr %out to ptr, !dbg !177
  store ptr %3, ptr %"struct member ptr718", align 8, !dbg !177
  %"struct member ptr919" = bitcast ptr %out to ptr, !dbg !178
  %selected10 = load ptr, ptr %"struct member ptr919", align 8, !dbg !178
  %"struct member ptr1120" = bitcast ptr %str2 to ptr, !dbg !178
  %selected12 = load ptr, ptr %"struct member ptr1120", align 8, !dbg !178
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !178
  %selected14 = load i64, ptr %"struct member ptr13", align 8, !dbg !178
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14), !dbg !178
  %"struct member ptr15" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !179
  %selected16 = load i64, ptr %"struct member ptr15", align 8, !dbg !179
  %"struct member ptr1721" = bitcast ptr %out to ptr, !dbg !179
  %ptr_load = load ptr, ptr %"struct member ptr1721", align 8, !dbg !179
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected16, !dbg !179
  store i8 0, ptr %elem_ptr, align 1, !dbg !179
  %ret_ptr22 = bitcast ptr %__apoc_internal_context1 to ptr, !dbg !180
  %4 = load ptr, ptr %ret_ptr22, align 8, !dbg !180
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %out, i64 16, i1 false), !dbg !180
  ret void, !dbg !180
}

define void @build_unsigned_int(ptr %__apoc_internal_context, i64 %num, i64 %num_size, ptr %builder) !dbg !181 {
entry:
  %__apoc_internal_context5 = alloca %__Internal_Context.0, align 8
  %digit = alloca i64, align 8
  %builder4 = alloca ptr, align 8
  %num_size3 = alloca i64, align 8
  %num2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata ptr %num2, metadata !186, metadata !DIExpression()), !dbg !185
  store i64 %num, ptr %num2, align 8
  call void @llvm.dbg.declare(metadata ptr %num_size3, metadata !187, metadata !DIExpression()), !dbg !185
  store i64 %num_size, ptr %num_size3, align 8
  call void @llvm.dbg.declare(metadata ptr %builder4, metadata !188, metadata !DIExpression()), !dbg !185
  store ptr %builder, ptr %builder4, align 8
  %1 = load i64, ptr %num_size3, align 8, !dbg !189
  %2 = icmp ne i64 %1, 0, !dbg !189
  br i1 %2, label %if.true, label %if.aftr, !dbg !190

if.true:                                          ; preds = %entry
  %3 = load i64, ptr %num2, align 8, !dbg !191
  %4 = urem i64 %3, 10, !dbg !191
  %5 = add i64 %4, 48, !dbg !191
  store i64 %5, ptr %digit, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata ptr %digit, metadata !192, metadata !DIExpression()), !dbg !191
  %6 = load i64, ptr %num2, align 8, !dbg !193
  %7 = udiv i64 %6, 10, !dbg !193
  %8 = load i64, ptr %num_size3, align 8, !dbg !193
  %9 = sub i64 %8, 1, !dbg !193
  %10 = load ptr, ptr %builder4, align 8, !dbg !193
  call void @build_unsigned_int(ptr %__apoc_internal_context5, i64 %7, i64 %9, ptr %10), !dbg !193
  %ptr_addr = load ptr, ptr %builder4, align 8, !dbg !194
  %11 = load i64, ptr %digit, align 8, !dbg !194
  %cast = trunc i64 %11 to i8, !dbg !194
  call void @"overload[x]=.12"(ptr %ptr_addr, i8 %cast), !dbg !194
  br label %if.aftr, !dbg !194

if.aftr:                                          ; preds = %entry, %if.true
  ret void, !dbg !190
}

define void @int_to_str(ptr %__apoc_internal_context, i64 %num, ptr %builder) !dbg !195 {
entry:
  %__apoc_internal_context7 = alloca %__Internal_Context.0, align 8
  %num_size = alloca i64, align 8
  %div_copy = alloca i64, align 8
  %builder3 = alloca ptr, align 8
  %num2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata ptr %num2, metadata !200, metadata !DIExpression()), !dbg !199
  store i64 %num, ptr %num2, align 8
  call void @llvm.dbg.declare(metadata ptr %builder3, metadata !201, metadata !DIExpression()), !dbg !199
  store ptr %builder, ptr %builder3, align 8
  %1 = load i64, ptr %num2, align 8, !dbg !202
  %2 = icmp eq i64 %1, 0, !dbg !202
  br i1 %2, label %if.true, label %if.aftr, !dbg !203

if.true:                                          ; preds = %entry
  %ptr_addr = load ptr, ptr %builder3, align 8, !dbg !204
  call void @"overload[x]=.12"(ptr %ptr_addr, i8 48), !dbg !204
  ret void, !dbg !205

if.aftr:                                          ; preds = %entry
  %3 = load i64, ptr %num2, align 8, !dbg !206
  store i64 %3, ptr %div_copy, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %div_copy, metadata !207, metadata !DIExpression()), !dbg !206
  store i64 0, ptr %num_size, align 8, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %num_size, metadata !209, metadata !DIExpression()), !dbg !208
  br label %for.cond, !dbg !203

for.cond:                                         ; preds = %for.body, %if.aftr
  %4 = load i64, ptr %div_copy, align 8, !dbg !203
  %5 = icmp ne i64 %4, 0, !dbg !203
  br i1 %5, label %for.body, label %for.aftr, !dbg !203

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %div_copy, align 8, !dbg !210
  %7 = sdiv i64 %6, 10, !dbg !210
  store i64 %7, ptr %div_copy, align 8, !dbg !210
  %8 = load i64, ptr %num_size, align 8, !dbg !210
  %9 = add i64 %8, 1, !dbg !210
  store i64 %9, ptr %num_size, align 8, !dbg !210
  br label %for.cond, !dbg !210

for.aftr:                                         ; preds = %for.cond
  %10 = load i64, ptr %num2, align 8, !dbg !211
  %11 = icmp slt i64 %10, 0, !dbg !211
  br i1 %11, label %if.true4, label %if.aftr5, !dbg !212

if.true4:                                         ; preds = %for.aftr
  %ptr_addr6 = load ptr, ptr %builder3, align 8, !dbg !204
  call void @"overload[x]=.12"(ptr %ptr_addr6, i8 45), !dbg !204
  %12 = load i64, ptr %num2, align 8, !dbg !213
  %13 = sub i64 0, %12, !dbg !213
  store i64 %13, ptr %num2, align 8, !dbg !213
  %14 = load i64, ptr %num_size, align 8, !dbg !214
  %15 = add i64 %14, 1, !dbg !214
  store i64 %15, ptr %num_size, align 8, !dbg !214
  br label %if.aftr5, !dbg !214

if.aftr5:                                         ; preds = %for.aftr, %if.true4
  %16 = load i64, ptr %num2, align 8, !dbg !215
  %17 = load i64, ptr %num_size, align 8, !dbg !215
  %18 = load ptr, ptr %builder3, align 8, !dbg !215
  call void @build_unsigned_int(ptr %__apoc_internal_context7, i64 %16, i64 %17, ptr %18), !dbg !215
  ret void, !dbg !212
}

define void @float_to_str(ptr %__apoc_internal_context, double %num, ptr %builder) !dbg !216 {
entry:
  %__apoc_internal_context19 = alloca %__Internal_Context.0, align 8
  %i = alloca i64, align 8
  %zeroes_to_append = alloca i64, align 8
  %__apoc_internal_context8 = alloca %__Internal_Context.0, align 8
  %decimal = alloca i64, align 8
  %builder3 = alloca ptr, align 8
  %num2 = alloca double, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata ptr %num2, metadata !222, metadata !DIExpression()), !dbg !221
  store double %num, ptr %num2, align 8
  call void @llvm.dbg.declare(metadata ptr %builder3, metadata !223, metadata !DIExpression()), !dbg !221
  store ptr %builder, ptr %builder3, align 8
  %1 = load double, ptr %num2, align 8, !dbg !224
  %2 = fcmp ult double %1, 0.000000e+00, !dbg !224
  br i1 %2, label %if.true, label %if.aftr, !dbg !225

if.true:                                          ; preds = %entry
  %ptr_addr = load ptr, ptr %builder3, align 8, !dbg !226
  call void @"overload[x]=.12"(ptr %ptr_addr, i8 45), !dbg !226
  %3 = load double, ptr %num2, align 8, !dbg !227
  %4 = fneg double %3, !dbg !227
  store double %4, ptr %num2, align 8, !dbg !227
  br label %if.aftr, !dbg !227

if.aftr:                                          ; preds = %entry, %if.true
  %5 = load double, ptr %num2, align 8, !dbg !228
  %cast = fptoui double %5 to i64, !dbg !228
  store i64 %cast, ptr %decimal, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %decimal, metadata !229, metadata !DIExpression()), !dbg !228
  %6 = load double, ptr %num2, align 8, !dbg !230
  %7 = load i64, ptr %decimal, align 8, !dbg !230
  %cast4 = uitofp i64 %7 to double, !dbg !230
  %8 = fsub double %6, %cast4, !dbg !230
  store double %8, ptr %num2, align 8, !dbg !230
  %9 = load i64, ptr %decimal, align 8, !dbg !231
  %10 = icmp eq i64 %9, 0, !dbg !231
  br i1 %10, label %if.true5, label %if.else, !dbg !225

if.true5:                                         ; preds = %if.aftr
  %ptr_addr7 = load ptr, ptr %builder3, align 8, !dbg !226
  call void @"overload[x]=.12"(ptr %ptr_addr7, i8 48), !dbg !226
  br label %if.aftr6, !dbg !226

if.aftr6:                                         ; preds = %if.else, %if.true5
  %ptr_addr9 = load ptr, ptr %builder3, align 8, !dbg !226
  call void @"overload[x]=.12"(ptr %ptr_addr9, i8 46), !dbg !226
  store i64 0, ptr %zeroes_to_append, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %zeroes_to_append, metadata !233, metadata !DIExpression()), !dbg !232
  br label %for.cond, !dbg !225

if.else:                                          ; preds = %if.aftr
  %11 = load i64, ptr %decimal, align 8, !dbg !234
  %12 = load ptr, ptr %builder3, align 8, !dbg !234
  call void @int_to_str(ptr %__apoc_internal_context8, i64 %11, ptr %12), !dbg !234
  br label %if.aftr6, !dbg !234

for.cond:                                         ; preds = %if.true13, %for.body, %if.aftr6
  %13 = load double, ptr %num2, align 8, !dbg !225
  %cast10 = fptoui double %13 to i64, !dbg !225
  %cast11 = uitofp i64 %cast10 to double, !dbg !225
  %14 = load double, ptr %num2, align 8, !dbg !225
  %15 = fcmp une double %cast11, %14, !dbg !225
  br i1 %15, label %for.body, label %for.aftr, !dbg !225

for.body:                                         ; preds = %for.cond
  %16 = load double, ptr %num2, align 8, !dbg !235
  %17 = fmul double %16, 1.000000e+01, !dbg !235
  store double %17, ptr %num2, align 8, !dbg !235
  %18 = load double, ptr %num2, align 8, !dbg !236
  %cast12 = fptoui double %18 to i64, !dbg !236
  %19 = icmp eq i64 %cast12, 0, !dbg !236
  br i1 %19, label %if.true13, label %for.cond, !dbg !237

for.aftr:                                         ; preds = %for.cond
  store i64 0, ptr %i, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %i, metadata !239, metadata !DIExpression()), !dbg !240
  br label %for.cond15, !dbg !238

if.true13:                                        ; preds = %for.body
  %20 = load i64, ptr %zeroes_to_append, align 8, !dbg !237
  %21 = add i64 %20, 1, !dbg !237
  store i64 %21, ptr %zeroes_to_append, align 8, !dbg !237
  br label %for.cond, !dbg !237

for.cond15:                                       ; preds = %for.body16, %for.aftr
  %22 = load i64, ptr %i, align 8, !dbg !238
  %23 = load i64, ptr %zeroes_to_append, align 8, !dbg !238
  %24 = icmp slt i64 %22, %23, !dbg !238
  br i1 %24, label %for.body16, label %for.aftr17, !dbg !238

for.body16:                                       ; preds = %for.cond15
  %ptr_addr18 = load ptr, ptr %builder3, align 8, !dbg !226
  call void @"overload[x]=.12"(ptr %ptr_addr18, i8 48), !dbg !226
  %25 = load i64, ptr %i, align 8, !dbg !226
  %26 = add i64 %25, 1, !dbg !226
  store i64 %26, ptr %i, align 8, !dbg !226
  br label %for.cond15, !dbg !226

for.aftr17:                                       ; preds = %for.cond15
  %27 = load double, ptr %num2, align 8, !dbg !241
  %cast20 = fptosi double %27 to i64, !dbg !241
  %28 = load ptr, ptr %builder3, align 8, !dbg !241
  call void @int_to_str(ptr %__apoc_internal_context19, i64 %cast20, ptr %28), !dbg !241
  ret void, !dbg !242
}

define void @find_printable_type(ptr %__apoc_internal_context, ptr %item, ptr %builder) !dbg !243 {
entry:
  %to_return = alloca %string, align 8
  %__apoc_internal_context11 = alloca %__Internal_Context.0, align 8
  %i = alloca i64, align 8
  %builder3 = alloca ptr, align 8
  %item2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata ptr %item2, metadata !308, metadata !DIExpression()), !dbg !307
  store ptr %item, ptr %item2, align 8
  call void @llvm.dbg.declare(metadata ptr %builder3, metadata !309, metadata !DIExpression()), !dbg !307
  store ptr %builder, ptr %builder3, align 8
  store i64 0, ptr %i, align 8, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %i, metadata !311, metadata !DIExpression()), !dbg !312
  br label %for.cond, !dbg !310

for.cond:                                         ; preds = %if.aftr, %entry
  %1 = load i64, ptr %i, align 8, !dbg !310
  %2 = load i64, ptr @global_var.2, align 8, !dbg !310
  %3 = icmp slt i64 %1, %2, !dbg !310
  br i1 %3, label %for.body, label %for.aftr, !dbg !310

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %i, align 8, !dbg !313
  %elem_ptr = getelementptr [1024 x %Printable_Type_Info], ptr @global_var.1, i64 0, i64 %4, !dbg !313
  %"struct member ptr" = getelementptr inbounds %Printable_Type_Info, ptr %elem_ptr, i32 0, i32 1, !dbg !313
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !313
  %"derefrence struct" = load ptr, ptr %item2, align 8, !dbg !313
  %"struct member ptr415" = bitcast ptr %"derefrence struct" to ptr, !dbg !313
  %"derefrence struct5" = load ptr, ptr %"struct member ptr415", align 8, !dbg !313
  %"union member ptr16" = bitcast ptr %"derefrence struct5" to ptr, !dbg !313
  %"struct member ptr6" = getelementptr inbounds %Type_Struct, ptr %"union member ptr16", i32 0, i32 4, !dbg !313
  %selected7 = load ptr, ptr %"struct member ptr6", align 8, !dbg !313
  %5 = call i32 @strcmp(ptr %selected, ptr %selected7), !dbg !313
  %6 = icmp eq i32 %5, 0, !dbg !313
  br i1 %6, label %if.true, label %if.aftr, !dbg !314

for.aftr:                                         ; preds = %for.cond
  %ptr_addr14 = load ptr, ptr %builder3, align 8, !dbg !315
  call void @"overload[x]="(ptr %ptr_addr14, ptr @0), !dbg !315
  ret void, !dbg !316

if.true:                                          ; preds = %for.body
  %ptr_addr = load ptr, ptr %builder3, align 8, !dbg !315
  %7 = load i64, ptr %i, align 8, !dbg !315
  %elem_ptr8 = getelementptr [1024 x %Printable_Type_Info], ptr @global_var.1, i64 0, i64 %7, !dbg !315
  %"struct member ptr917" = bitcast ptr %elem_ptr8 to ptr, !dbg !315
  %selected10 = load ptr, ptr %"struct member ptr917", align 8, !dbg !315
  %ptr_to_ret_ptr18 = bitcast ptr %__apoc_internal_context11 to ptr, !dbg !315
  store ptr %to_return, ptr %ptr_to_ret_ptr18, align 8, !dbg !315
  %8 = load ptr, ptr %item2, align 8, !dbg !315
  call void %selected10(ptr %__apoc_internal_context11, ptr %8), !dbg !315
  %"struct member ptr1219" = bitcast ptr %to_return to ptr, !dbg !315
  %selected13 = load ptr, ptr %"struct member ptr1219", align 8, !dbg !315
  call void @"overload[x]="(ptr %ptr_addr, ptr %selected13), !dbg !315
  ret void, !dbg !314

if.aftr:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8, !dbg !314
  %10 = add i64 %9, 1, !dbg !314
  store i64 %10, ptr %i, align 8, !dbg !314
  br label %for.cond, !dbg !314
}

define void @parse_format(ptr %__apoc_internal_context, ptr %format, ptr %list) !dbg !317 {
entry:
  %out = alloca %string, align 8
  %__apoc_internal_context67 = alloca %__Internal_Context.0, align 8
  %arg_copy66 = alloca %string, align 8
  %arg_copy64 = alloca %string, align 8
  %__apoc_internal_context62 = alloca %__Internal_Context.0, align 8
  %__apoc_internal_context58 = alloca %__Internal_Context.0, align 8
  %size47 = alloca i32, align 4
  %to_parse41 = alloca double, align 8
  %__apoc_internal_context37 = alloca %__Internal_Context.0, align 8
  %size = alloca i32, align 4
  %to_parse = alloca i64, align 8
  %type = alloca i32, align 4
  %item = alloca %Any, align 8
  %arg_copy = alloca %string, align 8
  %i = alloca i64, align 8
  %list_index = alloca i64, align 8
  %builder = alloca %String_Builder, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context.0, align 8
  %list3 = alloca ptr, align 8
  %format2 = alloca %string, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !320, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !322, metadata !DIExpression()), !dbg !321
  %1 = load %string, ptr %format, align 8
  store %string %1, ptr %format2, align 8
  call void @llvm.dbg.declare(metadata ptr %list3, metadata !323, metadata !DIExpression()), !dbg !321
  store ptr %list, ptr %list3, align 8
  %ptr_to_ret_ptr69 = bitcast ptr %__apoc_internal_context4 to ptr, !dbg !324
  store ptr %builder, ptr %ptr_to_ret_ptr69, align 8, !dbg !324
  call void @init_builder(ptr %__apoc_internal_context4, ptr @1), !dbg !324
  call void @llvm.dbg.declare(metadata ptr %builder, metadata !325, metadata !DIExpression()), !dbg !324
  store i64 0, ptr %list_index, align 8, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %list_index, metadata !327, metadata !DIExpression()), !dbg !326
  %2 = call i32 (ptr, ...) @printf(ptr @2, ptr %format2), !dbg !328
  %"struct member ptr" = getelementptr inbounds %string, ptr %format2, i32 0, i32 1, !dbg !329
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !329
  %3 = call i32 (ptr, ...) @printf(ptr @3, i64 %selected), !dbg !329
  store i64 0, ptr %i, align 8, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %i, metadata !331, metadata !DIExpression()), !dbg !332
  br label %for.cond, !dbg !330

for.cond:                                         ; preds = %if.aftr, %entry
  %4 = load i64, ptr %i, align 8, !dbg !330
  %"struct member ptr5" = getelementptr inbounds %string, ptr %format2, i32 0, i32 1, !dbg !330
  %selected6 = load i64, ptr %"struct member ptr5", align 8, !dbg !330
  %5 = icmp slt i64 %4, %selected6, !dbg !330
  br i1 %5, label %for.body, label %for.aftr, !dbg !330

for.body:                                         ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arg_copy, ptr align 8 %format2, i64 8, i1 false), !dbg !333
  %6 = load i64, ptr %i, align 8, !dbg !333
  %7 = call i8 @"overload[]"(ptr %arg_copy, i64 %6), !dbg !333
  %8 = icmp eq i8 %7, 37, !dbg !333
  br i1 %8, label %if.true, label %if.else65, !dbg !334

for.aftr:                                         ; preds = %for.cond
  call void @"overload[x]=.12"(ptr %builder, i8 10), !dbg !334
  %ptr_to_ret_ptr6870 = bitcast ptr %__apoc_internal_context67 to ptr, !dbg !335
  store ptr %out, ptr %ptr_to_ret_ptr6870, align 8, !dbg !335
  call void @builder_to_string(ptr %__apoc_internal_context67, ptr %builder), !dbg !335
  call void @llvm.dbg.declare(metadata ptr %out, metadata !336, metadata !DIExpression()), !dbg !335
  %ret_ptr71 = bitcast ptr %__apoc_internal_context1 to ptr, !dbg !337
  %9 = load ptr, ptr %ret_ptr71, align 8, !dbg !337
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %out, i64 16, i1 false), !dbg !337
  ret void, !dbg !337

if.true:                                          ; preds = %for.body
  %10 = load i64, ptr %list_index, align 8, !dbg !338
  %ptr_load = load ptr, ptr %list3, align 8, !dbg !338
  %elem_ptr = getelementptr %Any, ptr %ptr_load, i64 %10, !dbg !338
  %indexed_val = load %Any, ptr %elem_ptr, align 8, !dbg !338
  store %Any %indexed_val, ptr %item, align 8, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %item, metadata !339, metadata !DIExpression()), !dbg !338
  %11 = load i64, ptr %list_index, align 8, !dbg !340
  %12 = add i64 %11, 1, !dbg !340
  store i64 %12, ptr %list_index, align 8, !dbg !340
  %"struct member ptr772" = bitcast ptr %item to ptr, !dbg !341
  %"derefrence struct" = load ptr, ptr %"struct member ptr772", align 8, !dbg !341
  %"union member ptr73" = bitcast ptr %"derefrence struct" to ptr, !dbg !341
  %selected8 = load i32, ptr %"union member ptr73", align 4, !dbg !341
  store i32 %selected8, ptr %type, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %type, metadata !342, metadata !DIExpression()), !dbg !341
  %13 = load i32, ptr %type, align 4, !dbg !343
  %14 = icmp eq i32 %13, 3, !dbg !343
  br i1 %14, label %if.true9, label %if.else38, !dbg !334

if.aftr:                                          ; preds = %if.true60, %if.else63, %if.aftr49, %if.aftr17, %if.else65
  %15 = load i64, ptr %i, align 8, !dbg !334
  %16 = add i64 %15, 1, !dbg !334
  store i64 %16, ptr %i, align 8, !dbg !334
  br label %for.cond, !dbg !334

if.true9:                                         ; preds = %if.true
  store i64 0, ptr %to_parse, align 8, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %to_parse, metadata !345, metadata !DIExpression()), !dbg !344
  %"struct member ptr1174" = bitcast ptr %item to ptr, !dbg !346
  %"derefrence struct12" = load ptr, ptr %"struct member ptr1174", align 8, !dbg !346
  %"union member ptr1375" = bitcast ptr %"derefrence struct12" to ptr, !dbg !346
  %"struct member ptr14" = getelementptr inbounds %Type_Primitive, ptr %"union member ptr1375", i32 0, i32 1, !dbg !346
  %selected15 = load i32, ptr %"struct member ptr14", align 4, !dbg !346
  store i32 %selected15, ptr %size, align 4, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %size, metadata !347, metadata !DIExpression()), !dbg !346
  %17 = load i32, ptr %size, align 4, !dbg !348
  %18 = icmp eq i32 %17, 1, !dbg !348
  %19 = load i32, ptr %size, align 4, !dbg !348
  %20 = icmp eq i32 %19, 5, !dbg !348
  %21 = select i1 %18, i1 true, i1 %20, !dbg !348
  br i1 %21, label %if.true16, label %if.else, !dbg !349

if.true16:                                        ; preds = %if.true9
  %"struct member ptr18" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !350
  %selected19 = load ptr, ptr %"struct member ptr18", align 8, !dbg !350
  %derefrenced = load i8, ptr %selected19, align 1, !dbg !350
  %cast = sext i8 %derefrenced to i64, !dbg !350
  store i64 %cast, ptr %to_parse, align 8, !dbg !350
  br label %if.aftr17, !dbg !350

if.aftr17:                                        ; preds = %if.true27, %if.else33, %if.true20, %if.true16
  %22 = load i64, ptr %to_parse, align 8, !dbg !349
  call void @int_to_str(ptr %__apoc_internal_context37, i64 %22, ptr %builder), !dbg !349
  br label %if.aftr, !dbg !349

if.else:                                          ; preds = %if.true9
  %23 = load i32, ptr %size, align 4, !dbg !351
  %24 = icmp eq i32 %23, 2, !dbg !351
  %25 = load i32, ptr %size, align 4, !dbg !351
  %26 = icmp eq i32 %25, 6, !dbg !351
  %27 = select i1 %24, i1 true, i1 %26, !dbg !351
  br i1 %27, label %if.true20, label %if.else26, !dbg !352

if.true20:                                        ; preds = %if.else
  %"struct member ptr22" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !353
  %selected23 = load ptr, ptr %"struct member ptr22", align 8, !dbg !353
  %derefrenced24 = load i16, ptr %selected23, align 2, !dbg !353
  %cast25 = sext i16 %derefrenced24 to i64, !dbg !353
  store i64 %cast25, ptr %to_parse, align 8, !dbg !353
  br label %if.aftr17, !dbg !353

if.else26:                                        ; preds = %if.else
  %28 = load i32, ptr %size, align 4, !dbg !354
  %29 = icmp eq i32 %28, 3, !dbg !354
  %30 = load i32, ptr %size, align 4, !dbg !354
  %31 = icmp eq i32 %30, 7, !dbg !354
  %32 = select i1 %29, i1 true, i1 %31, !dbg !354
  br i1 %32, label %if.true27, label %if.else33, !dbg !352

if.true27:                                        ; preds = %if.else26
  %"struct member ptr29" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !355
  %selected30 = load ptr, ptr %"struct member ptr29", align 8, !dbg !355
  %derefrenced31 = load i32, ptr %selected30, align 4, !dbg !355
  %cast32 = sext i32 %derefrenced31 to i64, !dbg !355
  store i64 %cast32, ptr %to_parse, align 8, !dbg !355
  br label %if.aftr17, !dbg !355

if.else33:                                        ; preds = %if.else26
  %"struct member ptr34" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !352
  %selected35 = load ptr, ptr %"struct member ptr34", align 8, !dbg !352
  %derefrenced36 = load i64, ptr %selected35, align 8, !dbg !352
  store i64 %derefrenced36, ptr %to_parse, align 8, !dbg !352
  br label %if.aftr17, !dbg !352

if.else38:                                        ; preds = %if.true
  %33 = load i32, ptr %type, align 4, !dbg !356
  %34 = icmp eq i32 %33, 4, !dbg !356
  br i1 %34, label %if.true39, label %if.else59, !dbg !334

if.true39:                                        ; preds = %if.else38
  store double 0.000000e+00, ptr %to_parse41, align 8, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %to_parse41, metadata !358, metadata !DIExpression()), !dbg !357
  %"struct member ptr4276" = bitcast ptr %item to ptr, !dbg !359
  %"derefrence struct43" = load ptr, ptr %"struct member ptr4276", align 8, !dbg !359
  %"union member ptr4477" = bitcast ptr %"derefrence struct43" to ptr, !dbg !359
  %"struct member ptr45" = getelementptr inbounds %Type_Primitive, ptr %"union member ptr4477", i32 0, i32 1, !dbg !359
  %selected46 = load i32, ptr %"struct member ptr45", align 4, !dbg !359
  store i32 %selected46, ptr %size47, align 4, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %size47, metadata !360, metadata !DIExpression()), !dbg !359
  %35 = load i32, ptr %size47, align 4, !dbg !361
  %36 = icmp eq i32 %35, 9, !dbg !361
  br i1 %36, label %if.true48, label %if.else54, !dbg !362

if.true48:                                        ; preds = %if.true39
  %"struct member ptr50" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !363
  %selected51 = load ptr, ptr %"struct member ptr50", align 8, !dbg !363
  %derefrenced52 = load float, ptr %selected51, align 4, !dbg !363
  %cast53 = fpext float %derefrenced52 to double, !dbg !363
  store double %cast53, ptr %to_parse41, align 8, !dbg !363
  br label %if.aftr49, !dbg !363

if.aftr49:                                        ; preds = %if.else54, %if.true48
  %37 = load double, ptr %to_parse41, align 8, !dbg !362
  call void @float_to_str(ptr %__apoc_internal_context58, double %37, ptr %builder), !dbg !362
  br label %if.aftr, !dbg !362

if.else54:                                        ; preds = %if.true39
  %"struct member ptr55" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !364
  %selected56 = load ptr, ptr %"struct member ptr55", align 8, !dbg !364
  %derefrenced57 = load double, ptr %selected56, align 8, !dbg !364
  store double %derefrenced57, ptr %to_parse41, align 8, !dbg !364
  br label %if.aftr49, !dbg !364

if.else59:                                        ; preds = %if.else38
  %38 = load i32, ptr %type, align 4, !dbg !365
  %39 = icmp eq i32 %38, 5, !dbg !365
  br i1 %39, label %if.true60, label %if.else63, !dbg !334

if.true60:                                        ; preds = %if.else59
  call void @find_printable_type(ptr %__apoc_internal_context62, ptr %item, ptr %builder), !dbg !366
  br label %if.aftr, !dbg !366

if.else63:                                        ; preds = %if.else59
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arg_copy64, ptr align 8 %format2, i64 8, i1 false), !dbg !334
  %40 = load i64, ptr %i, align 8, !dbg !334
  %41 = call i8 @"overload[]"(ptr %arg_copy64, i64 %40), !dbg !334
  call void @"overload[x]=.12"(ptr %builder, i8 %41), !dbg !334
  br label %if.aftr, !dbg !334

if.else65:                                        ; preds = %for.body
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arg_copy66, ptr align 8 %format2, i64 8, i1 false), !dbg !334
  %42 = load i64, ptr %i, align 8, !dbg !334
  %43 = call i8 @"overload[]"(ptr %arg_copy66, i64 %42), !dbg !334
  call void @"overload[x]=.12"(ptr %builder, i8 %43), !dbg !334
  br label %if.aftr, !dbg !334
}

declare void @"format_args!@* u8!@-"(ptr, ptr, ...)

define void @"format_args!@string!@-"(ptr %__apoc_internal_context, ptr %format, ...) !dbg !367 {
entry:
  %arg_copy13 = alloca %string, align 8
  %out14 = alloca %string, align 8
  %__apoc_internal_context11 = alloca %__Internal_Context.0, align 8
  %list10 = alloca ptr, align 8
  %format9 = alloca %string, align 8
  %__apoc_internal_context8 = alloca %__Internal_Context.0, align 8
  %__ptr_context7 = alloca ptr, align 8
  %arg_copy = alloca %string, align 8
  %out = alloca %string, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context.0, align 8
  %list = alloca ptr, align 8
  %str = alloca %string, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context.0, align 8
  %format2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !368, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !371, metadata !DIExpression()), !dbg !370
  store ptr %format, ptr %format2, align 8
  %ptr_to_ret_ptr16 = bitcast ptr %__apoc_internal_context3 to ptr, !dbg !372
  store ptr %str, ptr %ptr_to_ret_ptr16, align 8, !dbg !372
  %1 = load ptr, ptr %format2, align 8, !dbg !372
  call void @to_string(ptr %__apoc_internal_context3, ptr %1), !dbg !372
  call void @llvm.dbg.declare(metadata ptr %str, metadata !373, metadata !DIExpression()), !dbg !372
  store i64 0, ptr %list, align 8, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %list, metadata !375, metadata !DIExpression()), !dbg !374
  call void @llvm.va_start(ptr %list), !dbg !376
  %ptr_to_ret_ptr517 = bitcast ptr %__apoc_internal_context4 to ptr, !dbg !377
  store ptr %out, ptr %ptr_to_ret_ptr517, align 8, !dbg !377
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arg_copy, ptr align 8 %str, i64 8, i1 false), !dbg !377
  %2 = load ptr, ptr %list, align 8, !dbg !377
  call void @parse_format(ptr %__apoc_internal_context4, ptr %arg_copy, ptr %2), !dbg !377
  call void @llvm.dbg.declare(metadata ptr %out, metadata !378, metadata !DIExpression()), !dbg !377
  call void @llvm.va_end(ptr %list), !dbg !379
  %ret_ptr18 = bitcast ptr %__apoc_internal_context1 to ptr, !dbg !380
  %3 = load ptr, ptr %ret_ptr18, align 8, !dbg !380
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %out, i64 16, i1 false), !dbg !380
  ret void, !dbg !380
}

declare void @"print!@* u8!@-"(ptr, ptr, ...)

define void @"print!@string!@-"(ptr %__apoc_internal_context, ptr %format, ...) !dbg !381 {
entry:
  %__apoc_internal_context25 = alloca %__Internal_Context.0, align 8
  %stdout24 = alloca ptr, align 8
  %__apoc_internal_context23 = alloca %__Internal_Context.0, align 8
  %arg_copy21 = alloca %string, align 8
  %out22 = alloca %string, align 8
  %__apoc_internal_context19 = alloca %__Internal_Context.0, align 8
  %list18 = alloca ptr, align 8
  %format17 = alloca %string, align 8
  %__apoc_internal_context16 = alloca %__Internal_Context.0, align 8
  %__ptr_context15 = alloca ptr, align 8
  %__apoc_internal_context9 = alloca %__Internal_Context.0, align 8
  %stdout = alloca ptr, align 8
  %__apoc_internal_context8 = alloca %__Internal_Context.0, align 8
  %arg_copy = alloca %string, align 8
  %out = alloca %string, align 8
  %__apoc_internal_context6 = alloca %__Internal_Context.0, align 8
  %list = alloca ptr, align 8
  %str = alloca %string, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context.0, align 8
  %format2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !384, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !389, metadata !DIExpression()), !dbg !388
  store ptr %format, ptr %format2, align 8
  %ptr_to_ret_ptr31 = bitcast ptr %__apoc_internal_context3 to ptr, !dbg !390
  store ptr %str, ptr %ptr_to_ret_ptr31, align 8, !dbg !390
  %1 = load ptr, ptr %format2, align 8, !dbg !390
  call void @to_string(ptr %__apoc_internal_context3, ptr %1), !dbg !390
  call void @llvm.dbg.declare(metadata ptr %str, metadata !391, metadata !DIExpression()), !dbg !390
  %"struct member ptr" = getelementptr inbounds %string, ptr %str, i32 0, i32 1, !dbg !392
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !392
  %"struct member ptr432" = bitcast ptr %str to ptr, !dbg !392
  %selected5 = load ptr, ptr %"struct member ptr432", align 8, !dbg !392
  %2 = call i32 (ptr, ...) @printf(ptr @4, i64 %selected, ptr %selected5), !dbg !392
  store i64 0, ptr %list, align 8, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %list, metadata !394, metadata !DIExpression()), !dbg !393
  call void @llvm.va_start(ptr %list), !dbg !395
  %ptr_to_ret_ptr733 = bitcast ptr %__apoc_internal_context6 to ptr, !dbg !396
  store ptr %out, ptr %ptr_to_ret_ptr733, align 8, !dbg !396
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arg_copy, ptr align 8 %str, i64 8, i1 false), !dbg !396
  %3 = load ptr, ptr %list, align 8, !dbg !396
  call void @parse_format(ptr %__apoc_internal_context6, ptr %arg_copy, ptr %3), !dbg !396
  call void @llvm.dbg.declare(metadata ptr %out, metadata !397, metadata !DIExpression()), !dbg !396
  call void @llvm.va_end(ptr %list), !dbg !398
  %4 = call ptr @get_stdout(ptr %__apoc_internal_context8), !dbg !399
  store ptr %4, ptr %stdout, align 8, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %stdout, metadata !400, metadata !DIExpression()), !dbg !399
  %5 = load ptr, ptr %stdout, align 8, !dbg !401
  %"struct member ptr1034" = bitcast ptr %out to ptr, !dbg !401
  %selected11 = load ptr, ptr %"struct member ptr1034", align 8, !dbg !401
  %"struct member ptr12" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !401
  %selected13 = load i64, ptr %"struct member ptr12", align 8, !dbg !401
  %cast = trunc i64 %selected13 to i32, !dbg !401
  %6 = call i8 @write_file(ptr %__apoc_internal_context9, ptr %5, ptr %selected11, i32 %cast), !dbg !401
  ret void, !dbg !402
}

define void @copy(ptr %__apoc_internal_context, ptr %dst, ptr %src, i64 %size) !dbg !403 {
entry:
  %i = alloca i64, align 8
  %a1 = alloca ptr, align 8
  %a0 = alloca ptr, align 8
  %size4 = alloca i64, align 8
  %src3 = alloca ptr, align 8
  %dst2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata ptr %dst2, metadata !408, metadata !DIExpression()), !dbg !407
  store ptr %dst, ptr %dst2, align 8
  call void @llvm.dbg.declare(metadata ptr %src3, metadata !409, metadata !DIExpression()), !dbg !407
  store ptr %src, ptr %src3, align 8
  call void @llvm.dbg.declare(metadata ptr %size4, metadata !410, metadata !DIExpression()), !dbg !407
  store i64 %size, ptr %size4, align 8
  %1 = load ptr, ptr %dst2, align 8, !dbg !411
  store ptr %1, ptr %a0, align 8, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %a0, metadata !412, metadata !DIExpression()), !dbg !411
  %2 = load ptr, ptr %src3, align 8, !dbg !413
  store ptr %2, ptr %a1, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !414, metadata !DIExpression()), !dbg !413
  store i64 0, ptr %i, align 8, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %i, metadata !416, metadata !DIExpression()), !dbg !417
  br label %for.cond, !dbg !415

for.cond:                                         ; preds = %for.incr, %entry
  %3 = load i64, ptr %i, align 8, !dbg !415
  %4 = load i64, ptr %size4, align 8, !dbg !415
  %5 = icmp slt i64 %3, %4, !dbg !415
  br i1 %5, label %for.body, label %for.aftr, !dbg !415

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8, !dbg !418
  %ptr_load = load ptr, ptr %a1, align 8, !dbg !418
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %6, !dbg !418
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !418
  %7 = load i64, ptr %i, align 8, !dbg !418
  %ptr_load5 = load ptr, ptr %a0, align 8, !dbg !418
  %elem_ptr6 = getelementptr i8, ptr %ptr_load5, i64 %7, !dbg !418
  store i8 %indexed_val, ptr %elem_ptr6, align 1, !dbg !418
  br label %for.incr, !dbg !418

for.aftr:                                         ; preds = %for.cond
  ret void, !dbg !419

for.incr:                                         ; preds = %for.body
  %8 = load i64, ptr %i, align 8, !dbg !418
  %9 = add i64 %8, 1, !dbg !418
  store i64 %9, ptr %i, align 8, !dbg !418
  br label %for.cond, !dbg !418
}

define i64 @len(ptr %__apoc_internal_context, ptr %text) !dbg !420 {
entry:
  %result = alloca i64, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !425, metadata !DIExpression()), !dbg !424
  store ptr %text, ptr %text2, align 8
  store i64 0, ptr %result, align 8, !dbg !426
  call void @llvm.dbg.declare(metadata ptr %result, metadata !427, metadata !DIExpression()), !dbg !426
  store i64 0, ptr %result, align 8, !dbg !428
  br label %for.cond, !dbg !428

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i64, ptr %result, align 8, !dbg !428
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !428
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %1, !dbg !428
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !428
  %2 = icmp ne i8 %indexed_val, 0, !dbg !428
  br i1 %2, label %for.body, label %for.aftr, !dbg !428

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %result, align 8, !dbg !428
  %4 = add i64 %3, 1, !dbg !428
  store i64 %4, ptr %result, align 8, !dbg !428
  br label %for.cond, !dbg !428

for.aftr:                                         ; preds = %for.cond
  %5 = load i64, ptr %result, align 8, !dbg !429
  ret i64 %5, !dbg !429
}

declare i32 @GetLastError()

declare ptr @CreateFileA(ptr, i64, i32, ptr, i64, i64, ptr)

declare i8 @WriteFile(ptr, ptr, i32, ptr, ptr)

declare ptr @GetStdHandle(i32)

define ptr @open_file(ptr %__apoc_internal_context, ptr %f_name, i64 %access) !dbg !430 {
entry:
  %file = alloca ptr, align 8
  %win_access = alloca i64, align 8
  %access3 = alloca i64, align 8
  %f_name2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata ptr %f_name2, metadata !435, metadata !DIExpression()), !dbg !434
  store ptr %f_name, ptr %f_name2, align 8
  call void @llvm.dbg.declare(metadata ptr %access3, metadata !436, metadata !DIExpression()), !dbg !434
  store i64 %access, ptr %access3, align 8
  store i64 0, ptr %win_access, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata ptr %win_access, metadata !438, metadata !DIExpression()), !dbg !437
  %1 = load i64, ptr %access3, align 8, !dbg !439
  %2 = and i64 %1, 1, !dbg !439
  %cast = trunc i64 %2 to i8, !dbg !439
  %boolean_expr = trunc i8 %cast to i1, !dbg !439
  br i1 %boolean_expr, label %if.true, label %if.aftr, !dbg !440

if.true:                                          ; preds = %entry
  %3 = load i64, ptr %win_access, align 8, !dbg !441
  %4 = or i64 %3, 1179785, !dbg !441
  store i64 %4, ptr %win_access, align 8, !dbg !441
  br label %if.aftr, !dbg !441

if.aftr:                                          ; preds = %entry, %if.true
  %5 = load i64, ptr %access3, align 8, !dbg !442
  %6 = and i64 %5, 1, !dbg !442
  %cast4 = trunc i64 %6 to i8, !dbg !442
  %boolean_expr5 = trunc i8 %cast4 to i1, !dbg !442
  br i1 %boolean_expr5, label %if.true6, label %if.aftr7, !dbg !440

if.true6:                                         ; preds = %if.aftr
  %7 = load i64, ptr %win_access, align 8, !dbg !443
  %8 = or i64 %7, 1179926, !dbg !443
  store i64 %8, ptr %win_access, align 8, !dbg !443
  br label %if.aftr7, !dbg !443

if.aftr7:                                         ; preds = %if.aftr, %if.true6
  %9 = load i64, ptr %access3, align 8, !dbg !444
  %10 = and i64 %9, 2, !dbg !444
  %cast8 = trunc i64 %10 to i8, !dbg !444
  %boolean_expr9 = trunc i8 %cast8 to i1, !dbg !444
  br i1 %boolean_expr9, label %if.true10, label %if.aftr11, !dbg !440

if.true10:                                        ; preds = %if.aftr7
  %11 = load i64, ptr %win_access, align 8, !dbg !445
  %12 = or i64 %11, 1179808, !dbg !445
  store i64 %12, ptr %win_access, align 8, !dbg !445
  br label %if.aftr11, !dbg !445

if.aftr11:                                        ; preds = %if.aftr7, %if.true10
  %13 = load ptr, ptr %f_name2, align 8, !dbg !446
  %14 = load i64, ptr %win_access, align 8, !dbg !446
  %15 = call ptr @CreateFileA(ptr %13, i64 %14, i32 0, ptr null, i64 4, i64 32, ptr null), !dbg !446
  store ptr %15, ptr %file, align 8, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %file, metadata !447, metadata !DIExpression()), !dbg !446
  %16 = load ptr, ptr %file, align 8, !dbg !440
  ret ptr %16, !dbg !440
}

define i8 @write_file(ptr %__apoc_internal_context, ptr %file, ptr %data, i32 %size) !dbg !448 {
entry:
  %result = alloca i8, align 1
  %written = alloca i32, align 4
  %size4 = alloca i32, align 4
  %data3 = alloca ptr, align 8
  %file2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata ptr %file2, metadata !454, metadata !DIExpression()), !dbg !453
  store ptr %file, ptr %file2, align 8
  call void @llvm.dbg.declare(metadata ptr %data3, metadata !455, metadata !DIExpression()), !dbg !453
  store ptr %data, ptr %data3, align 8
  call void @llvm.dbg.declare(metadata ptr %size4, metadata !456, metadata !DIExpression()), !dbg !453
  store i32 %size, ptr %size4, align 4
  store i32 0, ptr %written, align 4, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %written, metadata !458, metadata !DIExpression()), !dbg !457
  %1 = load ptr, ptr %file2, align 8, !dbg !459
  %2 = load ptr, ptr %data3, align 8, !dbg !459
  %3 = load i32, ptr %size4, align 4, !dbg !459
  %4 = call i8 @WriteFile(ptr %1, ptr %2, i32 %3, ptr %written, ptr null), !dbg !459
  %5 = load i32, ptr %written, align 4, !dbg !460
  %6 = load i32, ptr %size4, align 4, !dbg !460
  %7 = icmp eq i32 %5, %6, !dbg !460
  store i1 %7, ptr %result, align 1, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %result, metadata !461, metadata !DIExpression()), !dbg !460
  %8 = load i8, ptr %result, align 1, !dbg !462
  ret i8 %8, !dbg !462
}

define ptr @get_stdout(ptr %__apoc_internal_context) !dbg !463 {
entry:
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !466, metadata !DIExpression()), !dbg !467
  %1 = call ptr @GetStdHandle(i32 -11), !dbg !468
  ret ptr %1, !dbg !468
}

declare void @get_type(ptr, ptr)

define i32 @main() !dbg !469 {
entry:
  %to_any = alloca %Any, align 8
  %any_val = alloca %Printable_Struct, align 4
  %member_names = alloca ptr, i64 16, align 1
  %runtime_type_info = alloca %Type_Info, align 16
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__apoc_internal_context = alloca %__Internal_Context.0, align 8
  %to_print = alloca %Printable_Struct, align 4
  %0 = getelementptr inbounds %Printable_Struct, ptr %to_print, i32 0, i32 1, !dbg !472
  store i32 20, ptr %0, align 8, !dbg !472
  %1 = bitcast ptr %to_print to ptr, !dbg !472
  store i32 10, ptr %1, align 8, !dbg !472
  call void @llvm.dbg.declare(metadata ptr %to_print, metadata !473, metadata !DIExpression()), !dbg !472
  call void @register_printable(ptr %__apoc_internal_context, ptr @print_printable_struct, ptr @5), !dbg !478
  %2 = bitcast ptr %runtime_type_info to ptr, !dbg !479
  store i32 5, ptr %2, align 32, !dbg !479
  %3 = getelementptr inbounds %Type_Struct, ptr %runtime_type_info, i32 0, i32 1, !dbg !479
  store i32 2, ptr %3, align 32, !dbg !479
  %4 = getelementptr inbounds %Type_Struct, ptr %runtime_type_info, i32 0, i32 2, !dbg !479
  store i8 0, ptr %4, align 8, !dbg !479
  %5 = getelementptr inbounds %Type_Struct, ptr %runtime_type_info, i32 0, i32 3, !dbg !479
  store i8 0, ptr %5, align 8, !dbg !479
  %6 = getelementptr inbounds %Type_Struct, ptr %runtime_type_info, i32 0, i32 4, !dbg !479
  store ptr @7, ptr %6, align 8, !dbg !479
  %7 = getelementptr inbounds %Type_Struct, ptr %runtime_type_info, i32 0, i32 5, !dbg !479
  %8 = getelementptr inbounds %Type_Struct, ptr %runtime_type_info, i32 0, i32 6, !dbg !479
  %9 = bitcast ptr %member_names to ptr, !dbg !479
  store ptr @8, ptr %9, align 8, !dbg !479
  %10 = getelementptr ptr, ptr %member_names, i64 1, !dbg !479
  store ptr @9, ptr %10, align 8, !dbg !479
  store ptr %member_names, ptr %7, align 8, !dbg !479
  store ptr %to_print, ptr %any_val, align 8, !dbg !479
  %11 = bitcast ptr %to_any to ptr, !dbg !479
  %12 = getelementptr inbounds %Any, ptr %to_any, i32 0, i32 1, !dbg !479
  store ptr %runtime_type_info, ptr %11, align 8, !dbg !479
  store ptr %any_val, ptr %12, align 8, !dbg !479
  %any_pass = load %Any, ptr %to_any, align 8, !dbg !479
  call void (ptr, ptr, ...) @"print!@string!@-"(ptr %__apoc_internal_context1, ptr @6, %Any %any_pass), !dbg !479
  ret i32 0, !dbg !480
}

define void @print_printable_struct(ptr %__apoc_internal_context, ptr %the_struct) !dbg !481 {
entry:
  %to_any9 = alloca %Any, align 8
  %any_val8 = alloca i32, align 4
  %runtime_type_info7 = alloca %Type_Info, align 16
  %to_any = alloca %Any, align 8
  %any_val = alloca i32, align 4
  %runtime_type_info = alloca %Type_Info, align 16
  %to_return = alloca %string, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context.0, align 8
  %casted = alloca ptr, align 8
  %the_struct2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata ptr %the_struct2, metadata !486, metadata !DIExpression()), !dbg !485
  store ptr %the_struct, ptr %the_struct2, align 8
  %1 = load ptr, ptr %the_struct2, align 8, !dbg !487
  store ptr %1, ptr %casted, align 8, !dbg !487
  call void @llvm.dbg.declare(metadata ptr %casted, metadata !488, metadata !DIExpression()), !dbg !487
  %ret_ptr11 = bitcast ptr %__apoc_internal_context1 to ptr, !dbg !490
  %2 = load ptr, ptr %ret_ptr11, align 8, !dbg !490
  %ptr_to_ret_ptr12 = bitcast ptr %__apoc_internal_context3 to ptr, !dbg !490
  store ptr %to_return, ptr %ptr_to_ret_ptr12, align 8, !dbg !490
  %"derefrence struct" = load ptr, ptr %casted, align 8, !dbg !490
  %"struct member ptr13" = bitcast ptr %"derefrence struct" to ptr, !dbg !490
  %selected = load i32, ptr %"struct member ptr13", align 4, !dbg !490
  %3 = bitcast ptr %runtime_type_info to ptr, !dbg !490
  store i32 3, ptr %3, align 32, !dbg !490
  %4 = getelementptr inbounds %Type_Primitive, ptr %runtime_type_info, i32 0, i32 1, !dbg !490
  store i32 3, ptr %4, align 32, !dbg !490
  store i32 %selected, ptr %any_val, align 4, !dbg !490
  %5 = bitcast ptr %to_any to ptr, !dbg !490
  %6 = getelementptr inbounds %Any, ptr %to_any, i32 0, i32 1, !dbg !490
  store ptr %runtime_type_info, ptr %5, align 8, !dbg !490
  store ptr %any_val, ptr %6, align 8, !dbg !490
  %any_pass = load %Any, ptr %to_any, align 8, !dbg !490
  %"derefrence struct4" = load ptr, ptr %casted, align 8, !dbg !490
  %"struct member ptr5" = getelementptr inbounds %Printable_Struct, ptr %"derefrence struct4", i32 0, i32 1, !dbg !490
  %selected6 = load i32, ptr %"struct member ptr5", align 4, !dbg !490
  %7 = bitcast ptr %runtime_type_info7 to ptr, !dbg !490
  store i32 3, ptr %7, align 32, !dbg !490
  %8 = getelementptr inbounds %Type_Primitive, ptr %runtime_type_info7, i32 0, i32 1, !dbg !490
  store i32 3, ptr %8, align 32, !dbg !490
  store i32 %selected6, ptr %any_val8, align 4, !dbg !490
  %9 = bitcast ptr %to_any9 to ptr, !dbg !490
  %10 = getelementptr inbounds %Any, ptr %to_any9, i32 0, i32 1, !dbg !490
  store ptr %runtime_type_info7, ptr %9, align 8, !dbg !490
  store ptr %any_val8, ptr %10, align 8, !dbg !490
  %any_pass10 = load %Any, ptr %to_any9, align 8, !dbg !490
  call void (ptr, ptr, ...) @"format_args!@string!@-"(ptr %__apoc_internal_context3, ptr @10, %Any %any_pass, %Any %any_pass10), !dbg !490
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %to_return, i64 16, i1 false), !dbg !490
  ret void, !dbg !490
}

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)

; Function Attrs: alwaysinline
define i8 @"overload[]"(ptr %str, i64 %index) #0 !dbg !491 {
entry:
  %index2 = alloca i64, align 8
  %str1 = alloca %string, align 8
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load %string, ptr %str, align 8
  store %string %0, ptr %str1, align 8
  call void @llvm.dbg.declare(metadata ptr %index2, metadata !496, metadata !DIExpression()), !dbg !495
  store i64 %index, ptr %index2, align 8
  %1 = load i64, ptr %index2, align 8, !dbg !497
  %"struct member ptr3" = bitcast ptr %str1 to ptr, !dbg !497
  %ptr_load = load ptr, ptr %"struct member ptr3", align 8, !dbg !497
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %1, !dbg !497
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !497
  ret i8 %indexed_val, !dbg !497
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline
define void @"overload+"(ptr %__apoc_internal_context, ptr %str, ptr %text) #0 !dbg !498 {
entry:
  %__apoc_internal_context17 = alloca %__Internal_Context.0, align 8
  %__apoc_internal_context10 = alloca %__Internal_Context.0, align 8
  %__apoc_internal_context6 = alloca %__Internal_Context.0, align 8
  %text_len = alloca i64, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context.0, align 8
  %out = alloca %string, align 8
  %text3 = alloca ptr, align 8
  %str2 = alloca %string, align 8
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %__apoc_internal_context1, metadata !501, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !503, metadata !DIExpression()), !dbg !502
  %1 = load %string, ptr %str, align 8
  store %string %1, ptr %str2, align 8
  call void @llvm.dbg.declare(metadata ptr %text3, metadata !504, metadata !DIExpression()), !dbg !502
  store ptr %text, ptr %text3, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false), !dbg !505
  call void @llvm.dbg.declare(metadata ptr %out, metadata !506, metadata !DIExpression()), !dbg !505
  %2 = load ptr, ptr %text3, align 8, !dbg !507
  %3 = call i64 @len(ptr %__apoc_internal_context4, ptr %2), !dbg !507
  store i64 %3, ptr %text_len, align 8, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !508, metadata !DIExpression()), !dbg !507
  %"struct member ptr" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !509
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !509
  %4 = load i64, ptr %text_len, align 8, !dbg !509
  %5 = add i64 %selected, %4, !dbg !509
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !509
  store i64 %5, ptr %"struct member ptr5", align 8, !dbg !509
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !510
  %selected8 = load i64, ptr %"struct member ptr7", align 8, !dbg !510
  %6 = call ptr @mem_alloc(ptr %__apoc_internal_context6, i64 %selected8), !dbg !510
  %"struct member ptr921" = bitcast ptr %out to ptr, !dbg !510
  store ptr %6, ptr %"struct member ptr921", align 8, !dbg !510
  %"struct member ptr1122" = bitcast ptr %out to ptr, !dbg !511
  %selected12 = load ptr, ptr %"struct member ptr1122", align 8, !dbg !511
  %"struct member ptr1323" = bitcast ptr %str2 to ptr, !dbg !511
  %selected14 = load ptr, ptr %"struct member ptr1323", align 8, !dbg !511
  %"struct member ptr15" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !511
  %selected16 = load i64, ptr %"struct member ptr15", align 8, !dbg !511
  call void @copy(ptr %__apoc_internal_context10, ptr %selected12, ptr %selected14, i64 %selected16), !dbg !511
  %"struct member ptr18" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !512
  %selected19 = load i64, ptr %"struct member ptr18", align 8, !dbg !512
  %"struct member ptr2024" = bitcast ptr %out to ptr, !dbg !512
  %ptr_load = load ptr, ptr %"struct member ptr2024", align 8, !dbg !512
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected19, !dbg !512
  %7 = load ptr, ptr %text3, align 8, !dbg !512
  %8 = load i64, ptr %text_len, align 8, !dbg !512
  call void @copy(ptr %__apoc_internal_context17, ptr %elem_ptr, ptr %7, i64 %8), !dbg !512
  %ret_ptr25 = bitcast ptr %__apoc_internal_context1 to ptr, !dbg !513
  %9 = load ptr, ptr %ret_ptr25, align 8, !dbg !513
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %out, i64 16, i1 false), !dbg !513
  ret void, !dbg !513
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: alwaysinline
define void @"overload[x]="(ptr %str, ptr %text) #0 !dbg !514 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context.0, align 8
  %copy_size = alloca i64, align 8
  %i = alloca i64, align 8
  %current = alloca ptr, align 8
  %times = alloca i64, align 8
  %text_len = alloca i64, align 8
  %__apoc_internal_context = alloca %__Internal_Context.0, align 8
  %text2 = alloca ptr, align 8
  %str1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !517, metadata !DIExpression()), !dbg !518
  store ptr %str, ptr %str1, align 8
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !519, metadata !DIExpression()), !dbg !518
  store ptr %text, ptr %text2, align 8
  %0 = load ptr, ptr %text2, align 8, !dbg !520
  %1 = call i64 @len(ptr %__apoc_internal_context, ptr %0), !dbg !520
  store i64 %1, ptr %text_len, align 8, !dbg !520
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !521, metadata !DIExpression()), !dbg !520
  %2 = load i64, ptr %text_len, align 8, !dbg !522
  %3 = sdiv i64 %2, 256, !dbg !522
  store i64 %3, ptr %times, align 8, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %times, metadata !523, metadata !DIExpression()), !dbg !522
  %4 = load ptr, ptr %str1, align 8, !dbg !524
  store ptr %4, ptr %current, align 8, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %current, metadata !525, metadata !DIExpression()), !dbg !524
  store i64 0, ptr %i, align 8, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %i, metadata !527, metadata !DIExpression()), !dbg !528
  br label %for.cond, !dbg !526

for.cond:                                         ; preds = %if.aftr, %entry
  %5 = load i64, ptr %i, align 8, !dbg !526
  %6 = sub i64 %5, 1, !dbg !526
  %7 = load i64, ptr %times, align 8, !dbg !526
  %8 = icmp slt i64 %6, %7, !dbg !526
  br i1 %8, label %for.body, label %for.aftr, !dbg !526

for.body:                                         ; preds = %for.cond
  %9 = load i64, ptr %text_len, align 8, !dbg !529
  store i64 %9, ptr %copy_size, align 8, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !530, metadata !DIExpression()), !dbg !529
  %10 = load i64, ptr %copy_size, align 8, !dbg !531
  %11 = icmp sgt i64 %10, 256, !dbg !531
  br i1 %11, label %if.true, label %if.aftr, !dbg !532

for.aftr:                                         ; preds = %for.cond
  ret void, !dbg !533

if.true:                                          ; preds = %for.body
  store i64 256, ptr %copy_size, align 8, !dbg !534
  br label %if.aftr, !dbg !534

if.aftr:                                          ; preds = %for.body, %if.true
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !535
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1, !dbg !535
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !535
  %"derefrence struct4" = load ptr, ptr %current, align 8, !dbg !535
  %"struct member ptr515" = bitcast ptr %"derefrence struct4" to ptr, !dbg !535
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr515", i64 0, i64 %selected, !dbg !535
  %12 = load i64, ptr %i, align 8, !dbg !535
  %13 = mul i64 %12, 256, !dbg !535
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !535
  %elem_ptr6 = getelementptr i8, ptr %ptr_load, i64 %13, !dbg !535
  %14 = load i64, ptr %copy_size, align 8, !dbg !535
  call void @copy(ptr %__apoc_internal_context3, ptr %elem_ptr, ptr %elem_ptr6, i64 %14), !dbg !535
  %"derefrence struct7" = load ptr, ptr %current, align 8, !dbg !536
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %"derefrence struct7", i32 0, i32 1, !dbg !536
  %selected9 = load i64, ptr %"struct member ptr8", align 8, !dbg !536
  %15 = load i64, ptr %copy_size, align 8, !dbg !536
  %16 = add i64 %selected9, %15, !dbg !536
  %"derefrence struct10" = load ptr, ptr %current, align 8, !dbg !536
  %"struct member ptr11" = getelementptr inbounds %String_Builder, ptr %"derefrence struct10", i32 0, i32 1, !dbg !536
  store i64 %16, ptr %"struct member ptr11", align 8, !dbg !536
  %17 = load i64, ptr %text_len, align 8, !dbg !537
  %18 = sub i64 %17, 256, !dbg !537
  store i64 %18, ptr %text_len, align 8, !dbg !537
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !532
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 2, !dbg !532
  %selected14 = load ptr, ptr %"struct member ptr13", align 8, !dbg !532
  store ptr %selected14, ptr %current, align 8, !dbg !532
  %19 = load i64, ptr %i, align 8, !dbg !532
  %20 = add i64 %19, 1, !dbg !532
  store i64 %20, ptr %i, align 8, !dbg !532
  br label %for.cond, !dbg !532
}

; Function Attrs: alwaysinline
define void @"overload[x]=.12"(ptr %str, i8 %c) #0 !dbg !538 {
entry:
  %__apoc_internal_context = alloca %__Internal_Context.0, align 8
  %to_put = alloca ptr, align 8
  %c2 = alloca i8, align 1
  %str1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !541, metadata !DIExpression()), !dbg !542
  store ptr %str, ptr %str1, align 8
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !543, metadata !DIExpression()), !dbg !542
  store i8 %c, ptr %c2, align 1
  %0 = load ptr, ptr %str1, align 8, !dbg !544
  store ptr %0, ptr %to_put, align 8, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %to_put, metadata !545, metadata !DIExpression()), !dbg !544
  br label %for.cond, !dbg !546

for.cond:                                         ; preds = %if.true11, %if.aftr, %entry
  %1 = load ptr, ptr %to_put, align 8, !dbg !546
  %2 = icmp ne ptr %1, null, !dbg !546
  %"derefrence struct" = load ptr, ptr %to_put, align 8, !dbg !546
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1, !dbg !546
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !546
  %3 = icmp eq i64 %selected, 256, !dbg !546
  %"&&" = and i1 %2, %3, !dbg !546
  br i1 %"&&", label %for.body, label %for.aftr, !dbg !546

for.body:                                         ; preds = %for.cond
  %"derefrence struct3" = load ptr, ptr %to_put, align 8, !dbg !547
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 2, !dbg !547
  %selected5 = load ptr, ptr %"struct member ptr4", align 8, !dbg !547
  %4 = icmp eq ptr %selected5, null, !dbg !547
  br i1 %4, label %if.true, label %if.aftr, !dbg !548

for.aftr:                                         ; preds = %for.cond
  %5 = load i8, ptr %c2, align 1, !dbg !549
  %"derefrence struct16" = load ptr, ptr %to_put, align 8, !dbg !549
  %"struct member ptr17" = getelementptr inbounds %String_Builder, ptr %"derefrence struct16", i32 0, i32 1, !dbg !549
  %selected18 = load i64, ptr %"struct member ptr17", align 8, !dbg !549
  %"derefrence struct19" = load ptr, ptr %to_put, align 8, !dbg !549
  %"struct member ptr2026" = bitcast ptr %"derefrence struct19" to ptr, !dbg !549
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr2026", i64 0, i64 %selected18, !dbg !549
  store i8 %5, ptr %elem_ptr, align 1, !dbg !549
  %"derefrence struct21" = load ptr, ptr %to_put, align 8, !dbg !550
  %"struct member ptr22" = getelementptr inbounds %String_Builder, ptr %"derefrence struct21", i32 0, i32 1, !dbg !550
  %selected23 = load i64, ptr %"struct member ptr22", align 8, !dbg !550
  %6 = add i64 %selected23, 1, !dbg !550
  %"derefrence struct24" = load ptr, ptr %to_put, align 8, !dbg !550
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 1, !dbg !550
  store i64 %6, ptr %"struct member ptr25", align 8, !dbg !550
  ret void, !dbg !551

if.true:                                          ; preds = %for.body
  %7 = call ptr @mem_alloc(ptr %__apoc_internal_context, i64 272), !dbg !552
  %"derefrence struct6" = load ptr, ptr %to_put, align 8, !dbg !552
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2, !dbg !552
  store ptr %7, ptr %"struct member ptr7", align 8, !dbg !552
  br label %if.aftr, !dbg !552

if.aftr:                                          ; preds = %for.body, %if.true
  %"derefrence struct8" = load ptr, ptr %to_put, align 8, !dbg !553
  %"struct member ptr9" = getelementptr inbounds %String_Builder, ptr %"derefrence struct8", i32 0, i32 1, !dbg !553
  %selected10 = load i64, ptr %"struct member ptr9", align 8, !dbg !553
  %8 = icmp eq i64 %selected10, 256, !dbg !553
  br i1 %8, label %if.true11, label %for.cond, !dbg !548

if.true11:                                        ; preds = %if.aftr
  %"derefrence struct13" = load ptr, ptr %to_put, align 8, !dbg !548
  %"struct member ptr14" = getelementptr inbounds %String_Builder, ptr %"derefrence struct13", i32 0, i32 2, !dbg !548
  %selected15 = load ptr, ptr %"struct member ptr14", align 8, !dbg !548
  store ptr %selected15, ptr %to_put, align 8, !dbg !548
  br label %for.cond, !dbg !548
}

; Function Attrs: alwaysinline
define i8 @overload(ptr %str, ptr %text) #0 !dbg !554 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context.0, align 8
  %__apoc_internal_context = alloca %__Internal_Context.0, align 8
  %str2 = alloca %string, align 8
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 8
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !557, metadata !DIExpression()), !dbg !558
  %0 = load %string, ptr %str, align 8
  store %string %0, ptr %str1, align 8
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !559, metadata !DIExpression()), !dbg !558
  store ptr %text, ptr %text2, align 8
  %1 = load ptr, ptr %text2, align 8, !dbg !560
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1), !dbg !560
  %3 = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !560
  store i64 %2, ptr %3, align 8, !dbg !560
  %4 = load ptr, ptr %text2, align 8, !dbg !560
  %5 = bitcast ptr %str2 to ptr, !dbg !560
  store ptr %4, ptr %5, align 8, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !561, metadata !DIExpression()), !dbg !560
  %6 = call i8 @compare(ptr %__apoc_internal_context3, ptr %str1, ptr %str2), !dbg !562
  ret i8 %6, !dbg !562
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

attributes #0 = { alwaysinline }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!40}
!llvm.module.flags = !{!43, !44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STRING_BUFFER_SIZE", scope: !2, file: !2, line: 4, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./String.apoc", directory: "W:\\ApocCompiler\\bin\\Standard")
!3 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression())
!5 = distinct !DIGlobalVariable(name: "printable_types", scope: !2, file: !2, line: 24, type: !6, isLocal: true, isDefinition: true)
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 131072, align: 64, elements: !14)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "Printable_Type_Info", scope: !2, file: !2, line: 18, size: 128, align: 64, elements: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2, file: !2, line: 20, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type_name", scope: !2, file: !2, line: 21, baseType: !12, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DISubrange(count: 1024, lowerBound: 0)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "last_printable_type", scope: !2, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "DELETE", scope: !20, file: !20, line: 58, type: !3, isLocal: true, isDefinition: true)
!20 = !DIFile(filename: "./Windows.apoc", directory: "W:\\ApocCompiler\\bin\\Standard")
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "READ_CONTROL", scope: !20, file: !20, line: 59, type: !3, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "WRITE_DAC", scope: !20, file: !20, line: 60, type: !3, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "WRITE_OWNER", scope: !20, file: !20, line: 61, type: !3, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "SYNCHRONIZE", scope: !20, file: !20, line: 62, type: !3, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "my_global_var", scope: !31, file: !31, line: 4, type: !3, isLocal: true, isDefinition: true)
!31 = !DIFile(filename: "./Test.apoc", directory: "W:\\ApocCompiler")
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "true", scope: !34, file: !34, line: 5, type: !35, isLocal: true, isDefinition: true)
!34 = !DIFile(filename: "./Basic.apoc", directory: "W:\\ApocCompiler\\bin\\Standard")
!35 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "false", scope: !34, file: !34, line: 6, type: !35, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "null", scope: !34, file: !34, line: 7, type: !10, isLocal: true, isDefinition: true)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !42)
!41 = !DIFile(filename: "C_Standard.apoc", directory: "W:\\ApocCompiler\\bin\\Standard")
!42 = !{!0, !4, !16, !18, !21, !23, !25, !27, !29, !32, !36, !38}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 2, !"CodeView", i32 1}
!45 = distinct !DISubprogram(name: "mem_alloc", scope: !41, file: !41, line: 12, type: !46, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!46 = !DISubroutineType(types: !47)
!47 = !{!10, !48}
!48 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!49 = !{}
!50 = !DILocalVariable(name: "__apoc_internal_context", scope: !45, file: !41, line: 12, type: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "__Internal_Context", scope: !34, file: !34, line: 50, size: 64, align: 64, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !34, file: !34, line: 51, baseType: !10, size: 64, align: 64)
!54 = !DILocation(line: 12, scope: !45)
!55 = !DILocalVariable(name: "size", arg: 1, scope: !45, file: !41, line: 12, type: !48)
!56 = !DILocation(line: 14, column: 2, scope: !45)
!57 = !DILocalVariable(name: "result", scope: !45, file: !41, line: 14, type: !10, align: 64)
!58 = !DILocation(line: 15, column: 8, scope: !45)
!59 = !DILocation(line: 16, column: 5, scope: !45)
!60 = distinct !DISubprogram(name: "register_printable", scope: !2, file: !2, line: 27, type: !61, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !10, !12}
!63 = !DILocalVariable(name: "__apoc_internal_context", scope: !60, file: !2, line: 27, type: !51)
!64 = !DILocation(line: 27, scope: !60)
!65 = !DILocalVariable(name: "print_fn", arg: 1, scope: !60, file: !2, line: 27, type: !10)
!66 = !DILocalVariable(name: "type_name", arg: 2, scope: !60, file: !2, line: 27, type: !12)
!67 = !DILocation(line: 28, column: 2, scope: !60)
!68 = !DILocalVariable(name: "info", scope: !60, file: !2, line: 28, type: !7, align: 64)
!69 = !DILocation(line: 30, column: 2, scope: !60)
!70 = !DILocation(line: 31, column: 1, scope: !60)
!71 = distinct !DISubprogram(name: "builder_to_string", scope: !2, file: !2, line: 33, type: !72, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !78}
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !2, file: !2, line: 5, size: 128, align: 64, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !2, file: !2, line: 7, baseType: !12, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2, file: !2, line: 8, baseType: !3, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "String_Builder", scope: !2, file: !2, line: 11, size: 2176, align: 64, elements: !80)
!80 = !{!81, !85, !86}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2, file: !2, line: 13, baseType: !82, size: 2048, align: 8)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, align: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 256, lowerBound: 0)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2, file: !2, line: 14, baseType: !3, size: 64, align: 64, offset: 2048)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2, file: !2, line: 15, baseType: !78, size: 64, align: 64, offset: 2112)
!87 = !DILocalVariable(name: "__apoc_internal_context", scope: !71, file: !2, line: 33, type: !51)
!88 = !DILocation(line: 33, scope: !71)
!89 = !DILocalVariable(name: "builder", arg: 1, scope: !71, file: !2, line: 33, type: !78)
!90 = !DILocalVariable(name: "out", scope: !71, file: !2, line: 35, type: !74, align: 64)
!91 = !DILocation(line: 35, column: 2, scope: !71)
!92 = !DILocation(line: 36, column: 2, scope: !71)
!93 = !DILocalVariable(name: "out_len", scope: !71, file: !2, line: 36, type: !3, align: 64)
!94 = !DILocation(line: 37, column: 2, scope: !71)
!95 = !DILocalVariable(name: "current", scope: !71, file: !2, line: 37, type: !78, align: 64)
!96 = !DILocation(line: 38, column: 2, scope: !71)
!97 = !DILocalVariable(name: "i", scope: !71, file: !2, line: 38, type: !3, align: 64)
!98 = !DILocation(line: 38, column: 6, scope: !71)
!99 = !DILocation(line: 39, column: 3, scope: !71)
!100 = !DILocation(line: 40, column: 3, scope: !71)
!101 = !DILocation(line: 42, column: 2, scope: !71)
!102 = !DILocation(line: 43, column: 2, scope: !71)
!103 = !DILocation(line: 44, column: 2, scope: !71)
!104 = !DILocation(line: 46, column: 2, scope: !71)
!105 = !DILocalVariable(name: "times", scope: !71, file: !2, line: 46, type: !3, align: 64)
!106 = !DILocation(line: 47, column: 2, scope: !71)
!107 = !DILocalVariable(name: "i", scope: !71, file: !2, line: 47, type: !3, align: 64)
!108 = !DILocation(line: 47, column: 6, scope: !71)
!109 = !DILocation(line: 48, column: 7, scope: !71)
!110 = !DILocation(line: 49, column: 3, scope: !71)
!111 = !DILocation(line: 50, column: 3, scope: !71)
!112 = !DILocation(line: 52, column: 6, scope: !71)
!113 = !DILocation(line: 53, column: 2, scope: !71)
!114 = !DILocation(line: 54, column: 5, scope: !71)
!115 = distinct !DISubprogram(name: "init_builder", scope: !2, file: !2, line: 57, type: !116, scopeLine: 58, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!116 = !DISubroutineType(types: !117)
!117 = !{!79, !12}
!118 = !DILocalVariable(name: "__apoc_internal_context", scope: !115, file: !2, line: 57, type: !51)
!119 = !DILocation(line: 57, scope: !115)
!120 = !DILocalVariable(name: "text", arg: 1, scope: !115, file: !2, line: 57, type: !12)
!121 = !DILocalVariable(name: "out", scope: !115, file: !2, line: 59, type: !79, align: 64)
!122 = !DILocation(line: 59, column: 2, scope: !115)
!123 = !DILocation(line: 60, column: 2, scope: !115)
!124 = !DILocalVariable(name: "current", scope: !115, file: !2, line: 60, type: !78, align: 64)
!125 = !DILocation(line: 61, column: 2, scope: !115)
!126 = !DILocalVariable(name: "times", scope: !115, file: !2, line: 61, type: !3, align: 64)
!127 = !DILocation(line: 62, column: 2, scope: !115)
!128 = !DILocalVariable(name: "i", scope: !115, file: !2, line: 62, type: !3, align: 64)
!129 = !DILocation(line: 62, column: 6, scope: !115)
!130 = !DILocation(line: 63, column: 3, scope: !115)
!131 = !DILocation(line: 64, column: 3, scope: !115)
!132 = !DILocation(line: 65, column: 3, scope: !115)
!133 = !DILocation(line: 69, column: 4, scope: !115)
!134 = !DILocation(line: 72, column: 5, scope: !115)
!135 = !DILocation(line: 66, column: 4, scope: !115)
!136 = !DILocation(line: 67, column: 4, scope: !115)
!137 = !DILocation(line: 68, column: 4, scope: !115)
!138 = distinct !DISubprogram(name: "compare", scope: !2, file: !2, line: 127, type: !139, scopeLine: 128, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!139 = !DISubroutineType(types: !140)
!140 = !{!35, !141, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!142 = !DILocalVariable(name: "__apoc_internal_context", scope: !138, file: !2, line: 127, type: !51)
!143 = !DILocation(line: 127, scope: !138)
!144 = !DILocalVariable(name: "str1", arg: 1, scope: !138, file: !2, line: 127, type: !141)
!145 = !DILocalVariable(name: "str2", arg: 2, scope: !138, file: !2, line: 127, type: !141)
!146 = !DILocation(line: 129, column: 2, scope: !138)
!147 = !DILocation(line: 132, column: 2, scope: !138)
!148 = !DILocation(line: 130, column: 6, scope: !138)
!149 = !DILocalVariable(name: "i", scope: !138, file: !2, line: 132, type: !3, align: 64)
!150 = !DILocation(line: 132, column: 6, scope: !138)
!151 = !DILocation(line: 133, column: 3, scope: !138)
!152 = !DILocation(line: 133, column: 38, scope: !138)
!153 = !DILocation(line: 134, column: 5, scope: !138)
!154 = distinct !DISubprogram(name: "to_string", scope: !2, file: !2, line: 137, type: !155, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!155 = !DISubroutineType(types: !156)
!156 = !{!74, !12}
!157 = !DILocalVariable(name: "__apoc_internal_context", scope: !154, file: !2, line: 137, type: !51)
!158 = !DILocation(line: 137, scope: !154)
!159 = !DILocalVariable(name: "text", arg: 1, scope: !154, file: !2, line: 137, type: !12)
!160 = !DILocation(line: 139, column: 2, scope: !154)
!161 = !DILocalVariable(name: "text_len", scope: !154, file: !2, line: 139, type: !3, align: 64)
!162 = !DILocation(line: 140, column: 2, scope: !154)
!163 = !DILocalVariable(name: "allocated", scope: !154, file: !2, line: 140, type: !10, align: 64)
!164 = !DILocation(line: 141, column: 6, scope: !154)
!165 = !DILocation(line: 142, column: 2, scope: !154)
!166 = !DILocalVariable(name: "str", scope: !154, file: !2, line: 142, type: !74, align: 64)
!167 = !DILocation(line: 143, column: 5, scope: !154)
!168 = distinct !DISubprogram(name: "terminate_string", scope: !2, file: !2, line: 146, type: !169, scopeLine: 147, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!169 = !DISubroutineType(types: !170)
!170 = !{!74, !74}
!171 = !DILocalVariable(name: "__apoc_internal_context", scope: !168, file: !2, line: 146, type: !51)
!172 = !DILocation(line: 146, scope: !168)
!173 = !DILocalVariable(name: "str", arg: 1, scope: !168, file: !2, line: 146, type: !74)
!174 = !DILocation(line: 148, column: 2, scope: !168)
!175 = !DILocalVariable(scope: !168, file: !2, line: 148, type: !74, align: 64)
!176 = !DILocation(line: 149, column: 2, scope: !168)
!177 = !DILocation(line: 150, column: 2, scope: !168)
!178 = !DILocation(line: 151, column: 6, scope: !168)
!179 = !DILocation(line: 152, column: 2, scope: !168)
!180 = !DILocation(line: 153, column: 5, scope: !168)
!181 = distinct !DISubprogram(name: "build_unsigned_int", scope: !2, file: !2, line: 156, type: !182, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !48, !3, !78}
!184 = !DILocalVariable(name: "__apoc_internal_context", scope: !181, file: !2, line: 156, type: !51)
!185 = !DILocation(line: 156, scope: !181)
!186 = !DILocalVariable(name: "num", arg: 1, scope: !181, file: !2, line: 156, type: !48)
!187 = !DILocalVariable(name: "num_size", arg: 2, scope: !181, file: !2, line: 156, type: !3)
!188 = !DILocalVariable(name: "builder", arg: 3, scope: !181, file: !2, line: 156, type: !78)
!189 = !DILocation(line: 157, column: 2, scope: !181)
!190 = !DILocation(line: 162, column: 1, scope: !181)
!191 = !DILocation(line: 158, column: 3, scope: !181)
!192 = !DILocalVariable(name: "digit", scope: !181, file: !2, line: 158, type: !48, align: 64)
!193 = !DILocation(line: 159, column: 21, scope: !181)
!194 = !DILocation(line: 3056016024, scope: !181)
!195 = distinct !DISubprogram(name: "int_to_str", scope: !2, file: !2, line: 164, type: !196, scopeLine: 165, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !3, !78}
!198 = !DILocalVariable(name: "__apoc_internal_context", scope: !195, file: !2, line: 164, type: !51)
!199 = !DILocation(line: 164, scope: !195)
!200 = !DILocalVariable(name: "num", arg: 1, scope: !195, file: !2, line: 164, type: !3)
!201 = !DILocalVariable(name: "builder", arg: 2, scope: !195, file: !2, line: 164, type: !78)
!202 = !DILocation(line: 166, column: 2, scope: !195)
!203 = !DILocation(line: 173, column: 2, scope: !195)
!204 = !DILocation(line: 3056016024, scope: !195)
!205 = !DILocation(line: 168, column: 5, scope: !195)
!206 = !DILocation(line: 170, column: 2, scope: !195)
!207 = !DILocalVariable(name: "div_copy", scope: !195, file: !2, line: 170, type: !3, align: 64)
!208 = !DILocation(line: 171, column: 2, scope: !195)
!209 = !DILocalVariable(name: "num_size", scope: !195, file: !2, line: 171, type: !3, align: 64)
!210 = !DILocation(line: 174, column: 3, scope: !195)
!211 = !DILocation(line: 176, column: 2, scope: !195)
!212 = !DILocation(line: 182, column: 1, scope: !195)
!213 = !DILocation(line: 178, column: 3, scope: !195)
!214 = !DILocation(line: 179, column: 3, scope: !195)
!215 = !DILocation(line: 181, column: 20, scope: !195)
!216 = distinct !DISubprogram(name: "float_to_str", scope: !2, file: !2, line: 184, type: !217, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219, !78}
!219 = !DIBasicType(name: "f64", size: 64, encoding: DW_ATE_float)
!220 = !DILocalVariable(name: "__apoc_internal_context", scope: !216, file: !2, line: 184, type: !51)
!221 = !DILocation(line: 184, scope: !216)
!222 = !DILocalVariable(name: "num", arg: 1, scope: !216, file: !2, line: 184, type: !219)
!223 = !DILocalVariable(name: "builder", arg: 2, scope: !216, file: !2, line: 184, type: !78)
!224 = !DILocation(line: 186, column: 2, scope: !216)
!225 = !DILocation(line: 201, column: 2, scope: !216)
!226 = !DILocation(line: 3056016024, scope: !216)
!227 = !DILocation(line: 188, column: 3, scope: !216)
!228 = !DILocation(line: 191, column: 2, scope: !216)
!229 = !DILocalVariable(name: "decimal", scope: !216, file: !2, line: 191, type: !48, align: 64)
!230 = !DILocation(line: 192, column: 2, scope: !216)
!231 = !DILocation(line: 194, column: 2, scope: !216)
!232 = !DILocation(line: 199, column: 2, scope: !216)
!233 = !DILocalVariable(name: "zeroes_to_append", scope: !216, file: !2, line: 199, type: !3, align: 64)
!234 = !DILocation(line: 197, column: 17, scope: !216)
!235 = !DILocation(line: 202, column: 3, scope: !216)
!236 = !DILocation(line: 203, column: 3, scope: !216)
!237 = !DILocation(line: 203, column: 20, scope: !216)
!238 = !DILocation(line: 206, column: 2, scope: !216)
!239 = !DILocalVariable(name: "i", scope: !216, file: !2, line: 206, type: !3, align: 64)
!240 = !DILocation(line: 206, column: 6, scope: !216)
!241 = !DILocation(line: 210, column: 12, scope: !216)
!242 = !DILocation(line: 211, column: 1, scope: !216)
!243 = distinct !DISubprogram(name: "find_printable_type", scope: !2, file: !2, line: 213, type: !244, scopeLine: 214, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !246, !78}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "Any", scope: !34, file: !34, line: 54, size: 128, align: 64, elements: !248)
!248 = !{!249, !305}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !34, line: 55, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !34, file: !34, line: 59, size: 320, align: 64, elements: !252)
!252 = !{!253, !255, !260, !273, !281, !288, !296}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !34, file: !34, line: 60, baseType: !254, size: 32, align: 32)
!254 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !34, file: !34, line: 69, baseType: !256, size: 64, align: 32)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Primitive", scope: !34, file: !34, line: 69, size: 64, align: 32, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !34, file: !34, line: 70, baseType: !254, size: 32, align: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !34, file: !34, line: 71, baseType: !254, size: 32, align: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !34, file: !34, line: 74, baseType: !261, size: 320, align: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Struct", scope: !34, file: !34, line: 74, size: 320, align: 64, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !270}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !34, file: !34, line: 75, baseType: !254, size: 32, align: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "member_count", scope: !34, file: !34, line: 76, baseType: !254, size: 32, align: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "is_union", scope: !34, file: !34, line: 77, baseType: !35, size: 8, align: 8, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "is_packed", scope: !34, file: !34, line: 78, baseType: !35, size: 8, align: 8, offset: 72)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !34, line: 79, baseType: !12, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "member_names", scope: !34, file: !34, line: 80, baseType: !269, size: 64, align: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "member_types", scope: !34, file: !34, line: 81, baseType: !271, size: 64, align: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !34, file: !34, line: 81, size: 320, align: 64, elements: !252)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !34, file: !34, line: 84, baseType: !274, size: 192, align: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Array", scope: !34, file: !34, line: 84, size: 192, align: 64, elements: !275)
!275 = !{!276, !277, !280}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !34, file: !34, line: 85, baseType: !254, size: 32, align: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !34, line: 86, baseType: !278, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !34, file: !34, line: 86, size: 320, align: 64, elements: !252)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "elem_count", scope: !34, file: !34, line: 87, baseType: !48, size: 64, align: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !34, file: !34, line: 90, baseType: !282, size: 128, align: 64)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Pointer", scope: !34, file: !34, line: 90, size: 128, align: 64, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !34, file: !34, line: 91, baseType: !254, size: 32, align: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pointed", scope: !34, file: !34, line: 92, baseType: !286, size: 64, align: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !34, file: !34, line: 92, size: 320, align: 64, elements: !252)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "enumerator", scope: !34, file: !34, line: 95, baseType: !289, size: 256, align: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Enum", scope: !34, file: !34, line: 95, size: 256, align: 64, elements: !290)
!290 = !{!291, !292, !293, !294}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !34, file: !34, line: 96, baseType: !254, size: 32, align: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !34, line: 97, baseType: !256, size: 64, align: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !34, file: !34, line: 98, baseType: !269, size: 64, align: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !34, file: !34, line: 99, baseType: !295, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !34, file: !34, line: 102, baseType: !297, size: 256, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Func", scope: !34, file: !34, line: 102, size: 256, align: 64, elements: !298)
!298 = !{!299, !300, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !34, file: !34, line: 103, baseType: !254, size: 32, align: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "param_types", scope: !34, file: !34, line: 104, baseType: !301, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !34, file: !34, line: 104, size: 320, align: 64, elements: !252)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "return_type", scope: !34, file: !34, line: 105, baseType: !301, size: 64, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "calling_convention", scope: !34, file: !34, line: 106, baseType: !254, size: 32, align: 32, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !34, file: !34, line: 56, baseType: !10, size: 64, align: 64, offset: 64)
!306 = !DILocalVariable(name: "__apoc_internal_context", scope: !243, file: !2, line: 213, type: !51)
!307 = !DILocation(line: 213, scope: !243)
!308 = !DILocalVariable(name: "item", arg: 1, scope: !243, file: !2, line: 213, type: !246)
!309 = !DILocalVariable(name: "builder", arg: 2, scope: !243, file: !2, line: 213, type: !78)
!310 = !DILocation(line: 215, column: 2, scope: !243)
!311 = !DILocalVariable(name: "i", scope: !243, file: !2, line: 215, type: !3, align: 64)
!312 = !DILocation(line: 215, column: 6, scope: !243)
!313 = !DILocation(line: 216, column: 3, scope: !243)
!314 = !DILocation(line: 218, column: 6, scope: !243)
!315 = !DILocation(line: 3056015808, scope: !243)
!316 = !DILocation(line: 222, column: 4, scope: !243)
!317 = distinct !DISubprogram(name: "parse_format", scope: !2, file: !2, line: 225, type: !318, scopeLine: 226, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!318 = !DISubroutineType(types: !319)
!319 = !{!74, !74, !246}
!320 = !DILocalVariable(name: "__apoc_internal_context", scope: !317, file: !2, line: 225, type: !51)
!321 = !DILocation(line: 225, scope: !317)
!322 = !DILocalVariable(name: "format", arg: 1, scope: !317, file: !2, line: 225, type: !74)
!323 = !DILocalVariable(name: "list", arg: 2, scope: !317, file: !2, line: 225, type: !246)
!324 = !DILocation(line: 227, column: 2, scope: !317)
!325 = !DILocalVariable(name: "builder", scope: !317, file: !2, line: 227, type: !79, align: 64)
!326 = !DILocation(line: 228, column: 2, scope: !317)
!327 = !DILocalVariable(name: "list_index", scope: !317, file: !2, line: 228, type: !3, align: 64)
!328 = !DILocation(line: 229, column: 8, scope: !317)
!329 = !DILocation(line: 230, column: 8, scope: !317)
!330 = !DILocation(line: 231, column: 2, scope: !317)
!331 = !DILocalVariable(name: "i", scope: !317, file: !2, line: 231, type: !3, align: 64)
!332 = !DILocation(line: 231, column: 6, scope: !317)
!333 = !DILocation(line: 232, column: 3, scope: !317)
!334 = !DILocation(line: 3056016024, scope: !317)
!335 = !DILocation(line: 267, column: 2, scope: !317)
!336 = !DILocalVariable(name: "out", scope: !317, file: !2, line: 267, type: !74, align: 64)
!337 = !DILocation(line: 268, column: 5, scope: !317)
!338 = !DILocation(line: 233, column: 4, scope: !317)
!339 = !DILocalVariable(name: "item", scope: !317, file: !2, line: 233, type: !247, align: 64)
!340 = !DILocation(line: 234, column: 4, scope: !317)
!341 = !DILocation(line: 235, column: 4, scope: !317)
!342 = !DILocalVariable(name: "type", scope: !317, file: !2, line: 235, type: !254, align: 32)
!343 = !DILocation(line: 236, column: 4, scope: !317)
!344 = !DILocation(line: 237, column: 5, scope: !317)
!345 = !DILocalVariable(name: "to_parse", scope: !317, file: !2, line: 237, type: !3, align: 64)
!346 = !DILocation(line: 238, column: 5, scope: !317)
!347 = !DILocalVariable(name: "size", scope: !317, file: !2, line: 238, type: !254, align: 32)
!348 = !DILocation(line: 239, column: 5, scope: !317)
!349 = !DILocation(line: 247, column: 15, scope: !317)
!350 = !DILocation(line: 240, column: 6, scope: !317)
!351 = !DILocation(line: 241, column: 10, scope: !317)
!352 = !DILocation(line: 246, column: 6, scope: !317)
!353 = !DILocation(line: 242, column: 6, scope: !317)
!354 = !DILocation(line: 243, column: 10, scope: !317)
!355 = !DILocation(line: 244, column: 6, scope: !317)
!356 = !DILocation(line: 248, column: 11, scope: !317)
!357 = !DILocation(line: 249, column: 5, scope: !317)
!358 = !DILocalVariable(name: "to_parse", scope: !317, file: !2, line: 249, type: !219, align: 64)
!359 = !DILocation(line: 250, column: 5, scope: !317)
!360 = !DILocalVariable(name: "size", scope: !317, file: !2, line: 250, type: !254, align: 32)
!361 = !DILocation(line: 251, column: 5, scope: !317)
!362 = !DILocation(line: 256, column: 17, scope: !317)
!363 = !DILocation(line: 252, column: 6, scope: !317)
!364 = !DILocation(line: 254, column: 6, scope: !317)
!365 = !DILocation(line: 257, column: 11, scope: !317)
!366 = !DILocation(line: 258, column: 24, scope: !317)
!367 = distinct !DISubprogram(name: "format_args!@string!@-", scope: !2, file: !2, line: 281, type: !169, scopeLine: 282, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!368 = !DILocalVariable(name: "__apoc_internal_context", scope: !369, file: !2, line: 271, type: !51)
!369 = distinct !DISubprogram(name: "format_args", scope: !2, file: !2, line: 271, type: !155, scopeLine: 272, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!370 = !DILocation(line: 271, scope: !369)
!371 = !DILocalVariable(name: "format", arg: 1, scope: !369, file: !2, line: 271, type: !12)
!372 = !DILocation(line: 273, column: 2, scope: !369)
!373 = !DILocalVariable(name: "str", scope: !369, file: !2, line: 273, type: !74, align: 64)
!374 = !DILocation(line: 274, column: 2, scope: !369)
!375 = !DILocalVariable(scope: !369, file: !2, line: 274, type: !246, align: 64)
!376 = !DILocation(line: 275, column: 15, scope: !369)
!377 = !DILocation(line: 276, column: 2, scope: !369)
!378 = !DILocalVariable(name: "out", scope: !369, file: !2, line: 276, type: !74, align: 64)
!379 = !DILocation(line: 277, column: 14, scope: !369)
!380 = !DILocation(line: 278, column: 5, scope: !369)
!381 = distinct !DISubprogram(name: "print!@string!@-", scope: !2, file: !2, line: 302, type: !382, scopeLine: 303, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !74}
!384 = !DILocalVariable(name: "__apoc_internal_context", scope: !385, file: !2, line: 290, type: !51)
!385 = distinct !DISubprogram(name: "print", scope: !2, file: !2, line: 290, type: !386, scopeLine: 291, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !12}
!388 = !DILocation(line: 290, scope: !385)
!389 = !DILocalVariable(name: "format", arg: 1, scope: !385, file: !2, line: 290, type: !12)
!390 = !DILocation(line: 292, column: 2, scope: !385)
!391 = !DILocalVariable(name: "str", scope: !385, file: !2, line: 292, type: !74, align: 64)
!392 = !DILocation(line: 293, column: 8, scope: !385)
!393 = !DILocation(line: 294, column: 2, scope: !385)
!394 = !DILocalVariable(scope: !385, file: !2, line: 294, type: !246, align: 64)
!395 = !DILocation(line: 295, column: 15, scope: !385)
!396 = !DILocation(line: 296, column: 2, scope: !385)
!397 = !DILocalVariable(name: "out", scope: !385, file: !2, line: 296, type: !74, align: 64)
!398 = !DILocation(line: 297, column: 14, scope: !385)
!399 = !DILocation(line: 298, column: 2, scope: !385)
!400 = !DILocalVariable(name: "stdout", scope: !385, file: !2, line: 298, type: !10, align: 64)
!401 = !DILocation(line: 299, column: 12, scope: !385)
!402 = !DILocation(line: 300, column: 1, scope: !385)
!403 = distinct !DISubprogram(name: "copy", scope: !2, file: !2, line: 313, type: !404, scopeLine: 314, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !10, !10, !48}
!406 = !DILocalVariable(name: "__apoc_internal_context", scope: !403, file: !2, line: 313, type: !51)
!407 = !DILocation(line: 313, scope: !403)
!408 = !DILocalVariable(name: "dst", arg: 1, scope: !403, file: !2, line: 313, type: !10)
!409 = !DILocalVariable(name: "src", arg: 2, scope: !403, file: !2, line: 313, type: !10)
!410 = !DILocalVariable(name: "size", arg: 3, scope: !403, file: !2, line: 313, type: !48)
!411 = !DILocation(line: 315, column: 2, scope: !403)
!412 = !DILocalVariable(name: "a0", scope: !403, file: !2, line: 315, type: !12, align: 64)
!413 = !DILocation(line: 316, column: 2, scope: !403)
!414 = !DILocalVariable(name: "a1", scope: !403, file: !2, line: 316, type: !12, align: 64)
!415 = !DILocation(line: 317, column: 2, scope: !403)
!416 = !DILocalVariable(name: "i", scope: !403, file: !2, line: 317, type: !3, align: 64)
!417 = !DILocation(line: 317, column: 6, scope: !403)
!418 = !DILocation(line: 319, column: 3, scope: !403)
!419 = !DILocation(line: 321, column: 1, scope: !403)
!420 = distinct !DISubprogram(name: "len", scope: !2, file: !2, line: 323, type: !421, scopeLine: 324, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!421 = !DISubroutineType(types: !422)
!422 = !{!3, !12}
!423 = !DILocalVariable(name: "__apoc_internal_context", scope: !420, file: !2, line: 323, type: !51)
!424 = !DILocation(line: 323, scope: !420)
!425 = !DILocalVariable(name: "text", arg: 1, scope: !420, file: !2, line: 323, type: !12)
!426 = !DILocation(line: 325, column: 2, scope: !420)
!427 = !DILocalVariable(name: "result", scope: !420, file: !2, line: 325, type: !3, align: 64)
!428 = !DILocation(line: 326, column: 2, scope: !420)
!429 = !DILocation(line: 327, column: 5, scope: !420)
!430 = distinct !DISubprogram(name: "open_file", scope: !20, file: !20, line: 26, type: !431, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!431 = !DISubroutineType(types: !432)
!432 = !{!10, !12, !3}
!433 = !DILocalVariable(name: "__apoc_internal_context", scope: !430, file: !20, line: 26, type: !51)
!434 = !DILocation(line: 26, scope: !430)
!435 = !DILocalVariable(name: "f_name", arg: 1, scope: !430, file: !20, line: 26, type: !12)
!436 = !DILocalVariable(name: "access", arg: 2, scope: !430, file: !20, line: 26, type: !3)
!437 = !DILocation(line: 28, column: 2, scope: !430)
!438 = !DILocalVariable(scope: !430, file: !20, line: 28, type: !3, align: 64)
!439 = !DILocation(line: 29, column: 2, scope: !430)
!440 = !DILocation(line: 35, column: 5, scope: !430)
!441 = !DILocation(line: 29, column: 41, scope: !430)
!442 = !DILocation(line: 30, column: 2, scope: !430)
!443 = !DILocation(line: 30, column: 41, scope: !430)
!444 = !DILocation(line: 31, column: 2, scope: !430)
!445 = !DILocation(line: 31, column: 41, scope: !430)
!446 = !DILocation(line: 32, column: 2, scope: !430)
!447 = !DILocalVariable(name: "file", scope: !430, file: !20, line: 32, type: !10, align: 64)
!448 = distinct !DISubprogram(name: "write_file", scope: !20, file: !20, line: 38, type: !449, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!449 = !DISubroutineType(types: !450)
!450 = !{!35, !10, !10, !451}
!451 = !DIBasicType(name: "u32", size: 24, encoding: DW_ATE_unsigned)
!452 = !DILocalVariable(name: "__apoc_internal_context", scope: !448, file: !20, line: 38, type: !51)
!453 = !DILocation(line: 38, scope: !448)
!454 = !DILocalVariable(name: "file", arg: 1, scope: !448, file: !20, line: 38, type: !10)
!455 = !DILocalVariable(name: "data", arg: 2, scope: !448, file: !20, line: 38, type: !10)
!456 = !DILocalVariable(name: "size", arg: 3, scope: !448, file: !20, line: 38, type: !451)
!457 = !DILocation(line: 40, column: 2, scope: !448)
!458 = !DILocalVariable(scope: !448, file: !20, line: 40, type: !451, align: 32)
!459 = !DILocation(line: 41, column: 11, scope: !448)
!460 = !DILocation(line: 42, column: 2, scope: !448)
!461 = !DILocalVariable(name: "result", scope: !448, file: !20, line: 42, type: !35, align: 8)
!462 = !DILocation(line: 43, column: 5, scope: !448)
!463 = distinct !DISubprogram(name: "get_stdout", scope: !20, file: !20, line: 46, type: !464, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!464 = !DISubroutineType(types: !465)
!465 = !{!10}
!466 = !DILocalVariable(name: "__apoc_internal_context", scope: !463, file: !20, line: 46, type: !51)
!467 = !DILocation(line: 46, scope: !463)
!468 = !DILocation(line: 48, column: 5, scope: !463)
!469 = distinct !DISubprogram(name: "main", scope: !31, file: !31, line: 6, type: !470, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!470 = !DISubroutineType(types: !471)
!471 = !{!254}
!472 = !DILocation(line: 8, column: 2, scope: !469)
!473 = !DILocalVariable(name: "to_print", scope: !469, file: !31, line: 8, type: !474, align: 32)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "Printable_Struct", scope: !31, file: !31, line: 19, size: 64, align: 32, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "num1", scope: !31, file: !31, line: 20, baseType: !254, size: 32, align: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "num2", scope: !31, file: !31, line: 21, baseType: !254, size: 32, align: 32, offset: 32)
!478 = !DILocation(line: 9, column: 20, scope: !469)
!479 = !DILocation(line: 10, column: 7, scope: !469)
!480 = !DILocation(line: 11, column: 5, scope: !469)
!481 = distinct !DISubprogram(name: "print_printable_struct", scope: !31, file: !31, line: 14, type: !482, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!482 = !DISubroutineType(types: !483)
!483 = !{!74, !10}
!484 = !DILocalVariable(name: "__apoc_internal_context", scope: !481, file: !31, line: 14, type: !51)
!485 = !DILocation(line: 14, scope: !481)
!486 = !DILocalVariable(name: "the_struct", arg: 1, scope: !481, file: !31, line: 14, type: !10)
!487 = !DILocation(line: 15, column: 2, scope: !481)
!488 = !DILocalVariable(name: "casted", scope: !481, file: !31, line: 15, type: !489, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!490 = !DILocation(line: 16, column: 5, scope: !481)
!491 = distinct !DISubprogram(name: "overload[]", scope: !2, file: !2, line: 75, type: !492, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!492 = !DISubroutineType(types: !493)
!493 = !{!13, !74, !3}
!494 = !DILocalVariable(name: "str", scope: !491, file: !2, line: 75, type: !74)
!495 = !DILocation(line: 75, scope: !491)
!496 = !DILocalVariable(name: "index", arg: 1, scope: !491, file: !2, line: 75, type: !3)
!497 = !DILocation(line: 77, column: 5, scope: !491)
!498 = distinct !DISubprogram(name: "overload+", scope: !2, file: !2, line: 80, type: !499, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!499 = !DISubroutineType(types: !500)
!500 = !{!74, !74, !12}
!501 = !DILocalVariable(name: "__apoc_internal_context", scope: !498, file: !2, line: 80, type: !51)
!502 = !DILocation(line: 80, scope: !498)
!503 = !DILocalVariable(name: "str", arg: 1, scope: !498, file: !2, line: 80, type: !74)
!504 = !DILocalVariable(name: "text", arg: 2, scope: !498, file: !2, line: 80, type: !12)
!505 = !DILocation(line: 82, column: 2, scope: !498)
!506 = !DILocalVariable(scope: !498, file: !2, line: 82, type: !74, align: 64)
!507 = !DILocation(line: 83, column: 2, scope: !498)
!508 = !DILocalVariable(name: "text_len", scope: !498, file: !2, line: 83, type: !3, align: 64)
!509 = !DILocation(line: 84, column: 2, scope: !498)
!510 = !DILocation(line: 85, column: 2, scope: !498)
!511 = !DILocation(line: 86, column: 6, scope: !498)
!512 = !DILocation(line: 87, column: 6, scope: !498)
!513 = !DILocation(line: 88, column: 5, scope: !498)
!514 = distinct !DISubprogram(name: "overload[x]=", scope: !2, file: !2, line: 91, type: !515, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !78, !12}
!517 = !DILocalVariable(name: "str", scope: !514, file: !2, line: 91, type: !78)
!518 = !DILocation(line: 91, scope: !514)
!519 = !DILocalVariable(name: "text", arg: 1, scope: !514, file: !2, line: 91, type: !12)
!520 = !DILocation(line: 93, column: 2, scope: !514)
!521 = !DILocalVariable(name: "text_len", scope: !514, file: !2, line: 93, type: !3, align: 64)
!522 = !DILocation(line: 94, column: 2, scope: !514)
!523 = !DILocalVariable(name: "times", scope: !514, file: !2, line: 94, type: !3, align: 64)
!524 = !DILocation(line: 95, column: 2, scope: !514)
!525 = !DILocalVariable(name: "current", scope: !514, file: !2, line: 95, type: !78, align: 64)
!526 = !DILocation(line: 96, column: 2, scope: !514)
!527 = !DILocalVariable(name: "i", scope: !514, file: !2, line: 96, type: !3, align: 64)
!528 = !DILocation(line: 96, column: 6, scope: !514)
!529 = !DILocation(line: 97, column: 3, scope: !514)
!530 = !DILocalVariable(name: "copy_size", scope: !514, file: !2, line: 97, type: !3, align: 64)
!531 = !DILocation(line: 98, column: 3, scope: !514)
!532 = !DILocation(line: 102, column: 3, scope: !514)
!533 = !DILocation(line: 105, column: 1, scope: !514)
!534 = !DILocation(line: 98, column: 37, scope: !514)
!535 = !DILocation(line: 99, column: 7, scope: !514)
!536 = !DILocation(line: 100, column: 3, scope: !514)
!537 = !DILocation(line: 101, column: 3, scope: !514)
!538 = distinct !DISubprogram(name: "overload[x]=", scope: !2, file: !2, line: 107, type: !539, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !78, !13}
!541 = !DILocalVariable(name: "str", scope: !538, file: !2, line: 107, type: !78)
!542 = !DILocation(line: 107, scope: !538)
!543 = !DILocalVariable(name: "c", arg: 1, scope: !538, file: !2, line: 107, type: !13)
!544 = !DILocation(line: 109, column: 2, scope: !538)
!545 = !DILocalVariable(name: "to_put", scope: !538, file: !2, line: 109, type: !78, align: 64)
!546 = !DILocation(line: 110, column: 2, scope: !538)
!547 = !DILocation(line: 111, column: 3, scope: !538)
!548 = !DILocation(line: 115, column: 4, scope: !538)
!549 = !DILocation(line: 117, column: 2, scope: !538)
!550 = !DILocation(line: 118, column: 2, scope: !538)
!551 = !DILocation(line: 119, column: 1, scope: !538)
!552 = !DILocation(line: 112, column: 4, scope: !538)
!553 = !DILocation(line: 114, column: 3, scope: !538)
!554 = distinct !DISubprogram(name: "overload", scope: !2, file: !2, line: 121, type: !555, scopeLine: 122, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !49)
!555 = !DISubroutineType(types: !556)
!556 = !{!35, !74, !12}
!557 = !DILocalVariable(name: "str", scope: !554, file: !2, line: 121, type: !74)
!558 = !DILocation(line: 121, scope: !554)
!559 = !DILocalVariable(name: "text", arg: 1, scope: !554, file: !2, line: 121, type: !12)
!560 = !DILocation(line: 123, column: 2, scope: !554)
!561 = !DILocalVariable(name: "str2", scope: !554, file: !2, line: 123, type: !74, align: 64)
!562 = !DILocation(line: 124, column: 5, scope: !554)
