; ModuleID = 'C_Standard.apoc'
source_filename = "C_Standard.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Printable_Type_Info = type { ptr, ptr }
%__Internal_Context = type { ptr }
%string = type { ptr, i64 }
%String_Builder = type { [256 x i8], i64, ptr }
%Type_Struct.4 = type { i32, i32, i8, i8, ptr, ptr, ptr }
%Any = type { ptr, ptr }
%Type_Primitive.3 = type { i32, i32 }

@global_var = constant i64 256
@global_var.1 = global [1024 x %Printable_Type_Info] zeroinitializer
@global_var.2 = global i64 0
@global_var.3 = constant i64 65536
@global_var.4 = constant i64 131072
@global_var.5 = constant i64 262144
@global_var.6 = constant i64 524288
@global_var.7 = constant i64 1048576
@global_var.8 = constant i8 1
@global_var.9 = constant i8 0
@global_var.10 = constant ptr null
@0 = private unnamed_addr constant [14 x i8] c"Unkown struct\00", align 1
@1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

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

define ptr @mem_alloc(ptr %__apoc_internal_context, i64 %size) {
entry:
  %result = alloca ptr, align 8
  %size2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %size2, align 8
  store i64 %size, ptr %size2, align 8
  %0 = load i64, ptr %size2, align 8
  %1 = call ptr @malloc(i64 %0)
  store i64 0, ptr %result, align 8
  store ptr %1, ptr %result, align 8
  %2 = load ptr, ptr %result, align 8
  %3 = load i64, ptr %size2, align 8
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3)
  %5 = load ptr, ptr %result, align 8
  ret ptr %5
}

declare i32 @strcmp(ptr, ptr)

define void @register_printable(ptr %__apoc_internal_context, ptr %print_fn, ptr %type_name) {
entry:
  %info = alloca %Printable_Type_Info, align 8
  %type_name3 = alloca ptr, align 8
  %print_fn2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %print_fn2, align 8
  store ptr %print_fn, ptr %print_fn2, align 8
  store i64 0, ptr %type_name3, align 8
  store ptr %type_name, ptr %type_name3, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %info, i8 0, i64 16, i1 false)
  %0 = load ptr, ptr %type_name3, align 8
  %1 = getelementptr inbounds %Printable_Type_Info, ptr %info, i32 0, i32 1
  store ptr %0, ptr %1, align 8
  %2 = bitcast ptr %info to ptr
  store ptr %print_fn2, ptr %2, align 8
  %3 = load %Printable_Type_Info, ptr %info, align 8
  %4 = load i64, ptr @global_var.2, align 8
  %elem_ptr = getelementptr [1024 x %Printable_Type_Info], ptr @global_var.1, i64 0, i64 %4
  store %Printable_Type_Info %3, ptr %elem_ptr, align 8
  ret void
}

define void @builder_to_string(ptr %__apoc_internal_context, ptr %builder) {
entry:
  %__apoc_internal_context41 = alloca %__Internal_Context, align 8
  %__apoc_internal_context23 = alloca %__Internal_Context, align 8
  %i15 = alloca i64, align 8
  %times = alloca i64, align 8
  %__apoc_internal_context12 = alloca %__Internal_Context, align 8
  %i = alloca i64, align 8
  %current = alloca ptr, align 8
  %out_len = alloca i64, align 8
  %out = alloca %string, align 8
  %builder2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %builder2, align 8
  store ptr %builder, ptr %builder2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false)
  store i64 0, ptr %out_len, align 8
  store i64 0, ptr %out_len, align 8
  %0 = load ptr, ptr %builder2, align 8
  store i64 0, ptr %current, align 8
  store ptr %0, ptr %current, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %"derefrence struct" = load ptr, ptr %current, align 8
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 2
  %selected = load ptr, ptr %"struct member ptr", align 8
  %1 = icmp ne ptr %selected, null
  br i1 %1, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %out_len, align 8
  %"derefrence struct3" = load ptr, ptr %current, align 8
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 1
  %selected5 = load i64, ptr %"struct member ptr4", align 8
  %3 = add i64 %2, %selected5
  store i64 %3, ptr %out_len, align 8
  %"derefrence struct6" = load ptr, ptr %current, align 8
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2
  %selected8 = load ptr, ptr %"struct member ptr7", align 8
  store ptr %selected8, ptr %current, align 8
  %4 = load i64, ptr %i, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %i, align 8
  br label %for.cond

for.aftr:                                         ; preds = %for.cond
  %6 = load i64, ptr %out_len, align 8
  %"derefrence struct9" = load ptr, ptr %current, align 8
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1
  %selected11 = load i64, ptr %"struct member ptr10", align 8
  %7 = add i64 %6, %selected11
  store i64 %7, ptr %out_len, align 8
  %8 = load i64, ptr %out_len, align 8
  %9 = call ptr @mem_alloc(ptr %__apoc_internal_context12, i64 %8)
  %"struct member ptr1362" = bitcast ptr %out to ptr
  store ptr %9, ptr %"struct member ptr1362", align 8
  %10 = load i64, ptr %out_len, align 8
  %"struct member ptr14" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  store i64 %10, ptr %"struct member ptr14", align 8
  store i64 0, ptr %times, align 8
  store i64 0, ptr %times, align 8
  store i64 0, ptr %i15, align 8
  store i64 0, ptr %i15, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.body17, %for.aftr
  %"derefrence struct19" = load ptr, ptr %current, align 8
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 2
  %selected21 = load ptr, ptr %"struct member ptr20", align 8
  %11 = icmp ne ptr %selected21, null
  br i1 %11, label %for.body17, label %for.aftr18

for.body17:                                       ; preds = %for.cond16
  %12 = load i64, ptr %times, align 8
  %13 = mul i64 %12, 256
  %"struct member ptr2463" = bitcast ptr %out to ptr
  %ptr_load = load ptr, ptr %"struct member ptr2463", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %13
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %14 = load i64, ptr %times, align 8
  %15 = mul i64 %14, 256
  %"struct member ptr2564" = bitcast ptr %out to ptr
  %ptr_load26 = load ptr, ptr %"struct member ptr2564", align 8
  %elem_ptr27 = getelementptr i8, ptr %ptr_load26, i64 %15
  %"derefrence struct28" = load ptr, ptr %current, align 8
  %"struct member ptr2965" = bitcast ptr %"derefrence struct28" to ptr
  %elem_ptr3066 = bitcast ptr %"struct member ptr2965" to ptr
  %indexed_val31 = load i8, ptr %elem_ptr3066, align 1
  %"derefrence struct32" = load ptr, ptr %current, align 8
  %"struct member ptr3367" = bitcast ptr %"derefrence struct32" to ptr
  %elem_ptr3468 = bitcast ptr %"struct member ptr3367" to ptr
  %"derefrence struct35" = load ptr, ptr %current, align 8
  %"struct member ptr36" = getelementptr inbounds %String_Builder, ptr %"derefrence struct35", i32 0, i32 1
  %selected37 = load i64, ptr %"struct member ptr36", align 8
  call void @copy(ptr %__apoc_internal_context23, ptr %elem_ptr27, ptr %elem_ptr3468, i64 %selected37)
  %"derefrence struct38" = load ptr, ptr %current, align 8
  %"struct member ptr39" = getelementptr inbounds %String_Builder, ptr %"derefrence struct38", i32 0, i32 2
  %selected40 = load ptr, ptr %"struct member ptr39", align 8
  store ptr %selected40, ptr %current, align 8
  %16 = load i64, ptr %times, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %times, align 8
  %18 = load i64, ptr %i15, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %i15, align 8
  br label %for.cond16

