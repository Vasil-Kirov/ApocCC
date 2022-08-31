; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%string = type { ptr, i64 }
%__Internal_Context = type { ptr }
%String_Builder = type { [256 x i8], i64, ptr }

@global_var = constant i8 1
@global_var.1 = constant i8 0
@global_var.2 = constant ptr null
@global_var.3 = constant i64 256
@0 = private unnamed_addr constant [14 x i8] c"my big string\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@2 = private unnamed_addr constant [11 x i8] c" more text\00", align 1
@3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"4\00", align 1

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)

define i32 @main(ptr %__apoc_internal_context) {
entry:
  %str = alloca %string, align 16
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %result = alloca %String_Builder, align 16
  %__apoc_internal_context2 = alloca %__Internal_Context, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context2, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 16 %result, i8 0, i64 272, i1 false)
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context2, i32 0, i32 0
  store ptr %result, ptr %1, align 8
  call void @init_builder(ptr %__apoc_internal_context2, ptr @0)
  %2 = call i32 @puts(ptr @1)
  %3 = load %String_Builder, ptr %result, align 8
  call void @"overload[x]="(ptr %result, ptr @2)
  %4 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0
  store ptr %str, ptr %5, align 8
  %6 = load %String_Builder, ptr %result, align 8
  call void @builder_to_string(ptr %__apoc_internal_context3, ptr %result)
  %7 = call i32 @puts(ptr @3)
  %8 = call i32 @puts(ptr @4)
  %9 = call i32 @puts(ptr @5)
  ret i32 0
}

define void @builder_to_string(ptr %__apoc_internal_context, ptr %builder) {
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
  store ptr %builder, ptr %builder2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false)
  store i64 0, ptr %out_len, align 4
  store i64 0, ptr %out_len, align 4
  %0 = load ptr, ptr %builder2, align 8
  store i64 0, ptr %current, align 4
  store ptr %0, ptr %current, align 8
  store i64 0, ptr %i, align 4
  store i64 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.incr, %entry
  %"derefrence struct" = load ptr, ptr %current, align 8
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 2
  %selected = load ptr, ptr %"struct member ptr", align 8
  %1 = icmp ne ptr %selected, null
  br i1 %1, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %out_len, align 4
  %"derefrence struct3" = load ptr, ptr %current, align 8
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 1
  %selected5 = load i64, ptr %"struct member ptr4", align 4
  %3 = add i64 %2, %selected5
  store i64 %3, ptr %out_len, align 4
  %"derefrence struct6" = load ptr, ptr %current, align 8
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2
  %selected8 = load ptr, ptr %"struct member ptr7", align 8
  store ptr %selected8, ptr %current, align 8
  br label %for.incr

for.aftr:                                         ; preds = %for.cond
  %4 = load i64, ptr %out_len, align 4
  %"derefrence struct9" = load ptr, ptr %current, align 8
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1
  %selected11 = load i64, ptr %"struct member ptr10", align 4
  %5 = add i64 %4, %selected11
  store i64 %5, ptr %out_len, align 4
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context12, i32 0, i32 0
  %7 = load i64, ptr %out_len, align 4
  %8 = call ptr @mem_alloc(ptr %__apoc_internal_context12, i64 %7)
  %"struct member ptr13" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  store ptr %8, ptr %"struct member ptr13", align 8
  %9 = load i64, ptr %out_len, align 4
  %"struct member ptr14" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  store i64 %9, ptr %"struct member ptr14", align 4
  store i64 0, ptr %times, align 4
  store i64 0, ptr %times, align 4
  store i64 0, ptr %i15, align 4
  store i64 0, ptr %i15, align 4
  br label %for.cond16

for.incr:                                         ; preds = %for.body
  %10 = load i64, ptr %i, align 4
  %11 = add i64 %10, 1
  store i64 %11, ptr %i, align 4
  br label %for.cond