for.aftr18:                                       ; preds = %for.cond16
  %20 = load i64, ptr %times, align 8
  %21 = mul i64 %20, 256
  %"struct member ptr4269" = bitcast ptr %out to ptr
  %ptr_load43 = load ptr, ptr %"struct member ptr4269", align 8
  %elem_ptr44 = getelementptr i8, ptr %ptr_load43, i64 %21
  %indexed_val45 = load i8, ptr %elem_ptr44, align 1
  %22 = load i64, ptr %times, align 8
  %23 = mul i64 %22, 256
  %"struct member ptr4670" = bitcast ptr %out to ptr
  %ptr_load47 = load ptr, ptr %"struct member ptr4670", align 8
  %elem_ptr48 = getelementptr i8, ptr %ptr_load47, i64 %23
  %"derefrence struct49" = load ptr, ptr %current, align 8
  %"struct member ptr5071" = bitcast ptr %"derefrence struct49" to ptr
  %elem_ptr5172 = bitcast ptr %"struct member ptr5071" to ptr
  %indexed_val52 = load i8, ptr %elem_ptr5172, align 1
  %"derefrence struct53" = load ptr, ptr %current, align 8
  %"struct member ptr5473" = bitcast ptr %"derefrence struct53" to ptr
  %elem_ptr5574 = bitcast ptr %"struct member ptr5473" to ptr
  %"derefrence struct56" = load ptr, ptr %current, align 8
  %"struct member ptr57" = getelementptr inbounds %String_Builder, ptr %"derefrence struct56", i32 0, i32 1
  %selected58 = load i64, ptr %"struct member ptr57", align 8
  call void @copy(ptr %__apoc_internal_context41, ptr %elem_ptr48, ptr %elem_ptr5574, i64 %selected58)
  %24 = load i64, ptr %out_len, align 8
  %"derefrence struct59" = load ptr, ptr %builder2, align 8
  %"struct member ptr60" = getelementptr inbounds %String_Builder, ptr %"derefrence struct59", i32 0, i32 1
  %selected61 = load i64, ptr %"struct member ptr60", align 8
  %25 = add i64 %24, %selected61
  store i64 %25, ptr %out_len, align 8
  %26 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr75 = bitcast ptr %26 to ptr
  %27 = load ptr, ptr %ret_ptr75, align 8
  %28 = load %string, ptr %out, align 8
  store %string %28, ptr %27, align 8
  ret void
}

define void @init_builder(ptr %__apoc_internal_context, ptr %text) {
entry:
  %__apoc_internal_context11 = alloca %__Internal_Context, align 8
  %i = alloca i64, align 8
  %times = alloca i64, align 8
  %current = alloca ptr, align 8
  %out = alloca %String_Builder, align 256
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 8
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %out, i8 0, i64 272, i1 false)
  %0 = load %String_Builder, ptr %out, align 8
  store i64 0, ptr %current, align 8
  store ptr %out, ptr %current, align 8
  store i64 0, ptr %times, align 8
  store i64 0, ptr %times, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.aftr, %entry
  %1 = load i64, ptr %i, align 8
  %2 = load i64, ptr %times, align 8
  %3 = mul i64 %2, 256
  %4 = add i64 %1, %3
  %ptr_load = load ptr, ptr %text2, align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %4
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %5 = icmp ne i8 %indexed_val, 0
  br i1 %5, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %times, align 8
  %8 = mul i64 %7, 256
  %9 = add i64 %6, %8
  %ptr_load3 = load ptr, ptr %text2, align 8
  %elem_ptr4 = getelementptr i8, ptr %ptr_load3, i64 %9
  %indexed_val5 = load i8, ptr %elem_ptr4, align 1
  %10 = load i64, ptr %i, align 8
  %"derefrence struct" = load ptr, ptr %current, align 8
  %"struct member ptr17" = bitcast ptr %"derefrence struct" to ptr
  %elem_ptr6 = getelementptr [256 x i8], ptr %"struct member ptr17", i64 0, i64 %10
  store i8 %indexed_val5, ptr %elem_ptr6, align 1
  %"derefrence struct7" = load ptr, ptr %current, align 8
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %"derefrence struct7", i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr8", align 8
  %11 = add i64 %selected, 1
  %"derefrence struct9" = load ptr, ptr %current, align 8
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1
  store i64 %11, ptr %"struct member ptr10", align 8
  %12 = load i64, ptr %i, align 8
  %13 = icmp eq i64 %12, 256
  br i1 %13, label %if.true, label %if.aftr

for.aftr:                                         ; preds = %for.cond
  %14 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr18 = bitcast ptr %14 to ptr
  %15 = load ptr, ptr %ret_ptr18, align 8
  %16 = load %String_Builder, ptr %out, align 8
  store %String_Builder %16, ptr %15, align 256
  ret void

if.true:                                          ; preds = %for.body
  store i64 0, ptr %i, align 8
  %17 = load i64, ptr %times, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %times, align 8
  %19 = call ptr @mem_alloc(ptr %__apoc_internal_context11, i64 272)
  %"derefrence struct12" = load ptr, ptr %current, align 8
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 2
  store ptr %19, ptr %"struct member ptr13", align 8
  %"derefrence struct14" = load ptr, ptr %current, align 8
  %"struct member ptr15" = getelementptr inbounds %String_Builder, ptr %"derefrence struct14", i32 0, i32 2
  %selected16 = load ptr, ptr %"struct member ptr15", align 8
  store ptr %selected16, ptr %current, align 8
  br label %if.aftr

if.aftr:                                          ; preds = %for.body, %if.true
  %20 = load i64, ptr %i, align 8
  %21 = add i64 %20, 1
  store i64 %21, ptr %i, align 8
  br label %for.cond
}

define i8 @compare(ptr %__apoc_internal_context, ptr %str1, ptr %str2) {
entry:
  %i = alloca i64, align 8
  %str23 = alloca ptr, align 8
  %str12 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %str12, align 8
  store ptr %str1, ptr %str12, align 8
  store i64 0, ptr %str23, align 8
  store ptr %str2, ptr %str23, align 8
  %"derefrence struct" = load ptr, ptr %str12, align 8
  %"struct member ptr" = getelementptr inbounds %string, ptr %"derefrence struct", i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 8
  %"derefrence struct4" = load ptr, ptr %str23, align 8
  %"struct member ptr5" = getelementptr inbounds %string, ptr %"derefrence struct4", i32 0, i32 1
  %selected6 = load i64, ptr %"struct member ptr5", align 8
  %0 = icmp ne i64 %selected, %selected6
  br i1 %0, label %if.true, label %if.aftr

if.true:                                          ; preds = %entry
  ret i8 0

if.aftr:                                          ; preds = %entry
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.aftr18, %if.aftr
  %1 = load i64, ptr %i, align 8
  %"derefrence struct7" = load ptr, ptr %str12, align 8
  %"struct member ptr8" = getelementptr inbounds %string, ptr %"derefrence struct7", i32 0, i32 1
  %selected9 = load i64, ptr %"struct member ptr8", align 8
  %2 = icmp slt i64 %1, %selected9
  br i1 %2, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 8
  %"derefrence struct10" = load ptr, ptr %str12, align 8
  %"struct member ptr1119" = bitcast ptr %"derefrence struct10" to ptr
  %ptr_load = load ptr, ptr %"struct member ptr1119", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %3
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %4 = load i64, ptr %i, align 8
  %"derefrence struct12" = load ptr, ptr %str23, align 8
  %"struct member ptr1320" = bitcast ptr %"derefrence struct12" to ptr
  %ptr_load14 = load ptr, ptr %"struct member ptr1320", align 8
  %elem_ptr15 = getelementptr i8, ptr %ptr_load14, i64 %4
  %indexed_val16 = load i8, ptr %elem_ptr15, align 1
  %5 = icmp ne i8 %indexed_val, %indexed_val16
  br i1 %5, label %if.true17, label %if.aftr18

for.aftr:                                         ; preds = %for.cond
  ret i8 1

if.true17:                                        ; preds = %for.body
  ret i8 0

if.aftr18:                                        ; preds = %for.body
  %6 = load i64, ptr %i, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %i, align 8
  br label %for.cond
}

define void @to_string(ptr %__apoc_internal_context, ptr %text) {
entry:
  %str = alloca %string, align 8
  %__apoc_internal_context5 = alloca %__Internal_Context, align 8
  %allocated = alloca ptr, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %text_len = alloca i64, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 8
  store ptr %text, ptr %text2, align 8
  %0 = load ptr, ptr %text2, align 8
  %1 = call i64 @len(ptr %__apoc_internal_context3, ptr %0)
  store i64 0, ptr %text_len, align 8
  store i64 %1, ptr %text_len, align 8
  %2 = load i64, ptr %text_len, align 8
  %3 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %2)
  store i64 0, ptr %allocated, align 8
  store ptr %3, ptr %allocated, align 8
  %4 = load ptr, ptr %allocated, align 8
  %5 = load ptr, ptr %text2, align 8
  %6 = load i64, ptr %text_len, align 8
  call void @copy(ptr %__apoc_internal_context5, ptr %4, ptr %5, i64 %6)
  call void @llvm.memset.p0.i64(ptr align 8 %str, i8 0, i64 16, i1 false)
  %7 = load i64, ptr %text_len, align 8
  %8 = getelementptr inbounds %string, ptr %str, i32 0, i32 1
  store i64 %7, ptr %8, align 8
  %9 = load ptr, ptr %allocated, align 8
  %10 = bitcast ptr %str to ptr
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr6 = bitcast ptr %11 to ptr
  %12 = load ptr, ptr %ret_ptr6, align 8
  %13 = load %string, ptr %str, align 8
  store %string %13, ptr %12, align 8
  ret void
}

define void @terminate_string(ptr %__apoc_internal_context, ptr %str) {
entry:
  %__apoc_internal_context8 = alloca %__Internal_Context, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %out = alloca %string, align 8
  %str2 = alloca %string, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str2, i8 0, i64 16, i1 false)
  %0 = load ptr, ptr %str, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false)
  %"struct member ptr" = getelementptr inbounds %string, ptr %0, i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 8
  %1 = add i64 %selected, 1
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  store i64 %1, ptr %"struct member ptr3", align 8
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  %selected6 = load i64, ptr %"struct member ptr5", align 8
  %2 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6)
  %"struct member ptr718" = bitcast ptr %out to ptr
  store ptr %2, ptr %"struct member ptr718", align 8
  %"struct member ptr919" = bitcast ptr %out to ptr
  %selected10 = load ptr, ptr %"struct member ptr919", align 8
  %"struct member ptr1120" = bitcast ptr %0 to ptr
  %selected12 = load ptr, ptr %"struct member ptr1120", align 8
  %"struct member ptr13" = getelementptr inbounds %string, ptr %0, i32 0, i32 1
  %selected14 = load i64, ptr %"struct member ptr13", align 8
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14)
  %"struct member ptr15" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  %selected16 = load i64, ptr %"struct member ptr15", align 8
  %"struct member ptr1721" = bitcast ptr %out to ptr
  %ptr_load = load ptr, ptr %"struct member ptr1721", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected16
  store i8 0, ptr %elem_ptr, align 1
  %3 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr22 = bitcast ptr %3 to ptr
  %4 = load ptr, ptr %ret_ptr22, align 8
  %5 = load %string, ptr %out, align 8
  store %string %5, ptr %4, align 8
  ret void
}

define void @build_unsigned_int(ptr %__apoc_internal_context, i64 %num, i64 %num_size, ptr %builder) {
entry:
  %"arg_copy&" = alloca ptr, align 8
  %arg_copy = alloca %String_Builder, align 256
  %__apoc_internal_context5 = alloca %__Internal_Context, align 8
  %digit = alloca i64, align 8
  %builder4 = alloca ptr, align 8
  %num_size3 = alloca i64, align 8
  %num2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %num2, align 8
  store i64 %num, ptr %num2, align 8
  store i64 0, ptr %num_size3, align 8
  store i64 %num_size, ptr %num_size3, align 8
  store i64 0, ptr %builder4, align 8
  store ptr %builder, ptr %builder4, align 8
  %0 = load i64, ptr %num_size3, align 8
  %1 = icmp ne i64 %0, 0
  br i1 %1, label %if.true, label %if.aftr

if.true:                                          ; preds = %entry
  %2 = load i64, ptr %num2, align 8
  %3 = urem i64 %2, 10
  %4 = add i64 %3, 48
  store i64 0, ptr %digit, align 8
  store i64 %4, ptr %digit, align 8
  %5 = load i64, ptr %num2, align 8
  %6 = udiv i64 %5, 10
  %7 = load i64, ptr %num_size3, align 8
  %8 = sub i64 %7, 1
  %9 = load ptr, ptr %builder4, align 8
  call void @build_unsigned_int(ptr %__apoc_internal_context5, i64 %6, i64 %8, ptr %9)
  %10 = load ptr, ptr %builder4, align 8
  %derefrenced = load %String_Builder, ptr %10, align 256
  %ptr_addr = load ptr, ptr %builder4, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy, i8 0, i64 272, i1 false)
  store ptr %ptr_addr, ptr %arg_copy, align 256
  store ptr %arg_copy, ptr %"arg_copy&", align 8
  %11 = load i64, ptr %digit, align 8
  %cast = trunc i64 %11 to i8
  call void @"overload[x]=.11"(ptr %"arg_copy&", i8 %cast)
  br label %if.aftr

if.aftr:                                          ; preds = %entry, %if.true
  ret void
}

define void @int_to_str(ptr %__apoc_internal_context, i64 %num, ptr %builder) {
entry:
  %__apoc_internal_context10 = alloca %__Internal_Context, align 8
  %"arg_copy&9" = alloca ptr, align 8
  %arg_copy8 = alloca %String_Builder, align 256
  %num_size = alloca i64, align 8
  %div_copy = alloca i64, align 8
  %"arg_copy&" = alloca ptr, align 8
  %arg_copy = alloca %String_Builder, align 256
  %builder3 = alloca ptr, align 8
  %num2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %num2, align 8
  store i64 %num, ptr %num2, align 8
  store i64 0, ptr %builder3, align 8
  store ptr %builder, ptr %builder3, align 8
  %0 = load i64, ptr %num2, align 8
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %if.true, label %if.aftr

if.true:                                          ; preds = %entry
  %2 = load ptr, ptr %builder3, align 8
  %derefrenced = load %String_Builder, ptr %2, align 256
  %ptr_addr = load ptr, ptr %builder3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy, i8 0, i64 272, i1 false)
  store ptr %ptr_addr, ptr %arg_copy, align 256
  store ptr %arg_copy, ptr %"arg_copy&", align 8
  call void @"overload[x]=.11"(ptr %"arg_copy&", i8 48)
  ret void

if.aftr:                                          ; preds = %entry
  %3 = load i64, ptr %num2, align 8
  store i64 0, ptr %div_copy, align 8
  store i64 %3, ptr %div_copy, align 8
  store i64 0, ptr %num_size, align 8
  store i64 0, ptr %num_size, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.aftr
  %4 = load i64, ptr %div_copy, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %div_copy, align 8
  %7 = sdiv i64 %6, 10
  store i64 %7, ptr %div_copy, align 8
  %8 = load i64, ptr %num_size, align 8
  %9 = add i64 %8, 1
  store i64 %9, ptr %num_size, align 8
  br label %for.cond

for.aftr:                                         ; preds = %for.cond
  %10 = load i64, ptr %num2, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %if.true4, label %if.aftr5

if.true4:                                         ; preds = %for.aftr
  %12 = load ptr, ptr %builder3, align 8
  %derefrenced6 = load %String_Builder, ptr %12, align 256
  %ptr_addr7 = load ptr, ptr %builder3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy8, i8 0, i64 272, i1 false)
  store ptr %ptr_addr7, ptr %arg_copy8, align 256
  store ptr %arg_copy8, ptr %"arg_copy&9", align 8
  call void @"overload[x]=.11"(ptr %"arg_copy&9", i8 45)
  %13 = load i64, ptr %num2, align 8
  %14 = sub i64 0, %13
  store i64 %14, ptr %num2, align 8
  %15 = load i64, ptr %num_size, align 8
  %16 = add i64 %15, 1
  store i64 %16, ptr %num_size, align 8
  br label %if.aftr5

if.aftr5:                                         ; preds = %for.aftr, %if.true4
  %17 = load i64, ptr %num2, align 8
  %18 = load i64, ptr %num_size, align 8
  %19 = load ptr, ptr %builder3, align 8
  call void @build_unsigned_int(ptr %__apoc_internal_context10, i64 %17, i64 %18, ptr %19)
  ret void
}

define void @float_to_str(ptr %__apoc_internal_context, double %num, ptr %builder) {
entry:
  %__apoc_internal_context28 = alloca %__Internal_Context, align 8
  %"arg_copy&27" = alloca ptr, align 8
  %arg_copy26 = alloca %String_Builder, align 256
  %i = alloca i64, align 8
  %zeroes_to_append = alloca i64, align 8
  %"arg_copy&15" = alloca ptr, align 8
  %arg_copy14 = alloca %String_Builder, align 256
  %__apoc_internal_context11 = alloca %__Internal_Context, align 8
  %"arg_copy&10" = alloca ptr, align 8
  %arg_copy9 = alloca %String_Builder, align 256
  %decimal = alloca i64, align 8
  %"arg_copy&" = alloca ptr, align 8
  %arg_copy = alloca %String_Builder, align 256
  %builder3 = alloca ptr, align 8
  %num2 = alloca double, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %num2, align 8
  store double %num, ptr %num2, align 8
  store i64 0, ptr %builder3, align 8
  store ptr %builder, ptr %builder3, align 8
  %0 = load double, ptr %num2, align 8
  %1 = fcmp ult double %0, 0.000000e+00
  br i1 %1, label %if.true, label %if.aftr

if.true:                                          ; preds = %entry
  %2 = load ptr, ptr %builder3, align 8
  %derefrenced = load %String_Builder, ptr %2, align 256
  %ptr_addr = load ptr, ptr %builder3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy, i8 0, i64 272, i1 false)
  store ptr %ptr_addr, ptr %arg_copy, align 256
  store ptr %arg_copy, ptr %"arg_copy&", align 8
  call void @"overload[x]=.11"(ptr %"arg_copy&", i8 45)
  %3 = load double, ptr %num2, align 8
  %4 = fneg double %3
  store double %4, ptr %num2, align 8
  br label %if.aftr