for.cond16:                                       ; preds = %for.incr22, %for.aftr
  %"derefrence struct19" = load ptr, ptr %current, align 8
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 2
  %selected21 = load ptr, ptr %"struct member ptr20", align 8
  %12 = icmp ne ptr %selected21, null
  br i1 %12, label %for.body17, label %for.aftr18

for.body17:                                       ; preds = %for.cond16
  %13 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context23, i32 0, i32 0
  %14 = load i64, ptr %times, align 4
  %15 = mul i64 %14, 256
  %"struct member ptr24" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  %ptr_load = load ptr, ptr %"struct member ptr24", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %15
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %16 = load i64, ptr %times, align 4
  %17 = mul i64 %16, 256
  %"struct member ptr25" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  %ptr_load26 = load ptr, ptr %"struct member ptr25", align 8
  %elem_ptr27 = getelementptr i8, ptr %ptr_load26, i64 %17
  %"derefrence struct28" = load ptr, ptr %current, align 8
  %"struct member ptr29" = getelementptr inbounds %String_Builder, ptr %"derefrence struct28", i32 0, i32 0
  %elem_ptr30 = getelementptr [256 x i8], ptr %"struct member ptr29", i64 0, i64 0
  %indexed_val31 = load i8, ptr %elem_ptr30, align 1
  %"derefrence struct32" = load ptr, ptr %current, align 8
  %"struct member ptr33" = getelementptr inbounds %String_Builder, ptr %"derefrence struct32", i32 0, i32 0
  %elem_ptr34 = getelementptr [256 x i8], ptr %"struct member ptr33", i64 0, i64 0
  %"derefrence struct35" = load ptr, ptr %current, align 8
  %"struct member ptr36" = getelementptr inbounds %String_Builder, ptr %"derefrence struct35", i32 0, i32 1
  %selected37 = load i64, ptr %"struct member ptr36", align 4
  call void @copy(ptr %__apoc_internal_context23, ptr %elem_ptr27, ptr %elem_ptr34, i64 %selected37)
  %"derefrence struct38" = load ptr, ptr %current, align 8
  %"struct member ptr39" = getelementptr inbounds %String_Builder, ptr %"derefrence struct38", i32 0, i32 2
  %selected40 = load ptr, ptr %"struct member ptr39", align 8
  store ptr %selected40, ptr %current, align 8
  %18 = load i64, ptr %times, align 4
  %19 = add i64 %18, 1
  store i64 %19, ptr %times, align 4
  br label %for.incr22

for.aftr18:                                       ; preds = %for.cond16
  %20 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context41, i32 0, i32 0
  %21 = load i64, ptr %times, align 4
  %22 = mul i64 %21, 256
  %"struct member ptr42" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  %ptr_load43 = load ptr, ptr %"struct member ptr42", align 8
  %elem_ptr44 = getelementptr i8, ptr %ptr_load43, i64 %22
  %indexed_val45 = load i8, ptr %elem_ptr44, align 1
  %23 = load i64, ptr %times, align 4
  %24 = mul i64 %23, 256
  %"struct member ptr46" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  %ptr_load47 = load ptr, ptr %"struct member ptr46", align 8
  %elem_ptr48 = getelementptr i8, ptr %ptr_load47, i64 %24
  %"derefrence struct49" = load ptr, ptr %current, align 8
  %"struct member ptr50" = getelementptr inbounds %String_Builder, ptr %"derefrence struct49", i32 0, i32 0
  %elem_ptr51 = getelementptr [256 x i8], ptr %"struct member ptr50", i64 0, i64 0
  %indexed_val52 = load i8, ptr %elem_ptr51, align 1
  %"derefrence struct53" = load ptr, ptr %current, align 8
  %"struct member ptr54" = getelementptr inbounds %String_Builder, ptr %"derefrence struct53", i32 0, i32 0
  %elem_ptr55 = getelementptr [256 x i8], ptr %"struct member ptr54", i64 0, i64 0
  %"derefrence struct56" = load ptr, ptr %current, align 8
  %"struct member ptr57" = getelementptr inbounds %String_Builder, ptr %"derefrence struct56", i32 0, i32 1
  %selected58 = load i64, ptr %"struct member ptr57", align 4
  call void @copy(ptr %__apoc_internal_context41, ptr %elem_ptr48, ptr %elem_ptr55, i64 %selected58)
  %25 = load i64, ptr %out_len, align 4
  %"derefrence struct59" = load ptr, ptr %builder2, align 8
  %"struct member ptr60" = getelementptr inbounds %String_Builder, ptr %"derefrence struct59", i32 0, i32 1
  %selected61 = load i64, ptr %"struct member ptr60", align 4
  %26 = add i64 %25, %selected61
  store i64 %26, ptr %out_len, align 4
  %27 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %ret_ptr, align 8
  %29 = load %string, ptr %out, align 8
  store %string %29, ptr %28, align 8
  ret void