if.aftr:                                          ; preds = %entry, %if.true
  %5 = load double, ptr %num2, align 8
  %cast = fptoui double %5 to i64
  store i64 0, ptr %decimal, align 8
  store i64 %cast, ptr %decimal, align 8
  %6 = load double, ptr %num2, align 8
  %7 = load i64, ptr %decimal, align 8
  %cast4 = uitofp i64 %7 to double
  %8 = fsub double %6, %cast4
  store double %8, ptr %num2, align 8
  %9 = load i64, ptr %decimal, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %if.true5, label %if.else

if.true5:                                         ; preds = %if.aftr
  %11 = load ptr, ptr %builder3, align 8
  %derefrenced7 = load %String_Builder, ptr %11, align 256
  %ptr_addr8 = load ptr, ptr %builder3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy9, i8 0, i64 272, i1 false)
  store ptr %ptr_addr8, ptr %arg_copy9, align 256
  store ptr %arg_copy9, ptr %"arg_copy&10", align 8
  call void @"overload[x]=.11"(ptr %"arg_copy&10", i8 48)
  br label %if.aftr6

if.aftr6:                                         ; preds = %if.else, %if.true5
  %12 = load ptr, ptr %builder3, align 8
  %derefrenced12 = load %String_Builder, ptr %12, align 256
  %ptr_addr13 = load ptr, ptr %builder3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy14, i8 0, i64 272, i1 false)
  store ptr %ptr_addr13, ptr %arg_copy14, align 256
  store ptr %arg_copy14, ptr %"arg_copy&15", align 8
  call void @"overload[x]=.11"(ptr %"arg_copy&15", i8 46)
  store i64 0, ptr %zeroes_to_append, align 8
  store i64 0, ptr %zeroes_to_append, align 8
  br label %for.cond

if.else:                                          ; preds = %if.aftr
  %13 = load i64, ptr %decimal, align 8
  %14 = load ptr, ptr %builder3, align 8
  call void @int_to_str(ptr %__apoc_internal_context11, i64 %13, ptr %14)
  br label %if.aftr6

for.cond:                                         ; preds = %if.true19, %for.body, %if.aftr6
  %15 = load double, ptr %num2, align 8
  %cast16 = fptoui double %15 to i64
  %cast17 = uitofp i64 %cast16 to double
  %16 = load double, ptr %num2, align 8
  %17 = fcmp une double %cast17, %16
  br i1 %17, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %18 = load double, ptr %num2, align 8
  %19 = fmul double %18, 1.000000e+01
  store double %19, ptr %num2, align 8
  %20 = load double, ptr %num2, align 8
  %cast18 = fptoui double %20 to i64
  %21 = icmp eq i64 %cast18, 0
  br i1 %21, label %if.true19, label %for.cond

for.aftr:                                         ; preds = %for.cond
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond21

if.true19:                                        ; preds = %for.body
  %22 = load i64, ptr %zeroes_to_append, align 8
  %23 = add i64 %22, 1
  store i64 %23, ptr %zeroes_to_append, align 8
  br label %for.cond

for.cond21:                                       ; preds = %for.body22, %for.aftr
  %24 = load i64, ptr %i, align 8
  %25 = load i64, ptr %zeroes_to_append, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %for.body22, label %for.aftr23

for.body22:                                       ; preds = %for.cond21
  %27 = load ptr, ptr %builder3, align 8
  %derefrenced24 = load %String_Builder, ptr %27, align 256
  %ptr_addr25 = load ptr, ptr %builder3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy26, i8 0, i64 272, i1 false)
  store ptr %ptr_addr25, ptr %arg_copy26, align 256
  store ptr %arg_copy26, ptr %"arg_copy&27", align 8
  call void @"overload[x]=.11"(ptr %"arg_copy&27", i8 48)
  %28 = load i64, ptr %i, align 8
  %29 = add i64 %28, 1
  store i64 %29, ptr %i, align 8
  br label %for.cond21

for.aftr23:                                       ; preds = %for.cond21
  %30 = load double, ptr %num2, align 8
  %cast29 = fptosi double %30 to i64
  %31 = load ptr, ptr %builder3, align 8
  call void @int_to_str(ptr %__apoc_internal_context28, i64 %cast29, ptr %31)
  ret void
}

define void @find_printable_type(ptr %__apoc_internal_context, ptr %item, ptr %builder) {
entry:
  %"arg_copy&17" = alloca ptr, align 8
  %arg_copy16 = alloca %String_Builder, align 256
  %to_return = alloca %string, align 8
  %__apoc_internal_context11 = alloca %__Internal_Context, align 8
  %"arg_copy&" = alloca ptr, align 8
  %arg_copy = alloca %String_Builder, align 256
  %i = alloca i64, align 8
  %builder3 = alloca ptr, align 8
  %item2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %item2, align 8
  store ptr %item, ptr %item2, align 8
  store i64 0, ptr %builder3, align 8
  store ptr %builder, ptr %builder3, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.aftr, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr @global_var.2, align 8
  %2 = icmp slt i64 %0, %1
  br i1 %2, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 8
  %elem_ptr = getelementptr [1024 x %Printable_Type_Info], ptr @global_var.1, i64 0, i64 %3
  %"struct member ptr" = getelementptr inbounds %Printable_Type_Info, ptr %elem_ptr, i32 0, i32 1
  %selected = load ptr, ptr %"struct member ptr", align 8
  %"derefrence struct" = load ptr, ptr %item2, align 8
  %"struct member ptr418" = bitcast ptr %"derefrence struct" to ptr
  %"derefrence struct5" = load ptr, ptr %"struct member ptr418", align 8
  %"union member ptr19" = bitcast ptr %"derefrence struct5" to ptr
  %"struct member ptr6" = getelementptr inbounds %Type_Struct.4, ptr %"union member ptr19", i32 0, i32 4
  %selected7 = load ptr, ptr %"struct member ptr6", align 8
  %4 = call i32 @strcmp(ptr %selected, ptr %selected7)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.true, label %if.aftr

for.aftr:                                         ; preds = %for.cond
  %6 = load ptr, ptr %builder3, align 8
  %derefrenced14 = load %String_Builder, ptr %6, align 256
  %ptr_addr15 = load ptr, ptr %builder3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy16, i8 0, i64 272, i1 false)
  store ptr %ptr_addr15, ptr %arg_copy16, align 256
  store ptr %arg_copy16, ptr %"arg_copy&17", align 8
  call void @"overload[x]="(ptr %"arg_copy&17", ptr @0)
  ret void

if.true:                                          ; preds = %for.body
  %7 = load ptr, ptr %builder3, align 8
  %derefrenced = load %String_Builder, ptr %7, align 256
  %ptr_addr = load ptr, ptr %builder3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy, i8 0, i64 272, i1 false)
  store ptr %ptr_addr, ptr %arg_copy, align 256
  store ptr %arg_copy, ptr %"arg_copy&", align 8
  %8 = load i64, ptr %i, align 8
  %elem_ptr8 = getelementptr [1024 x %Printable_Type_Info], ptr @global_var.1, i64 0, i64 %8
  %"struct member ptr920" = bitcast ptr %elem_ptr8 to ptr
  %selected10 = load ptr, ptr %"struct member ptr920", align 8
  call void @llvm.memset.p0.i64(ptr align 8 %to_return, i8 0, i64 16, i1 false)
  %return_value_member21 = bitcast ptr %__apoc_internal_context11 to ptr
  store ptr %to_return, ptr %return_value_member21, align 8
  %9 = load ptr, ptr %item2, align 8
  call void %selected10(ptr %__apoc_internal_context11, ptr %9)
  %"struct member ptr1222" = bitcast ptr %to_return to ptr
  %selected13 = load ptr, ptr %"struct member ptr1222", align 8
  call void @"overload[x]="(ptr %"arg_copy&", ptr %selected13)
  ret void

if.aftr:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8
  %11 = add i64 %10, 1
  store i64 %11, ptr %i, align 8
  br label %for.cond
}