for.incr22:                                       ; preds = %for.body17
  %30 = load i64, ptr %i15, align 4
  %31 = add i64 %30, 1
  store i64 %31, ptr %i15, align 4
  br label %for.cond16
}

define void @init_builder(ptr %__apoc_internal_context, ptr %text) {
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
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 272, i1 false)
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %out, i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 4
  %0 = add i64 %selected, 1
  %"struct member ptr3" = getelementptr inbounds %String_Builder, ptr %out, i32 0, i32 1
  store i64 %0, ptr %"struct member ptr3", align 4
  %1 = load %String_Builder, ptr %out, align 8
  store i64 0, ptr %current, align 4
  store ptr %out, ptr %current, align 8
  store i64 0, ptr %times, align 4
  store i64 0, ptr %times, align 4
  store i64 0, ptr %i, align 4
  store i64 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 4
  %3 = load i64, ptr %times, align 4
  %4 = mul i64 %3, 256
  %5 = add i64 %2, %4
  %ptr_load = load ptr, ptr %text2, align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %6 = icmp ne i8 %indexed_val, 0
  br i1 %6, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %i, align 4
  %8 = load i64, ptr %times, align 4
  %9 = mul i64 %8, 256
  %10 = add i64 %7, %9
  %ptr_load4 = load ptr, ptr %text2, align 8
  %elem_ptr5 = getelementptr i8, ptr %ptr_load4, i64 %10
  %indexed_val6 = load i8, ptr %elem_ptr5, align 1
  %11 = load i64, ptr %i, align 4
  %"derefrence struct" = load ptr, ptr %current, align 8
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 0
  %elem_ptr8 = getelementptr [256 x i8], ptr %"struct member ptr7", i64 0, i64 %11
  store i8 %indexed_val6, ptr %elem_ptr8, align 1
  %"derefrence struct9" = load ptr, ptr %current, align 8
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1
  %selected11 = load i64, ptr %"struct member ptr10", align 4
  %12 = add i64 %selected11, 1
  %"derefrence struct12" = load ptr, ptr %current, align 8
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 1
  store i64 %12, ptr %"struct member ptr13", align 4
  %13 = load i64, ptr %i, align 4
  %14 = icmp eq i64 %13, 256
  br i1 %14, label %if.true, label %for.incr

for.aftr:                                         ; preds = %for.cond
  %15 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %ret_ptr, align 8
  %17 = load %String_Builder, ptr %out, align 8
  store %String_Builder %17, ptr %16, align 8
  ret void

for.incr:                                         ; preds = %for.body, %if.true
  %18 = load i64, ptr %i, align 4
  %19 = add i64 %18, 1
  store i64 %19, ptr %i, align 4
  br label %for.cond

if.true:                                          ; preds = %for.body
  store i64 0, ptr %i, align 4
  %20 = load i64, ptr %times, align 4
  %21 = add i64 %20, 1
  store i64 %21, ptr %times, align 4
  %22 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context14, i32 0, i32 0
  %23 = call ptr @mem_alloc(ptr %__apoc_internal_context14, i64 272)
  %"derefrence struct15" = load ptr, ptr %current, align 8
  %"struct member ptr16" = getelementptr inbounds %String_Builder, ptr %"derefrence struct15", i32 0, i32 2
  store ptr %23, ptr %"struct member ptr16", align 8
  %"derefrence struct17" = load ptr, ptr %current, align 8
  %"struct member ptr18" = getelementptr inbounds %String_Builder, ptr %"derefrence struct17", i32 0, i32 2
  %selected19 = load ptr, ptr %"struct member ptr18", align 8
  store ptr %selected19, ptr %current, align 8
  br label %for.incr
}

define i8 @compare(ptr %__apoc_internal_context, %string %str1, %string %str2) {
entry:
  %i = alloca i64, align 8
  %str23 = alloca %string, align 16
  %str12 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str12, i8 0, i64 16, i1 false)
  store %string %str1, ptr %str12, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str23, i8 0, i64 16, i1 false)
  store %string %str2, ptr %str23, align 8
  %"struct member ptr" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 4
  %"struct member ptr4" = getelementptr inbounds %string, ptr %str23, i32 0, i32 1
  %selected5 = load i64, ptr %"struct member ptr4", align 4
  %0 = icmp ne i64 %selected, %selected5
  br i1 %0, label %if.true, label %if.aftr

if.true:                                          ; preds = %entry
  ret i8 0

if.aftr:                                          ; preds = %entry
  store i64 0, ptr %i, align 4
  store i64 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.incr, %if.aftr
  %1 = load i64, ptr %i, align 4
  %"struct member ptr6" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1
  %selected7 = load i64, ptr %"struct member ptr6", align 4
  %2 = icmp slt i64 %1, %selected7
  br i1 %2, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 4
  %"struct member ptr8" = getelementptr inbounds %string, ptr %str12, i32 0, i32 0
  %ptr_load = load ptr, ptr %"struct member ptr8", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %3
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %4 = load i64, ptr %i, align 4
  %"struct member ptr9" = getelementptr inbounds %string, ptr %str23, i32 0, i32 0
  %ptr_load10 = load ptr, ptr %"struct member ptr9", align 8
  %elem_ptr11 = getelementptr i8, ptr %ptr_load10, i64 %4
  %indexed_val12 = load i8, ptr %elem_ptr11, align 1
  %5 = icmp ne i8 %indexed_val, %indexed_val12
  br i1 %5, label %if.true13, label %for.incr

for.aftr:                                         ; preds = %for.cond
  ret i8 1

for.incr:                                         ; preds = %for.body
  %6 = load i64, ptr %i, align 4
  %7 = add i64 %6, 1
  store i64 %7, ptr %i, align 4
  br label %for.cond

if.true13:                                        ; preds = %for.body
  ret i8 0
}

define void @to_string(ptr %__apoc_internal_context, ptr %text) {
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
  store ptr %text, ptr %text2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0
  %1 = load ptr, ptr %text2, align 8
  %2 = call i64 @len(ptr %__apoc_internal_context3, ptr %1)
  store i64 0, ptr %text_len, align 4
  store i64 %2, ptr %text_len, align 4
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0
  %4 = load i64, ptr %text_len, align 4
  %5 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %4)
  store i64 0, ptr %allocated, align 4
  store ptr %5, ptr %allocated, align 8
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0
  %7 = load ptr, ptr %allocated, align 8
  %8 = load ptr, ptr %text2, align 8
  %9 = load i64, ptr %text_len, align 4
  call void @copy(ptr %__apoc_internal_context5, ptr %7, ptr %8, i64 %9)
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %allocated, align 8
  %11 = getelementptr inbounds %string, ptr %str, i32 0, i32 0
  store ptr %10, ptr %11, align 8
  %12 = load i64, ptr %text_len, align 4
  %13 = getelementptr inbounds %string, ptr %str, i32 0, i32 1
  store i64 %12, ptr %13, align 4
  %14 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %ret_ptr, align 8
  %16 = load %string, ptr %str, align 8
  store %string %16, ptr %15, align 8
  ret void
}