define void @parse_format(ptr %__apoc_internal_context, ptr %format, ptr %list) {
entry:
  %out = alloca %string, align 8
  %__apoc_internal_context73 = alloca %__Internal_Context, align 8
  %"arg_copy&72" = alloca ptr, align 8
  %arg_copy71 = alloca %String_Builder, align 256
  %"arg_copy&70" = alloca ptr, align 8
  %arg_copy69 = alloca %string, align 8
  %"arg_copy&68" = alloca ptr, align 8
  %arg_copy67 = alloca %String_Builder, align 256
  %"arg_copy&65" = alloca ptr, align 8
  %arg_copy64 = alloca %string, align 8
  %"arg_copy&63" = alloca ptr, align 8
  %arg_copy62 = alloca %String_Builder, align 256
  %__apoc_internal_context60 = alloca %__Internal_Context, align 8
  %__apoc_internal_context56 = alloca %__Internal_Context, align 8
  %size45 = alloca i32, align 4
  %to_parse39 = alloca double, align 8
  %__apoc_internal_context35 = alloca %__Internal_Context, align 8
  %size = alloca i32, align 4
  %to_parse = alloca i64, align 8
  %type = alloca i32, align 4
  %item = alloca %Any, align 8
  %"arg_copy&" = alloca ptr, align 8
  %arg_copy = alloca %string, align 8
  %i = alloca i64, align 8
  %list_index = alloca i64, align 8
  %builder = alloca %String_Builder, align 256
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %list3 = alloca ptr, align 8
  %format2 = alloca %string, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %format2, i8 0, i64 16, i1 false)
  %0 = load ptr, ptr %format, align 8
  store i64 0, ptr %list3, align 8
  store ptr %list, ptr %list3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %builder, i8 0, i64 272, i1 false)
  %return_value_member75 = bitcast ptr %__apoc_internal_context4 to ptr
  store ptr %builder, ptr %return_value_member75, align 8
  call void @init_builder(ptr %__apoc_internal_context4, ptr @1)
  store i64 0, ptr %list_index, align 8
  store i64 0, ptr %list_index, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.aftr, %entry
  %1 = load i64, ptr %i, align 8
  %"struct member ptr" = getelementptr inbounds %string, ptr %0, i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 8
  %2 = icmp slt i64 %1, %selected
  br i1 %2, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %3 = load %string, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %arg_copy, i8 0, i64 16, i1 false)
  store %string %3, ptr %arg_copy, align 8
  store ptr %arg_copy, ptr %"arg_copy&", align 8
  %4 = load i64, ptr %i, align 8
  %5 = call i8 @"overload[]"(ptr %"arg_copy&", i64 %4)
  %6 = icmp eq i8 %5, 37
  br i1 %6, label %if.true, label %if.else66

for.aftr:                                         ; preds = %for.cond
  %7 = load %String_Builder, ptr %builder, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy71, i8 0, i64 272, i1 false)
  store ptr %builder, ptr %arg_copy71, align 256
  store ptr %arg_copy71, ptr %"arg_copy&72", align 8
  call void @"overload[x]=.11"(ptr %"arg_copy&72", i8 10)
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false)
  %return_value_member7476 = bitcast ptr %__apoc_internal_context73 to ptr
  store ptr %out, ptr %return_value_member7476, align 8
  %8 = load %String_Builder, ptr %builder, align 8
  call void @builder_to_string(ptr %__apoc_internal_context73, ptr %builder)
  %9 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr77 = bitcast ptr %9 to ptr
  %10 = load ptr, ptr %ret_ptr77, align 8
  %11 = load %string, ptr %out, align 8
  store %string %11, ptr %10, align 8
  ret void

if.true:                                          ; preds = %for.body
  %12 = load i64, ptr %list_index, align 8
  %ptr_load = load ptr, ptr %list3, align 8
  %elem_ptr = getelementptr %Any, ptr %ptr_load, i64 %12
  %indexed_val = load %Any, ptr %elem_ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %item, i8 0, i64 16, i1 false)
  store %Any %indexed_val, ptr %item, align 8
  %13 = load i64, ptr %list_index, align 8
  %14 = add i64 %13, 1
  store i64 %14, ptr %list_index, align 8
  %"struct member ptr578" = bitcast ptr %item to ptr
  %"derefrence struct" = load ptr, ptr %"struct member ptr578", align 8
  %"union member ptr79" = bitcast ptr %"derefrence struct" to ptr
  %selected6 = load i32, ptr %"union member ptr79", align 4
  store i32 0, ptr %type, align 4
  store i32 %selected6, ptr %type, align 4
  %15 = load i32, ptr %type, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %if.true7, label %if.else36

if.aftr:                                          ; preds = %if.true58, %if.else61, %if.aftr47, %if.aftr15, %if.else66
  %17 = load i64, ptr %i, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %i, align 8
  br label %for.cond

if.true7:                                         ; preds = %if.true
  store i64 0, ptr %to_parse, align 8
  store i64 0, ptr %to_parse, align 8
  %"struct member ptr980" = bitcast ptr %item to ptr
  %"derefrence struct10" = load ptr, ptr %"struct member ptr980", align 8
  %"union member ptr1181" = bitcast ptr %"derefrence struct10" to ptr
  %"struct member ptr12" = getelementptr inbounds %Type_Primitive.3, ptr %"union member ptr1181", i32 0, i32 1
  %selected13 = load i32, ptr %"struct member ptr12", align 4
  store i32 0, ptr %size, align 4
  store i32 %selected13, ptr %size, align 4
  %19 = load i32, ptr %size, align 4
  %20 = icmp eq i32 %19, 1
  %21 = load i32, ptr %size, align 4
  %22 = icmp eq i32 %21, 5
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %if.true14, label %if.else

if.true14:                                        ; preds = %if.true7
  %"struct member ptr16" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1
  %selected17 = load ptr, ptr %"struct member ptr16", align 8
  %derefrenced = load i8, ptr %selected17, align 1
  %cast = sext i8 %derefrenced to i64
  store i64 %cast, ptr %to_parse, align 8
  br label %if.aftr15

if.aftr15:                                        ; preds = %if.true25, %if.else31, %if.true18, %if.true14
  %24 = load i64, ptr %to_parse, align 8
  %25 = load %String_Builder, ptr %builder, align 8
  call void @int_to_str(ptr %__apoc_internal_context35, i64 %24, ptr %builder)
  br label %if.aftr

if.else:                                          ; preds = %if.true7
  %26 = load i32, ptr %size, align 4
  %27 = icmp eq i32 %26, 2
  %28 = load i32, ptr %size, align 4
  %29 = icmp eq i32 %28, 6
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %if.true18, label %if.else24

if.true18:                                        ; preds = %if.else
  %"struct member ptr20" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1
  %selected21 = load ptr, ptr %"struct member ptr20", align 8
  %derefrenced22 = load i16, ptr %selected21, align 2
  %cast23 = sext i16 %derefrenced22 to i64
  store i64 %cast23, ptr %to_parse, align 8
  br label %if.aftr15

if.else24:                                        ; preds = %if.else
  %31 = load i32, ptr %size, align 4
  %32 = icmp eq i32 %31, 3
  %33 = load i32, ptr %size, align 4
  %34 = icmp eq i32 %33, 7
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %if.true25, label %if.else31

if.true25:                                        ; preds = %if.else24
  %"struct member ptr27" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1
  %selected28 = load ptr, ptr %"struct member ptr27", align 8
  %derefrenced29 = load i32, ptr %selected28, align 4
  %cast30 = sext i32 %derefrenced29 to i64
  store i64 %cast30, ptr %to_parse, align 8
  br label %if.aftr15

if.else31:                                        ; preds = %if.else24
  %"struct member ptr32" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1
  %selected33 = load ptr, ptr %"struct member ptr32", align 8
  %derefrenced34 = load i64, ptr %selected33, align 8
  store i64 %derefrenced34, ptr %to_parse, align 8
  br label %if.aftr15

if.else36:                                        ; preds = %if.true
  %36 = load i32, ptr %type, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %if.true37, label %if.else57

if.true37:                                        ; preds = %if.else36
  store i64 0, ptr %to_parse39, align 8
  store double 0.000000e+00, ptr %to_parse39, align 8
  %"struct member ptr4082" = bitcast ptr %item to ptr
  %"derefrence struct41" = load ptr, ptr %"struct member ptr4082", align 8
  %"union member ptr4283" = bitcast ptr %"derefrence struct41" to ptr
  %"struct member ptr43" = getelementptr inbounds %Type_Primitive.3, ptr %"union member ptr4283", i32 0, i32 1
  %selected44 = load i32, ptr %"struct member ptr43", align 4
  store i32 0, ptr %size45, align 4
  store i32 %selected44, ptr %size45, align 4
  %38 = load i32, ptr %size45, align 4
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %if.true46, label %if.else52

if.true46:                                        ; preds = %if.true37
  %"struct member ptr48" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1
  %selected49 = load ptr, ptr %"struct member ptr48", align 8
  %derefrenced50 = load float, ptr %selected49, align 4
  %cast51 = fpext float %derefrenced50 to double
  store double %cast51, ptr %to_parse39, align 8
  br label %if.aftr47