define void @terminate_string(ptr %__apoc_internal_context, %string %str) {
entry:
  %__apoc_internal_context8 = alloca %__Internal_Context, align 16
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %out = alloca %string, align 16
  %str2 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str2, i8 0, i64 16, i1 false)
  store %string %str, ptr %str2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false)
  %"struct member ptr" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 4
  %0 = add i64 %selected, 1
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  store i64 %0, ptr %"struct member ptr3", align 4
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  %selected6 = load i64, ptr %"struct member ptr5", align 4
  %2 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6)
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  store ptr %2, ptr %"struct member ptr7", align 8
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context8, i32 0, i32 0
  %"struct member ptr9" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  %selected10 = load ptr, ptr %"struct member ptr9", align 8
  %"struct member ptr11" = getelementptr inbounds %string, ptr %str2, i32 0, i32 0
  %selected12 = load ptr, ptr %"struct member ptr11", align 8
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1
  %selected14 = load i64, ptr %"struct member ptr13", align 4
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14)
  %"struct member ptr15" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  %selected16 = load i64, ptr %"struct member ptr15", align 4
  %"struct member ptr17" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  %ptr_load = load ptr, ptr %"struct member ptr17", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected16
  store i8 0, ptr %elem_ptr, align 1
  %4 = load ptr, ptr %__apoc_internal_context1, align 8
  %ret_ptr = getelementptr inbounds %__Internal_Context, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %ret_ptr, align 8
  %6 = load %string, ptr %out, align 8
  store %string %6, ptr %5, align 8
  ret void
}

define ptr @parse_format(ptr %__apoc_internal_context, %string %format, ptr %list) {
entry:
  %list3 = alloca ptr, align 8
  %format2 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %format2, i8 0, i64 16, i1 false)
  store %string %format, ptr %format2, align 8
  store i64 0, ptr %list3, align 4
  store ptr %list, ptr %list3, align 8
  ret ptr null
}

define void @"print!@* u8"(ptr %__apoc_internal_context, ptr %format) {
entry:
  %__apoc_internal_context6 = alloca %__Internal_Context, align 16
  %list = alloca ptr, align 8
  %str5 = alloca %string, align 16
  %__apoc_internal_context4 = alloca %__Internal_Context, align 16
  %str = alloca %string, align 16
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %format2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %format2, align 4
  store ptr %format, ptr %format2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 16 %str, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0
  store ptr %str, ptr %1, align 8
  %2 = load ptr, ptr %format2, align 8
  call void @to_string(ptr %__apoc_internal_context3, ptr %2)
  %3 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 16 %str5, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0
  store ptr %str5, ptr %4, align 8
  %5 = load %string, ptr %str, align 8
  call void @terminate_string(ptr %__apoc_internal_context4, %string %5)
  store i64 0, ptr %list, align 4
  store i64 0, ptr %list, align 4
  %6 = load ptr, ptr %list, align 8
  call void @llvm.va_start(ptr %list)
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context6, i32 0, i32 0
  %8 = load %string, ptr %str5, align 8
  %9 = load ptr, ptr %list, align 8
  %10 = call ptr @parse_format(ptr %__apoc_internal_context6, %string %8, ptr %9)
  %11 = load ptr, ptr %list, align 8
  call void @llvm.va_end(ptr %list)
  ret void
}