if.aftr47:                                        ; preds = %if.else52, %if.true46
  %40 = load double, ptr %to_parse39, align 8
  %41 = load %String_Builder, ptr %builder, align 8
  call void @float_to_str(ptr %__apoc_internal_context56, double %40, ptr %builder)
  br label %if.aftr

if.else52:                                        ; preds = %if.true37
  %"struct member ptr53" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1
  %selected54 = load ptr, ptr %"struct member ptr53", align 8
  %derefrenced55 = load double, ptr %selected54, align 8
  store double %derefrenced55, ptr %to_parse39, align 8
  br label %if.aftr47

if.else57:                                        ; preds = %if.else36
  %42 = load i32, ptr %type, align 4
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %if.true58, label %if.else61

if.true58:                                        ; preds = %if.else57
  %44 = load %Any, ptr %item, align 8
  %45 = load %String_Builder, ptr %builder, align 8
  call void @find_printable_type(ptr %__apoc_internal_context60, ptr %item, ptr %builder)
  br label %if.aftr

if.else61:                                        ; preds = %if.else57
  %46 = load %String_Builder, ptr %builder, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy62, i8 0, i64 272, i1 false)
  store ptr %builder, ptr %arg_copy62, align 256
  store ptr %arg_copy62, ptr %"arg_copy&63", align 8
  %47 = load %string, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %arg_copy64, i8 0, i64 16, i1 false)
  store %string %47, ptr %arg_copy64, align 8
  store ptr %arg_copy64, ptr %"arg_copy&65", align 8
  %48 = load i64, ptr %i, align 8
  %49 = call i8 @"overload[]"(ptr %"arg_copy&65", i64 %48)
  call void @"overload[x]=.11"(ptr %"arg_copy&63", i8 %49)
  br label %if.aftr

if.else66:                                        ; preds = %for.body
  %50 = load %String_Builder, ptr %builder, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %arg_copy67, i8 0, i64 272, i1 false)
  store ptr %builder, ptr %arg_copy67, align 256
  store ptr %arg_copy67, ptr %"arg_copy&68", align 8
  %51 = load %string, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %arg_copy69, i8 0, i64 16, i1 false)
  store %string %51, ptr %arg_copy69, align 8
  store ptr %arg_copy69, ptr %"arg_copy&70", align 8
  %52 = load i64, ptr %i, align 8
  %53 = call i8 @"overload[]"(ptr %"arg_copy&70", i64 %52)
  call void @"overload[x]=.11"(ptr %"arg_copy&68", i8 %53)
  br label %if.aftr
}

declare void @"format_args!@* u8!@-"(ptr, ptr, ...)

define void @"format_args!@string!@-"(ptr %__apoc_internal_context, ptr %format, ...) {
entry:
  %"arg_copy&13" = alloca ptr, align 8
  %arg_copy12 = alloca %string, align 8
  %out14 = alloca %string, align 8
  %__apoc_internal_context10 = alloca %__Internal_Context, align 8
  %list9 = alloca ptr, align 8
  %format8 = alloca %string, align 8
  %__apoc_internal_context7 = alloca ptr, align 8
  %"arg_copy&" = alloca ptr, align 8
  %arg_copy = alloca %string, align 8
  %out = alloca %string, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %list = alloca ptr, align 8
  %str = alloca %string, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %format2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %format2, align 8
  store ptr %format, ptr %format2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str, i8 0, i64 16, i1 false)
  %return_value_member16 = bitcast ptr %__apoc_internal_context3 to ptr
  store ptr %str, ptr %return_value_member16, align 8
  %0 = load ptr, ptr %format2, align 8
  call void @to_string(ptr %__apoc_internal_context3, ptr %0)
  store i64 0, ptr %list, align 8
  store i64 0, ptr %list, align 8
  %1 = load ptr, ptr %list, align 8
  call void @llvm.va_start(ptr %list)
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false)
  %return_value_member517 = bitcast ptr %__apoc_internal_context4 to ptr
  store ptr %out, ptr %return_value_member517, align 8
  %2 = load %string, ptr %str, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %arg_copy, i8 0, i64 16, i1 false)
  store %string %2, ptr %arg_copy, align 8
  store ptr %arg_copy, ptr %"arg_copy&", align 8
  %3 = load ptr, ptr %list, align 8
  call void @parse_format(ptr %__apoc_internal_context4, ptr %"arg_copy&", ptr %3)
  %4 = load ptr, ptr %list, align 8
  call void @llvm.va_end(ptr %list)
  %5 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr18 = bitcast ptr %5 to ptr
  %6 = load ptr, ptr %ret_ptr18, align 8
  %7 = load %string, ptr %out, align 8
  store %string %7, ptr %6, align 8
  ret void
}

declare void @"print!@* u8!@-"(ptr, ptr, ...)

define void @"print!@string!@-"(ptr %__apoc_internal_context, ptr %format, ...) {
entry:
  %__apoc_internal_context21 = alloca %__Internal_Context, align 8
  %stdout20 = alloca ptr, align 8
  %__apoc_internal_context19 = alloca %__Internal_Context, align 8
  %"arg_copy&17" = alloca ptr, align 8
  %arg_copy16 = alloca %string, align 8
  %out18 = alloca %string, align 8
  %__apoc_internal_context14 = alloca %__Internal_Context, align 8
  %list13 = alloca ptr, align 8
  %format12 = alloca %string, align 8
  %__apoc_internal_context11 = alloca ptr, align 8
  %__apoc_internal_context7 = alloca %__Internal_Context, align 8
  %stdout = alloca ptr, align 8
  %__apoc_internal_context6 = alloca %__Internal_Context, align 8
  %"arg_copy&" = alloca ptr, align 8
  %arg_copy = alloca %string, align 8
  %out = alloca %string, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %list = alloca ptr, align 8
  %str = alloca %string, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %format2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %format2, align 8
  store ptr %format, ptr %format2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str, i8 0, i64 16, i1 false)
  %return_value_member27 = bitcast ptr %__apoc_internal_context3 to ptr
  store ptr %str, ptr %return_value_member27, align 8
  %0 = load ptr, ptr %format2, align 8
  call void @to_string(ptr %__apoc_internal_context3, ptr %0)
  store i64 0, ptr %list, align 8
  store i64 0, ptr %list, align 8
  %1 = load ptr, ptr %list, align 8
  call void @llvm.va_start(ptr %list)
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false)
  %return_value_member528 = bitcast ptr %__apoc_internal_context4 to ptr
  store ptr %out, ptr %return_value_member528, align 8
  %2 = load %string, ptr %str, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %arg_copy, i8 0, i64 16, i1 false)
  store %string %2, ptr %arg_copy, align 8
  store ptr %arg_copy, ptr %"arg_copy&", align 8
  %3 = load ptr, ptr %list, align 8
  call void @parse_format(ptr %__apoc_internal_context4, ptr %"arg_copy&", ptr %3)
  %4 = load ptr, ptr %list, align 8
  call void @llvm.va_end(ptr %list)
  %5 = call ptr @get_stdout(ptr %__apoc_internal_context6)
  store i64 0, ptr %stdout, align 8
  store ptr %5, ptr %stdout, align 8
  %6 = load ptr, ptr %stdout, align 8
  %"struct member ptr29" = bitcast ptr %out to ptr
  %selected = load ptr, ptr %"struct member ptr29", align 8
  %"struct member ptr8" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  %selected9 = load i64, ptr %"struct member ptr8", align 8
  %cast = trunc i64 %selected9 to i32
  %7 = call i8 @write_file(ptr %__apoc_internal_context7, ptr %6, ptr %selected, i32 %cast)
  ret void
}

define void @copy(ptr %__apoc_internal_context, ptr %dst, ptr %src, i64 %size) {
entry:
  %i = alloca i64, align 8
  %a1 = alloca ptr, align 8
  %a0 = alloca ptr, align 8
  %size4 = alloca i64, align 8
  %src3 = alloca ptr, align 8
  %dst2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %dst2, align 8
  store ptr %dst, ptr %dst2, align 8
  store i64 0, ptr %src3, align 8
  store ptr %src, ptr %src3, align 8
  store i64 0, ptr %size4, align 8
  store i64 %size, ptr %size4, align 8
  %0 = load ptr, ptr %dst2, align 8
  store i64 0, ptr %a0, align 8
  store ptr %0, ptr %a0, align 8
  %1 = load ptr, ptr %src3, align 8
  store i64 0, ptr %a1, align 8
  store ptr %1, ptr %a1, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %size4, align 8
  %4 = icmp slt i64 %2, %3
  br i1 %4, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %i, align 8
  %ptr_load = load ptr, ptr %a1, align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %6 = load i64, ptr %i, align 8
  %ptr_load5 = load ptr, ptr %a0, align 8
  %elem_ptr6 = getelementptr i8, ptr %ptr_load5, i64 %6
  store i8 %indexed_val, ptr %elem_ptr6, align 1
  br label %for.incr

for.aftr:                                         ; preds = %for.cond
  ret void

for.incr:                                         ; preds = %for.body
  %7 = load i64, ptr %i, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %i, align 8
  br label %for.cond
}