define void @"print!@string!@ 'unkown' "(ptr %__apoc_internal_context, %string %format, ...) {
entry:
  %__apoc_internal_context5 = alloca %__Internal_Context, align 16
  %list = alloca ptr, align 8
  %format4 = alloca %string, align 16
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %format2 = alloca %string, align 16
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %format2, i8 0, i64 16, i1 false)
  store %string %format, ptr %format2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0
  call void @llvm.memset.p0.i64(ptr align 16 %format4, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0
  store ptr %format4, ptr %1, align 8
  %2 = load %string, ptr %format2, align 8
  call void @terminate_string(ptr %__apoc_internal_context3, %string %2)
  store i64 0, ptr %list, align 4
  store i64 0, ptr %list, align 4
  %3 = load ptr, ptr %list, align 8
  call void @llvm.va_start(ptr %list)
  %4 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context5, i32 0, i32 0
  %5 = load %string, ptr %format4, align 8
  %6 = load ptr, ptr %list, align 8
  %7 = call ptr @parse_format(ptr %__apoc_internal_context5, %string %5, ptr %6)
  %8 = load ptr, ptr %list, align 8
  call void @llvm.va_end(ptr %list)
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
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %dst2, align 4
  store ptr %dst, ptr %dst2, align 8
  store i64 0, ptr %src3, align 4
  store ptr %src, ptr %src3, align 8
  store i64 0, ptr %size4, align 4
  store i64 %size, ptr %size4, align 4
  %0 = load ptr, ptr %dst2, align 8
  store i64 0, ptr %a0, align 4
  store ptr %0, ptr %a0, align 8
  %1 = load ptr, ptr %src3, align 8
  store i64 0, ptr %a1, align 4
  store ptr %1, ptr %a1, align 8
  store i64 0, ptr %i, align 4
  store i64 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 4
  %3 = load i64, ptr %size4, align 4
  %4 = icmp slt i64 %2, %3
  br i1 %4, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %i, align 4
  %ptr_load = load ptr, ptr %a1, align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %6 = load i64, ptr %i, align 4
  %ptr_load5 = load ptr, ptr %a0, align 8
  %elem_ptr6 = getelementptr i8, ptr %ptr_load5, i64 %6
  store i8 %indexed_val, ptr %elem_ptr6, align 1
  br label %for.incr

for.aftr:                                         ; preds = %for.cond
  ret void

for.incr:                                         ; preds = %for.body
  %7 = load i64, ptr %i, align 4
  %8 = add i64 %7, 1
  store i64 %8, ptr %i, align 4
  br label %for.cond
}

define i64 @len(ptr %__apoc_internal_context, ptr %text) {
entry:
  %result = alloca i64, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 4
  store ptr %text, ptr %text2, align 8
  store i64 0, ptr %result, align 4
  store i64 0, ptr %result, align 4
  store i64 0, ptr %result, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.incr, %entry
  %0 = load i64, ptr %result, align 4
  %ptr_load = load ptr, ptr %text2, align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %1 = icmp ne i8 %indexed_val, 0
  br i1 %1, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  br label %for.incr

for.aftr:                                         ; preds = %for.cond
  %2 = load i64, ptr %result, align 4
  ret i64 %2

for.incr:                                         ; preds = %for.body
  %3 = load i64, ptr %result, align 4
  %4 = add i64 %3, 1
  store i64 %4, ptr %result, align 4
  br label %for.cond
}

declare ptr @malloc(i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @scanf(ptr, ...)

declare i32 @printf(ptr, ...)

declare i32 @atoi(ptr)

declare void @srand(i32)

declare i32 @rand()

declare i32 @puts(ptr)

define ptr @mem_alloc(ptr %__apoc_internal_context, i64 %size) {
entry:
  %result = alloca ptr, align 8
  %size2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 16
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %size2, align 4
  store i64 %size, ptr %size2, align 4
  %0 = load i64, ptr %size2, align 4
  %1 = call ptr @malloc(i64 %0)
  store i64 0, ptr %result, align 4
  store ptr %1, ptr %result, align 8
  %2 = load ptr, ptr %result, align 8
  %3 = load i64, ptr %size2, align 4
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3)
  %5 = load ptr, ptr %result, align 8
  ret ptr %5
}

; Function Attrs: alwaysinline
define i8 @"overload[]"(%string %str, i64 %index) #0 {
entry:
  %index2 = alloca i64, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %index2, align 4
  store i64 %index, ptr %index2, align 4
  %0 = load i64, ptr %index2, align 4
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0
  %ptr_load = load ptr, ptr %"struct member ptr", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0
  %indexed_val = load i8, ptr %elem_ptr, align 1
  ret i8 %indexed_val
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: alwaysinline
define %string @"overload+"(%string %str, ptr %text) #0 {
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
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false)
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0
  %1 = load ptr, ptr %text2, align 8
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1)
  store i64 0, ptr %text_len, align 4
  store i64 %2, ptr %text_len, align 4
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 4
  %3 = load i64, ptr %text_len, align 4
  %4 = add i64 %selected, %3
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  store i64 %4, ptr %"struct member ptr3", align 4
  %5 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context4, i32 0, i32 0
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1
  %selected6 = load i64, ptr %"struct member ptr5", align 4
  %6 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6)
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  store ptr %6, ptr %"struct member ptr7", align 8
  %7 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context8, i32 0, i32 0
  %"struct member ptr9" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  %selected10 = load ptr, ptr %"struct member ptr9", align 8
  %"struct member ptr11" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0
  %selected12 = load ptr, ptr %"struct member ptr11", align 8
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1
  %selected14 = load i64, ptr %"struct member ptr13", align 4
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14)
  %8 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context15, i32 0, i32 0
  %"struct member ptr16" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1
  %selected17 = load i64, ptr %"struct member ptr16", align 4
  %"struct member ptr18" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  %ptr_load = load ptr, ptr %"struct member ptr18", align 8
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected17
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %"struct member ptr19" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1
  %selected20 = load i64, ptr %"struct member ptr19", align 4
  %"struct member ptr21" = getelementptr inbounds %string, ptr %out, i32 0, i32 0
  %ptr_load22 = load ptr, ptr %"struct member ptr21", align 8
  %elem_ptr23 = getelementptr i8, ptr %ptr_load22, i64 %selected20
  %9 = load ptr, ptr %text2, align 8
  %10 = load i64, ptr %text_len, align 4
  call void @copy(ptr %__apoc_internal_context15, ptr %elem_ptr23, ptr %9, i64 %10)
  %11 = load %string, ptr %out, align 8
  ret %string %11
}

; Function Attrs: alwaysinline
define void @"overload[x]="(ptr %str, ptr %text) #0 {
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
  store ptr %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  store ptr %text, ptr %text2, align 8
  %0 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0
  %1 = load ptr, ptr %text2, align 8
  %2 = call i64 @len(ptr %__apoc_internal_context, ptr %1)
  store i64 0, ptr %text_len, align 4
  store i64 %2, ptr %text_len, align 4
  %3 = load i64, ptr %text_len, align 4
  %"derefrence struct" = load ptr, ptr %str1, align 8
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1
  %selected = load i64, ptr %"struct member ptr", align 4
  %4 = sdiv i64 %3, %selected
  store i64 0, ptr %times, align 4
  store i64 %4, ptr %times, align 4
  %5 = load ptr, ptr %str1, align 8
  store i64 0, ptr %current, align 4
  store ptr %5, ptr %current, align 8
  store i64 0, ptr %i, align 4
  store i64 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.incr, %entry
  %6 = load i64, ptr %i, align 4
  %7 = sub i64 %6, 1
  %8 = load i64, ptr %times, align 4
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %for.body, label %for.aftr

for.body:                                         ; preds = %for.cond
  %10 = load i64, ptr %text_len, align 4
  store i64 0, ptr %copy_size, align 4
  store i64 %10, ptr %copy_size, align 4
  %11 = load i64, ptr %copy_size, align 4
  %12 = icmp sgt i64 %11, 256
  br i1 %12, label %if.true, label %for.incr

for.aftr:                                         ; preds = %for.cond
  ret void