define i64 @len(ptr %__apoc_internal_context, ptr %text) {
entry:
  %result = alloca i64, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 8
  store ptr %text, ptr %text2, align 8
  store i64 0, ptr %result, align 8
  store i64 0, ptr %result, align 8
  store i64 0, ptr %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i64, ptr %result, align 8
  %ptr_load = load ptr, ptr %text2, align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %1 = icmp ne i8 %indexed_val, 0
  br i1 %1, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %result, align 8
  %3 = add i64 %2, 1
  store i64 %3, ptr %result, align 8
  br label %for.cond

for.aftr:                                         ; preds = %for.cond
  %4 = load i64, ptr %result, align 8
  ret i64 %4
}

declare i32 @GetLastError()

declare ptr @CreateFileA(ptr, i64, i32, ptr, i64, i64, ptr)

declare i8 @WriteFile(ptr, ptr, i32, ptr, ptr)

declare ptr @GetStdHandle(i32)

define ptr @open_file(ptr %__apoc_internal_context, ptr %f_name, i64 %access) {
entry:
  %file = alloca ptr, align 8
  %win_access = alloca i64, align 8
  %access3 = alloca i64, align 8
  %f_name2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %f_name2, align 8
  store ptr %f_name, ptr %f_name2, align 8
  store i64 0, ptr %access3, align 8
  store i64 %access, ptr %access3, align 8
  store i64 0, ptr %win_access, align 8
  store i64 0, ptr %win_access, align 8
  %0 = load i64, ptr %access3, align 8
  %1 = and i64 %0, 1
  %cast = trunc i64 %1 to i8
  %boolean_expr = trunc i8 %cast to i1
  br i1 %boolean_expr, label %if.true, label %if.aftr

if.true:                                          ; preds = %entry
  %2 = load i64, ptr %win_access, align 8
  %3 = or i64 %2, 1179785
  store i64 %3, ptr %win_access, align 8
  br label %if.aftr

if.aftr:                                          ; preds = %entry, %if.true
  %4 = load i64, ptr %access3, align 8
  %5 = and i64 %4, 1
  %cast4 = trunc i64 %5 to i8
  %boolean_expr5 = trunc i8 %cast4 to i1
  br i1 %boolean_expr5, label %if.true6, label %if.aftr7

if.true6:                                         ; preds = %if.aftr
  %6 = load i64, ptr %win_access, align 8
  %7 = or i64 %6, 1179926
  store i64 %7, ptr %win_access, align 8
  br label %if.aftr7

if.aftr7:                                         ; preds = %if.aftr, %if.true6
  %8 = load i64, ptr %access3, align 8
  %9 = and i64 %8, 2
  %cast8 = trunc i64 %9 to i8
  %boolean_expr9 = trunc i8 %cast8 to i1
  br i1 %boolean_expr9, label %if.true10, label %if.aftr11

if.true10:                                        ; preds = %if.aftr7
  %10 = load i64, ptr %win_access, align 8
  %11 = or i64 %10, 1179808
  store i64 %11, ptr %win_access, align 8
  br label %if.aftr11

if.aftr11:                                        ; preds = %if.aftr7, %if.true10
  %12 = load ptr, ptr %f_name2, align 8
  %13 = load i64, ptr %win_access, align 8
  %14 = call ptr @CreateFileA(ptr %12, i64 %13, i32 0, ptr null, i64 4, i64 32, ptr null)
  store i64 0, ptr %file, align 8
  store ptr %14, ptr %file, align 8
  %15 = load ptr, ptr %file, align 8
  ret ptr %15
}

define i8 @write_file(ptr %__apoc_internal_context, ptr %file, ptr %data, i32 %size) {
entry:
  %result = alloca i8, align 1
  %written = alloca i32, align 4
  %size4 = alloca i32, align 4
  %data3 = alloca ptr, align 8
  %file2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %file2, align 8
  store ptr %file, ptr %file2, align 8
  store i64 0, ptr %data3, align 8
  store ptr %data, ptr %data3, align 8
  store i32 0, ptr %size4, align 4
  store i32 %size, ptr %size4, align 4
  store i32 0, ptr %written, align 4
  store i64 0, ptr %written, align 4
  %0 = load ptr, ptr %file2, align 8
  %1 = load ptr, ptr %data3, align 8
  %2 = load i32, ptr %size4, align 4
  %3 = load i32, ptr %written, align 4
  %4 = call i8 @WriteFile(ptr %0, ptr %1, i32 %2, ptr %written, ptr null)
  %5 = load i32, ptr %written, align 4
  %6 = load i32, ptr %size4, align 4
  %7 = icmp eq i32 %5, %6
  store i8 0, ptr %result, align 1
  store i1 %7, ptr %result, align 1
  %8 = load i8, ptr %result, align 1
  ret i8 %8
}

define ptr @get_stdout(ptr %__apoc_internal_context) {
entry:
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  %0 = call ptr @GetStdHandle(i32 -11)
  ret ptr %0
}

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)

; Function Attrs: alwaysinline
define i8 @"overload[]"(ptr %str, i64 %index) #0 {
entry:
  %index2 = alloca i64, align 8
  %str1 = alloca %string, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str1, i8 0, i64 16, i1 false)
  %0 = load ptr, ptr %str, align 8
  store i64 0, ptr %index2, align 8
  store i64 %index, ptr %index2, align 8
  %1 = load i64, ptr %index2, align 8
  %"struct member ptr3" = bitcast ptr %0 to ptr
  %ptr_load = load ptr, ptr %"struct member ptr3", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %1
  %indexed_val = load i8, ptr %elem_ptr, align 1
  ret i8 %indexed_val
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: alwaysinline
define %string @"overload+"(ptr %str, ptr %text) #0 {
entry:
  %__apoc_internal_context15 = alloca %__Internal_Context, align 8
  %__apoc_internal_context8 = alloca %__Internal_Context, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %text_len = alloca i64, align 8
  %__apoc_internal_context = alloca %__Internal_Context, align 8
  %out = alloca %string, align 8
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str1, i8 0, i64 16, i1 false)
  %0 = load ptr, ptr %str, align 8
  store i64 0, ptr %text2, align 8
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false)
  %1 = load ptr, ptr %text2, align 8
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1)
  store i64 0, ptr %text_len, align 8
  store i64 %2, ptr %text_len, align 8
  %"struct member ptr" = getelementptr inbounds %string, ptr %0, i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 8
  %3 = load i64, ptr %text_len, align 8
  %4 = add i64 %selected, %3
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  store i64 %4, ptr %"struct member ptr3", align 8
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  %selected6 = load i64, ptr %"struct member ptr5", align 8
  %5 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6)
  %"struct member ptr724" = bitcast ptr %out to ptr
  store ptr %5, ptr %"struct member ptr724", align 8
  %"struct member ptr925" = bitcast ptr %out to ptr
  %selected10 = load ptr, ptr %"struct member ptr925", align 8
  %"struct member ptr1126" = bitcast ptr %0 to ptr
  %selected12 = load ptr, ptr %"struct member ptr1126", align 8
  %"struct member ptr13" = getelementptr inbounds %string, ptr %0, i32 0, i32 1
  %selected14 = load i64, ptr %"struct member ptr13", align 8
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14)
  %"struct member ptr16" = getelementptr inbounds %string, ptr %0, i32 0, i32 1
  %selected17 = load i64, ptr %"struct member ptr16", align 8
  %"struct member ptr1827" = bitcast ptr %out to ptr
  %ptr_load = load ptr, ptr %"struct member ptr1827", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected17
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %"struct member ptr19" = getelementptr inbounds %string, ptr %0, i32 0, i32 1
  %selected20 = load i64, ptr %"struct member ptr19", align 8
  %"struct member ptr2128" = bitcast ptr %out to ptr
  %ptr_load22 = load ptr, ptr %"struct member ptr2128", align 8
  %elem_ptr23 = getelementptr i8, ptr %ptr_load22, i64 %selected20
  %6 = load ptr, ptr %text2, align 8
  %7 = load i64, ptr %text_len, align 8
  call void @copy(ptr %__apoc_internal_context15, ptr %elem_ptr23, ptr %6, i64 %7)
  %8 = load %string, ptr %out, align 8
  ret %string %8
}