for.incr:                                         ; preds = %for.body, %if.true
  %13 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0
  %"derefrence struct4" = load ptr, ptr %current, align 8
  %"struct member ptr5" = getelementptr inbounds %String_Builder, ptr %"derefrence struct4", i32 0, i32 1
  %selected6 = load i64, ptr %"struct member ptr5", align 4
  %14 = sub i64 %selected6, 1
  %"derefrence struct7" = load ptr, ptr %current, align 8
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %"derefrence struct7", i32 0, i32 0
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr8", i64 0, i64 %14
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %"derefrence struct9" = load ptr, ptr %current, align 8
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1
  %selected11 = load i64, ptr %"struct member ptr10", align 4
  %15 = sub i64 %selected11, 1
  %"derefrence struct12" = load ptr, ptr %current, align 8
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 0
  %elem_ptr14 = getelementptr [256 x i8], ptr %"struct member ptr13", i64 0, i64 %15
  %16 = load i64, ptr %i, align 4
  %17 = mul i64 %16, 256
  %ptr_load = load ptr, ptr %text2, align 8
  %elem_ptr15 = getelementptr i8, ptr %ptr_load, i64 %17
  %indexed_val16 = load i8, ptr %elem_ptr15, align 1
  %18 = load i64, ptr %i, align 4
  %19 = mul i64 %18, 256
  %ptr_load17 = load ptr, ptr %text2, align 8
  %elem_ptr18 = getelementptr i8, ptr %ptr_load17, i64 %19
  %20 = load i64, ptr %copy_size, align 4
  call void @copy(ptr %__apoc_internal_context3, ptr %elem_ptr14, ptr %elem_ptr18, i64 %20)
  %"derefrence struct19" = load ptr, ptr %current, align 8
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 1
  %selected21 = load i64, ptr %"struct member ptr20", align 4
  %21 = load i64, ptr %copy_size, align 4
  %22 = add i64 %selected21, %21
  %"derefrence struct22" = load ptr, ptr %current, align 8
  %"struct member ptr23" = getelementptr inbounds %String_Builder, ptr %"derefrence struct22", i32 0, i32 1
  store i64 %22, ptr %"struct member ptr23", align 4
  %23 = load i64, ptr %text_len, align 4
  %24 = sub i64 %23, 256
  store i64 %24, ptr %text_len, align 4
  %"derefrence struct24" = load ptr, ptr %current, align 8
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 2
  %selected26 = load ptr, ptr %"struct member ptr25", align 8
  store ptr %selected26, ptr %current, align 8
  %25 = load i64, ptr %i, align 4
  %26 = add i64 %25, 1
  store i64 %26, ptr %i, align 4
  br label %for.cond

if.true:                                          ; preds = %for.body
  store i64 256, ptr %copy_size, align 4
  br label %for.incr
}

; Function Attrs: alwaysinline
define i8 @overload(%string %str, ptr %text) #0 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context, align 16
  %__apoc_internal_context = alloca %__Internal_Context, align 16
  %str2 = alloca %string, align 16
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 4
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str2, i8 0, i64 16, i1 false)
  %0 = load ptr, ptr %text2, align 8
  %1 = getelementptr inbounds %string, ptr %str2, i32 0, i32 0
  store ptr %0, ptr %1, align 8
  %2 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context, i32 0, i32 0
  %3 = load ptr, ptr %text2, align 8
  %4 = call i64 @len(ptr %__apoc_internal_context, ptr %3)
  %5 = getelementptr inbounds %string, ptr %str2, i32 0, i32 1
  store i64 %4, ptr %5, align 4
  %6 = getelementptr inbounds %__Internal_Context, ptr %__apoc_internal_context3, i32 0, i32 0
  %7 = load %string, ptr %str1, align 8
  %8 = load %string, ptr %str2, align 8
  %9 = call i8 @compare(ptr %__apoc_internal_context3, %string %7, %string %8)
  ret i8 %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