; Function Attrs: alwaysinline
define void @"overload[x]="(ptr %str, ptr %text) #0 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %copy_size = alloca i64, align 8
  %i = alloca i64, align 8
  %current = alloca ptr, align 8
  %times = alloca i64, align 8
  %text_len = alloca i64, align 8
  %__apoc_internal_context = alloca %__Internal_Context, align 8
  %text2 = alloca ptr, align 8
  %str1 = alloca ptr, align 8
  store i64 0, ptr %str1, align 8
  store ptr %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 8
  store ptr %text, ptr %text2, align 8
  %0 = load ptr, ptr %text2, align 8
  %1 = call i64 @len(ptr %__apoc_internal_context, ptr %0)
  store i64 0, ptr %text_len, align 8
  store i64 %1, ptr %text_len, align 8
  %2 = load i64, ptr %text_len, align 8
  %3 = sdiv i64 %2, 256
  store i64 0, ptr %times, align 8
  store i64 %3, ptr %times, align 8
  %4 = load ptr, ptr %str1, align 8
  store i64 0, ptr %current, align 8
  store ptr %4, ptr %current, align 8
  store i64 0, ptr %i, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.aftr, %entry
  %5 = load i64, ptr %i, align 8
  %6 = sub i64 %5, 1
  %7 = load i64, ptr %times, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %9 = load i64, ptr %text_len, align 8
  store i64 0, ptr %copy_size, align 8
  store i64 %9, ptr %copy_size, align 8
  %10 = load i64, ptr %copy_size, align 8
  %11 = icmp sgt i64 %10, 256
  br i1 %11, label %if.true, label %if.aftr

for.aftr:                                         ; preds = %for.cond
  ret void

if.true:                                          ; preds = %for.body
  store i64 256, ptr %copy_size, align 8
  br label %if.aftr

if.aftr:                                          ; preds = %for.body, %if.true
  %"derefrence struct" = load ptr, ptr %current, align 8
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 8
  %"derefrence struct4" = load ptr, ptr %current, align 8
  %"struct member ptr524" = bitcast ptr %"derefrence struct4" to ptr
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr524", i64 0, i64 %selected
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %"derefrence struct6" = load ptr, ptr %current, align 8
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 1
  %selected8 = load i64, ptr %"struct member ptr7", align 8
  %"derefrence struct9" = load ptr, ptr %current, align 8
  %"struct member ptr1025" = bitcast ptr %"derefrence struct9" to ptr
  %elem_ptr11 = getelementptr [256 x i8], ptr %"struct member ptr1025", i64 0, i64 %selected8
  %12 = load i64, ptr %i, align 8
  %13 = mul i64 %12, 256
  %ptr_load = load ptr, ptr %text2, align 8
  %elem_ptr12 = getelementptr i8, ptr %ptr_load, i64 %13
  %indexed_val13 = load i8, ptr %elem_ptr12, align 1
  %14 = load i64, ptr %i, align 8
  %15 = mul i64 %14, 256
  %ptr_load14 = load ptr, ptr %text2, align 8
  %elem_ptr15 = getelementptr i8, ptr %ptr_load14, i64 %15
  %16 = load i64, ptr %copy_size, align 8
  call void @copy(ptr %__apoc_internal_context3, ptr %elem_ptr11, ptr %elem_ptr15, i64 %16)
  %"derefrence struct16" = load ptr, ptr %current, align 8
  %"struct member ptr17" = getelementptr inbounds %String_Builder, ptr %"derefrence struct16", i32 0, i32 1
  %selected18 = load i64, ptr %"struct member ptr17", align 8
  %17 = load i64, ptr %copy_size, align 8
  %18 = add i64 %selected18, %17
  %"derefrence struct19" = load ptr, ptr %current, align 8
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 1
  store i64 %18, ptr %"struct member ptr20", align 8
  %19 = load i64, ptr %text_len, align 8
  %20 = sub i64 %19, 256
  store i64 %20, ptr %text_len, align 8
  %"derefrence struct21" = load ptr, ptr %current, align 8
  %"struct member ptr22" = getelementptr inbounds %String_Builder, ptr %"derefrence struct21", i32 0, i32 2
  %selected23 = load ptr, ptr %"struct member ptr22", align 8
  store ptr %selected23, ptr %current, align 8
  %21 = load i64, ptr %i, align 8
  %22 = add i64 %21, 1
  store i64 %22, ptr %i, align 8
  br label %for.cond
}

; Function Attrs: alwaysinline
define void @"overload[x]=.11"(ptr %str, i8 %c) #0 {
entry:
  %__apoc_internal_context = alloca %__Internal_Context, align 8
  %to_put = alloca ptr, align 8
  %c2 = alloca i8, align 1
  %str1 = alloca ptr, align 8
  store i64 0, ptr %str1, align 8
  store ptr %str, ptr %str1, align 8
  store i8 0, ptr %c2, align 1
  store i8 %c, ptr %c2, align 1
  %0 = load ptr, ptr %str1, align 8
  store i64 0, ptr %to_put, align 8
  store ptr %0, ptr %to_put, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.true11, %if.aftr, %entry
  %1 = load ptr, ptr %to_put, align 8
  %2 = icmp ne ptr %1, null
  %"derefrence struct" = load ptr, ptr %to_put, align 8
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 8
  %3 = icmp eq i64 %selected, 256
  %"&&" = and i1 %2, %3
  br i1 %"&&", label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %"derefrence struct3" = load ptr, ptr %to_put, align 8
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 2
  %selected5 = load ptr, ptr %"struct member ptr4", align 8
  %4 = icmp eq ptr %selected5, null
  br i1 %4, label %if.true, label %if.aftr

for.aftr:                                         ; preds = %for.cond
  %5 = load i8, ptr %c2, align 1
  %"derefrence struct16" = load ptr, ptr %to_put, align 8
  %"struct member ptr17" = getelementptr inbounds %String_Builder, ptr %"derefrence struct16", i32 0, i32 1
  %selected18 = load i64, ptr %"struct member ptr17", align 8
  %"derefrence struct19" = load ptr, ptr %to_put, align 8
  %"struct member ptr2026" = bitcast ptr %"derefrence struct19" to ptr
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr2026", i64 0, i64 %selected18
  store i8 %5, ptr %elem_ptr, align 1
  %"derefrence struct21" = load ptr, ptr %to_put, align 8
  %"struct member ptr22" = getelementptr inbounds %String_Builder, ptr %"derefrence struct21", i32 0, i32 1
  %selected23 = load i64, ptr %"struct member ptr22", align 8
  %6 = add i64 %selected23, 1
  %"derefrence struct24" = load ptr, ptr %to_put, align 8
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 1
  store i64 %6, ptr %"struct member ptr25", align 8
  ret void

if.true:                                          ; preds = %for.body
  %7 = call ptr @mem_alloc(ptr %__apoc_internal_context, i64 272)
  %"derefrence struct6" = load ptr, ptr %to_put, align 8
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2
  store ptr %7, ptr %"struct member ptr7", align 8
  br label %if.aftr

if.aftr:                                          ; preds = %for.body, %if.true
  %"derefrence struct8" = load ptr, ptr %to_put, align 8
  %"struct member ptr9" = getelementptr inbounds %String_Builder, ptr %"derefrence struct8", i32 0, i32 1
  %selected10 = load i64, ptr %"struct member ptr9", align 8
  %8 = icmp eq i64 %selected10, 256
  br i1 %8, label %if.true11, label %for.cond

if.true11:                                        ; preds = %if.aftr
  %"derefrence struct13" = load ptr, ptr %to_put, align 8
  %"struct member ptr14" = getelementptr inbounds %String_Builder, ptr %"derefrence struct13", i32 0, i32 2
  %selected15 = load ptr, ptr %"struct member ptr14", align 8
  store ptr %selected15, ptr %to_put, align 8
  br label %for.cond
}

; Function Attrs: alwaysinline
define i8 @overload(ptr %str, ptr %text) #0 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %__apoc_internal_context = alloca %__Internal_Context, align 8
  %str2 = alloca %string, align 8
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str1, i8 0, i64 16, i1 false)
  %0 = load ptr, ptr %str, align 8
  store i64 0, ptr %text2, align 8
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str2, i8 0, i64 16, i1 false)
  %1 = load ptr, ptr %text2, align 8
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1)
  %3 = getelementptr inbounds %string, ptr %str2, i32 0, i32 1
  store i64 %2, ptr %3, align 8
  %4 = load ptr, ptr %text2, align 8
  %5 = bitcast ptr %str2 to ptr
  store ptr %4, ptr %5, align 8
  %6 = load %string, ptr %0, align 8
  %7 = load %string, ptr %str2, align 8
  %8 = call i8 @compare(ptr %__apoc_internal_context3, ptr %0, ptr %str2)
  ret i8 %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
