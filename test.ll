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

@global_var = constant i64 256, !dbg !0
@global_var.1 = constant i64 65536, !dbg !4
@global_var.2 = constant i64 131072, !dbg !7
@global_var.3 = constant i64 262144, !dbg !9
@global_var.4 = constant i64 524288, !dbg !11
@global_var.5 = constant i64 1048576, !dbg !13
@global_var.6 = constant i8 1, !dbg !15
@global_var.7 = constant i8 0, !dbg !19
@global_var.8 = constant ptr null, !dbg !21
@0 = private unnamed_addr constant [14 x i8] c"my big string\00", align 1
@1 = private unnamed_addr constant [13 x i8] c" more text %\00", align 1
@2 = private unnamed_addr constant [10 x i8] c"Number: %\00", align 1
@3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@4 = private unnamed_addr constant [9 x i8] c"int: %f\0A\00", align 1

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)

define i32 @main(ptr %__apoc_internal_context) !dbg !29 {
entry:
  %to_any9 = alloca %Any, align 8
  %any_val8 = alloca i64, align 8
  %runtime_type_info7 = alloca %Type_Info, align 16
  %__apoc_internal_context6 = alloca %__Internal_Context, align 8
  %to_any = alloca %Any, align 8
  %any_val = alloca double, align 8
  %runtime_type_info = alloca %Type_Info, align 16
  %__apoc_internal_context5 = alloca %__Internal_Context, align 8
  %str = alloca %string, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %result = alloca %String_Builder, align 256
  %__apoc_internal_context2 = alloca %__Internal_Context, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %result, i8 0, i64 272, i1 false), !dbg !34
  %return_value_member11 = bitcast ptr %__apoc_internal_context2 to ptr, !dbg !34
  store ptr %result, ptr %return_value_member11, align 8, !dbg !34
  call void @init_builder(ptr %__apoc_internal_context2, ptr @0), !dbg !34
  call void @llvm.dbg.declare(metadata ptr %result, metadata !35, metadata !DIExpression()), !dbg !34
  %0 = load %String_Builder, ptr %result, align 8, !dbg !46
  call void @"overload[x]="(ptr %result, ptr @1), !dbg !46
  call void @llvm.memset.p0.i64(ptr align 8 %str, i8 0, i64 16, i1 false), !dbg !47
  %return_value_member412 = bitcast ptr %__apoc_internal_context3 to ptr, !dbg !47
  store ptr %str, ptr %return_value_member412, align 8, !dbg !47
  %1 = load %String_Builder, ptr %result, align 8, !dbg !47
  call void @builder_to_string(ptr %__apoc_internal_context3, ptr %result), !dbg !47
  call void @llvm.dbg.declare(metadata ptr %str, metadata !48, metadata !DIExpression()), !dbg !47
  %2 = load %string, ptr %str, align 8, !dbg !54
  %3 = bitcast ptr %runtime_type_info to ptr, !dbg !54
  store i32 4, ptr %3, align 32, !dbg !54
  %4 = getelementptr inbounds %Type_Primitive.2, ptr %runtime_type_info, i32 0, i32 1, !dbg !54
  store i32 10, ptr %4, align 32, !dbg !54
  store i64 0, ptr %any_val, align 8, !dbg !54
  store double 1.012300e+01, ptr %any_val, align 8, !dbg !54
  call void @llvm.memset.p0.i64(ptr align 8 %to_any, i8 0, i64 16, i1 false), !dbg !54
  %5 = bitcast ptr %to_any to ptr, !dbg !54
  %6 = getelementptr inbounds %Any, ptr %to_any, i32 0, i32 1, !dbg !54
  store ptr %runtime_type_info, ptr %5, align 8, !dbg !54
  store ptr %any_val, ptr %6, align 8, !dbg !54
  %any_pass = load %Any, ptr %to_any, align 8, !dbg !54
  call void (ptr, %string, ...) @"print!@string!@-"(ptr %__apoc_internal_context5, %string %2, %Any %any_pass), !dbg !54
  %7 = bitcast ptr %runtime_type_info7 to ptr, !dbg !55
  store i32 3, ptr %7, align 32, !dbg !55
  %8 = getelementptr inbounds %Type_Primitive.2, ptr %runtime_type_info7, i32 0, i32 1, !dbg !55
  store i32 4, ptr %8, align 32, !dbg !55
  store i64 0, ptr %any_val8, align 8, !dbg !55
  store i64 20, ptr %any_val8, align 8, !dbg !55
  call void @llvm.memset.p0.i64(ptr align 8 %to_any9, i8 0, i64 16, i1 false), !dbg !55
  %9 = bitcast ptr %to_any9 to ptr, !dbg !55
  %10 = getelementptr inbounds %Any, ptr %to_any9, i32 0, i32 1, !dbg !55
  store ptr %runtime_type_info7, ptr %9, align 8, !dbg !55
  store ptr %any_val8, ptr %10, align 8, !dbg !55
  %any_pass10 = load %Any, ptr %to_any9, align 8, !dbg !55
  call void (ptr, ptr, ...) @"print!@* u8!@-"(ptr %__apoc_internal_context6, ptr @2, %Any %any_pass10), !dbg !55
  ret i32 0, !dbg !56
}

define void @builder_to_string(ptr %__apoc_internal_context, ptr %builder) !dbg !57 {
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
  call void @llvm.dbg.declare(metadata ptr %builder2, metadata !60, metadata !DIExpression()), !dbg !61
  store ptr %builder, ptr %builder2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false), !dbg !62
  call void @llvm.dbg.declare(metadata ptr %out, metadata !63, metadata !DIExpression()), !dbg !62
  store i64 0, ptr %out_len, align 8, !dbg !64
  store i64 0, ptr %out_len, align 8, !dbg !64
  call void @llvm.dbg.declare(metadata ptr %out_len, metadata !65, metadata !DIExpression()), !dbg !64
  %0 = load ptr, ptr %builder2, align 8, !dbg !66
  store i64 0, ptr %current, align 8, !dbg !66
  store ptr %0, ptr %current, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %current, metadata !67, metadata !DIExpression()), !dbg !66
  store i64 0, ptr %i, align 8, !dbg !68
  store i64 0, ptr %i, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %i, metadata !69, metadata !DIExpression()), !dbg !70
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.body, %entry
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !68
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 2, !dbg !68
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !68
  %1 = icmp ne ptr %selected, null, !dbg !68
  br i1 %1, label %for.body, label %for.aftr, !dbg !68

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %out_len, align 8, !dbg !71
  %"derefrence struct3" = load ptr, ptr %current, align 8, !dbg !71
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 1, !dbg !71
  %selected5 = load i64, ptr %"struct member ptr4", align 8, !dbg !71
  %3 = add i64 %2, %selected5, !dbg !71
  store i64 %3, ptr %out_len, align 8, !dbg !71
  %"derefrence struct6" = load ptr, ptr %current, align 8, !dbg !72
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2, !dbg !72
  %selected8 = load ptr, ptr %"struct member ptr7", align 8, !dbg !72
  store ptr %selected8, ptr %current, align 8, !dbg !72
  %4 = load i64, ptr %i, align 8, !dbg !73
  %5 = add i64 %4, 1, !dbg !73
  store i64 %5, ptr %i, align 8, !dbg !73
  br label %for.cond, !dbg !73

for.aftr:                                         ; preds = %for.cond
  %6 = load i64, ptr %out_len, align 8, !dbg !74
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !74
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !74
  %selected11 = load i64, ptr %"struct member ptr10", align 8, !dbg !74
  %7 = add i64 %6, %selected11, !dbg !74
  store i64 %7, ptr %out_len, align 8, !dbg !74
  %8 = load i64, ptr %out_len, align 8, !dbg !75
  %9 = call ptr @mem_alloc(ptr %__apoc_internal_context12, i64 %8), !dbg !75
  %"struct member ptr1362" = bitcast ptr %out to ptr, !dbg !75
  store ptr %9, ptr %"struct member ptr1362", align 8, !dbg !75
  %10 = load i64, ptr %out_len, align 8, !dbg !76
  %"struct member ptr14" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !76
  store i64 %10, ptr %"struct member ptr14", align 8, !dbg !76
  store i64 0, ptr %times, align 8, !dbg !77
  store i64 0, ptr %times, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %times, metadata !78, metadata !DIExpression()), !dbg !77
  store i64 0, ptr %i15, align 8, !dbg !79
  store i64 0, ptr %i15, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %i15, metadata !80, metadata !DIExpression()), !dbg !81
  br label %for.cond16, !dbg !79

for.cond16:                                       ; preds = %for.body17, %for.aftr
  %"derefrence struct19" = load ptr, ptr %current, align 8, !dbg !79
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 2, !dbg !79
  %selected21 = load ptr, ptr %"struct member ptr20", align 8, !dbg !79
  %11 = icmp ne ptr %selected21, null, !dbg !79
  br i1 %11, label %for.body17, label %for.aftr18, !dbg !79

for.body17:                                       ; preds = %for.cond16
  %12 = load i64, ptr %times, align 8, !dbg !82
  %13 = mul i64 %12, 256, !dbg !82
  %"struct member ptr2463" = bitcast ptr %out to ptr, !dbg !82
  %ptr_load = load ptr, ptr %"struct member ptr2463", align 8, !dbg !82
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %13, !dbg !82
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !82
  %14 = load i64, ptr %times, align 8, !dbg !82
  %15 = mul i64 %14, 256, !dbg !82
  %"struct member ptr2564" = bitcast ptr %out to ptr, !dbg !82
  %ptr_load26 = load ptr, ptr %"struct member ptr2564", align 8, !dbg !82
  %elem_ptr27 = getelementptr i8, ptr %ptr_load26, i64 %15, !dbg !82
  %"derefrence struct28" = load ptr, ptr %current, align 8, !dbg !82
  %"struct member ptr2965" = bitcast ptr %"derefrence struct28" to ptr, !dbg !82
  %elem_ptr3066 = bitcast ptr %"struct member ptr2965" to ptr, !dbg !82
  %indexed_val31 = load i8, ptr %elem_ptr3066, align 1, !dbg !82
  %"derefrence struct32" = load ptr, ptr %current, align 8, !dbg !82
  %"struct member ptr3367" = bitcast ptr %"derefrence struct32" to ptr, !dbg !82
  %elem_ptr3468 = bitcast ptr %"struct member ptr3367" to ptr, !dbg !82
  %"derefrence struct35" = load ptr, ptr %current, align 8, !dbg !82
  %"struct member ptr36" = getelementptr inbounds %String_Builder, ptr %"derefrence struct35", i32 0, i32 1, !dbg !82
  %selected37 = load i64, ptr %"struct member ptr36", align 8, !dbg !82
  call void @copy(ptr %__apoc_internal_context23, ptr %elem_ptr27, ptr %elem_ptr3468, i64 %selected37), !dbg !82
  %"derefrence struct38" = load ptr, ptr %current, align 8, !dbg !83
  %"struct member ptr39" = getelementptr inbounds %String_Builder, ptr %"derefrence struct38", i32 0, i32 2, !dbg !83
  %selected40 = load ptr, ptr %"struct member ptr39", align 8, !dbg !83
  store ptr %selected40, ptr %current, align 8, !dbg !83
  %16 = load i64, ptr %times, align 8, !dbg !84
  %17 = add i64 %16, 1, !dbg !84
  store i64 %17, ptr %times, align 8, !dbg !84
  %18 = load i64, ptr %i15, align 8, !dbg !85
  %19 = add i64 %18, 1, !dbg !85
  store i64 %19, ptr %i15, align 8, !dbg !85
  br label %for.cond16, !dbg !85

for.aftr18:                                       ; preds = %for.cond16
  %20 = load i64, ptr %times, align 8, !dbg !86
  %21 = mul i64 %20, 256, !dbg !86
  %"struct member ptr4269" = bitcast ptr %out to ptr, !dbg !86
  %ptr_load43 = load ptr, ptr %"struct member ptr4269", align 8, !dbg !86
  %elem_ptr44 = getelementptr i8, ptr %ptr_load43, i64 %21, !dbg !86
  %indexed_val45 = load i8, ptr %elem_ptr44, align 1, !dbg !86
  %22 = load i64, ptr %times, align 8, !dbg !86
  %23 = mul i64 %22, 256, !dbg !86
  %"struct member ptr4670" = bitcast ptr %out to ptr, !dbg !86
  %ptr_load47 = load ptr, ptr %"struct member ptr4670", align 8, !dbg !86
  %elem_ptr48 = getelementptr i8, ptr %ptr_load47, i64 %23, !dbg !86
  %"derefrence struct49" = load ptr, ptr %current, align 8, !dbg !86
  %"struct member ptr5071" = bitcast ptr %"derefrence struct49" to ptr, !dbg !86
  %elem_ptr5172 = bitcast ptr %"struct member ptr5071" to ptr, !dbg !86
  %indexed_val52 = load i8, ptr %elem_ptr5172, align 1, !dbg !86
  %"derefrence struct53" = load ptr, ptr %current, align 8, !dbg !86
  %"struct member ptr5473" = bitcast ptr %"derefrence struct53" to ptr, !dbg !86
  %elem_ptr5574 = bitcast ptr %"struct member ptr5473" to ptr, !dbg !86
  %"derefrence struct56" = load ptr, ptr %current, align 8, !dbg !86
  %"struct member ptr57" = getelementptr inbounds %String_Builder, ptr %"derefrence struct56", i32 0, i32 1, !dbg !86
  %selected58 = load i64, ptr %"struct member ptr57", align 8, !dbg !86
  call void @copy(ptr %__apoc_internal_context41, ptr %elem_ptr48, ptr %elem_ptr5574, i64 %selected58), !dbg !86
  %24 = load i64, ptr %out_len, align 8, !dbg !87
  %"derefrence struct59" = load ptr, ptr %builder2, align 8, !dbg !87
  %"struct member ptr60" = getelementptr inbounds %String_Builder, ptr %"derefrence struct59", i32 0, i32 1, !dbg !87
  %selected61 = load i64, ptr %"struct member ptr60", align 8, !dbg !87
  %25 = add i64 %24, %selected61, !dbg !87
  store i64 %25, ptr %out_len, align 8, !dbg !87
  %26 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !88
  %ret_ptr75 = bitcast ptr %26 to ptr, !dbg !88
  %27 = load ptr, ptr %ret_ptr75, align 8, !dbg !88
  %28 = load %string, ptr %out, align 8, !dbg !88
  store %string %28, ptr %27, align 8, !dbg !88
  ret void, !dbg !88
}

define void @init_builder(ptr %__apoc_internal_context, ptr %text) !dbg !89 {
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
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !92, metadata !DIExpression()), !dbg !93
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %out, i8 0, i64 272, i1 false), !dbg !94
  call void @llvm.dbg.declare(metadata ptr %out, metadata !95, metadata !DIExpression()), !dbg !94
  %0 = load %String_Builder, ptr %out, align 8, !dbg !96
  store i64 0, ptr %current, align 8, !dbg !96
  store ptr %out, ptr %current, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %current, metadata !97, metadata !DIExpression()), !dbg !96
  store i64 0, ptr %times, align 8, !dbg !98
  store i64 0, ptr %times, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata ptr %times, metadata !99, metadata !DIExpression()), !dbg !98
  store i64 0, ptr %i, align 8, !dbg !100
  store i64 0, ptr %i, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %i, metadata !101, metadata !DIExpression()), !dbg !102
  br label %for.cond, !dbg !100

for.cond:                                         ; preds = %if.aftr, %entry
  %1 = load i64, ptr %i, align 8, !dbg !100
  %2 = load i64, ptr %times, align 8, !dbg !100
  %3 = mul i64 %2, 256, !dbg !100
  %4 = add i64 %1, %3, !dbg !100
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !100
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %4, !dbg !100
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !100
  %5 = icmp ne i8 %indexed_val, 0, !dbg !100
  br i1 %5, label %for.body, label %for.aftr, !dbg !100

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8, !dbg !103
  %7 = load i64, ptr %times, align 8, !dbg !103
  %8 = mul i64 %7, 256, !dbg !103
  %9 = add i64 %6, %8, !dbg !103
  %ptr_load3 = load ptr, ptr %text2, align 8, !dbg !103
  %elem_ptr4 = getelementptr i8, ptr %ptr_load3, i64 %9, !dbg !103
  %indexed_val5 = load i8, ptr %elem_ptr4, align 1, !dbg !103
  %10 = load i64, ptr %i, align 8, !dbg !103
  %"derefrence struct" = load ptr, ptr %current, align 8, !dbg !103
  %"struct member ptr17" = bitcast ptr %"derefrence struct" to ptr, !dbg !103
  %elem_ptr6 = getelementptr [256 x i8], ptr %"struct member ptr17", i64 0, i64 %10, !dbg !103
  store i8 %indexed_val5, ptr %elem_ptr6, align 1, !dbg !103
  %"derefrence struct7" = load ptr, ptr %current, align 8, !dbg !104
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %"derefrence struct7", i32 0, i32 1, !dbg !104
  %selected = load i64, ptr %"struct member ptr8", align 8, !dbg !104
  %11 = add i64 %selected, 1, !dbg !104
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !104
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !104
  store i64 %11, ptr %"struct member ptr10", align 8, !dbg !104
  %12 = load i64, ptr %i, align 8, !dbg !105
  %13 = icmp eq i64 %12, 256, !dbg !105
  br i1 %13, label %if.true, label %if.aftr, !dbg !106

for.aftr:                                         ; preds = %for.cond
  %14 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !107
  %ret_ptr18 = bitcast ptr %14 to ptr, !dbg !107
  %15 = load ptr, ptr %ret_ptr18, align 8, !dbg !107
  %16 = load %String_Builder, ptr %out, align 8, !dbg !107
  store %String_Builder %16, ptr %15, align 256, !dbg !107
  ret void, !dbg !107

if.true:                                          ; preds = %for.body
  store i64 0, ptr %i, align 8, !dbg !108
  %17 = load i64, ptr %times, align 8, !dbg !109
  %18 = add i64 %17, 1, !dbg !109
  store i64 %18, ptr %times, align 8, !dbg !109
  %19 = call ptr @mem_alloc(ptr %__apoc_internal_context11, i64 272), !dbg !110
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !110
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %"derefrence struct12", i32 0, i32 2, !dbg !110
  store ptr %19, ptr %"struct member ptr13", align 8, !dbg !110
  %"derefrence struct14" = load ptr, ptr %current, align 8, !dbg !111
  %"struct member ptr15" = getelementptr inbounds %String_Builder, ptr %"derefrence struct14", i32 0, i32 2, !dbg !111
  %selected16 = load ptr, ptr %"struct member ptr15", align 8, !dbg !111
  store ptr %selected16, ptr %current, align 8, !dbg !111
  br label %if.aftr, !dbg !112

if.aftr:                                          ; preds = %for.body, %if.true
  %20 = load i64, ptr %i, align 8, !dbg !106
  %21 = add i64 %20, 1, !dbg !106
  store i64 %21, ptr %i, align 8, !dbg !106
  br label %for.cond, !dbg !106
}

define i8 @compare(ptr %__apoc_internal_context, %string %str1, %string %str2) !dbg !113 {
entry:
  %i = alloca i64, align 8
  %str23 = alloca %string, align 8
  %str12 = alloca %string, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str12, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str12, metadata !116, metadata !DIExpression()), !dbg !117
  store %string %str1, ptr %str12, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str23, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str23, metadata !118, metadata !DIExpression()), !dbg !117
  store %string %str2, ptr %str23, align 8
  %"struct member ptr" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1, !dbg !119
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !119
  %"struct member ptr4" = getelementptr inbounds %string, ptr %str23, i32 0, i32 1, !dbg !119
  %selected5 = load i64, ptr %"struct member ptr4", align 8, !dbg !119
  %0 = icmp ne i64 %selected, %selected5, !dbg !119
  br i1 %0, label %if.true, label %if.aftr, !dbg !120

if.true:                                          ; preds = %entry
  ret i8 0, !dbg !121

if.aftr:                                          ; preds = %entry
  store i64 0, ptr %i, align 8, !dbg !120
  store i64 0, ptr %i, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %i, metadata !122, metadata !DIExpression()), !dbg !123
  br label %for.cond, !dbg !120

for.cond:                                         ; preds = %if.aftr14, %if.aftr
  %1 = load i64, ptr %i, align 8, !dbg !120
  %"struct member ptr6" = getelementptr inbounds %string, ptr %str12, i32 0, i32 1, !dbg !120
  %selected7 = load i64, ptr %"struct member ptr6", align 8, !dbg !120
  %2 = icmp slt i64 %1, %selected7, !dbg !120
  br i1 %2, label %for.body, label %for.aftr, !dbg !120

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 8, !dbg !124
  %"struct member ptr815" = bitcast ptr %str12 to ptr, !dbg !124
  %ptr_load = load ptr, ptr %"struct member ptr815", align 8, !dbg !124
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %3, !dbg !124
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !124
  %4 = load i64, ptr %i, align 8, !dbg !124
  %"struct member ptr916" = bitcast ptr %str23 to ptr, !dbg !124
  %ptr_load10 = load ptr, ptr %"struct member ptr916", align 8, !dbg !124
  %elem_ptr11 = getelementptr i8, ptr %ptr_load10, i64 %4, !dbg !124
  %indexed_val12 = load i8, ptr %elem_ptr11, align 1, !dbg !124
  %5 = icmp ne i8 %indexed_val, %indexed_val12, !dbg !124
  br i1 %5, label %if.true13, label %if.aftr14, !dbg !120

for.aftr:                                         ; preds = %for.cond
  ret i8 1, !dbg !125

if.true13:                                        ; preds = %for.body
  ret i8 0, !dbg !126

if.aftr14:                                        ; preds = %for.body
  %6 = load i64, ptr %i, align 8, !dbg !120
  %7 = add i64 %6, 1, !dbg !120
  store i64 %7, ptr %i, align 8, !dbg !120
  br label %for.cond, !dbg !120
}

define void @to_string(ptr %__apoc_internal_context, ptr %text) !dbg !127 {
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
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !128, metadata !DIExpression()), !dbg !129
  store ptr %text, ptr %text2, align 8
  %0 = load ptr, ptr %text2, align 8, !dbg !130
  %1 = call i64 @len(ptr %__apoc_internal_context3, ptr %0), !dbg !130
  store i64 0, ptr %text_len, align 8, !dbg !130
  store i64 %1, ptr %text_len, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !131, metadata !DIExpression()), !dbg !130
  %2 = load i64, ptr %text_len, align 8, !dbg !132
  %3 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %2), !dbg !132
  store i64 0, ptr %allocated, align 8, !dbg !132
  store ptr %3, ptr %allocated, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !133, metadata !DIExpression()), !dbg !132
  %4 = load ptr, ptr %allocated, align 8, !dbg !134
  %5 = load ptr, ptr %text2, align 8, !dbg !134
  %6 = load i64, ptr %text_len, align 8, !dbg !134
  call void @copy(ptr %__apoc_internal_context5, ptr %4, ptr %5, i64 %6), !dbg !134
  call void @llvm.memset.p0.i64(ptr align 8 %str, i8 0, i64 16, i1 false), !dbg !135
  %7 = load ptr, ptr %allocated, align 8, !dbg !135
  %8 = bitcast ptr %str to ptr, !dbg !135
  store ptr %7, ptr %8, align 8, !dbg !135
  %9 = load i64, ptr %text_len, align 8, !dbg !135
  %10 = getelementptr inbounds %string, ptr %str, i32 0, i32 1, !dbg !135
  store i64 %9, ptr %10, align 8, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %str, metadata !136, metadata !DIExpression()), !dbg !135
  %11 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !137
  %ret_ptr6 = bitcast ptr %11 to ptr, !dbg !137
  %12 = load ptr, ptr %ret_ptr6, align 8, !dbg !137
  %13 = load %string, ptr %str, align 8, !dbg !137
  store %string %13, ptr %12, align 8, !dbg !137
  ret void, !dbg !137
}

define void @terminate_string(ptr %__apoc_internal_context, %string %str) !dbg !138 {
entry:
  %__apoc_internal_context8 = alloca %__Internal_Context, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %out = alloca %string, align 8
  %str2 = alloca %string, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str2, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !141, metadata !DIExpression()), !dbg !142
  store %string %str, ptr %str2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false), !dbg !143
  call void @llvm.dbg.declare(metadata ptr %out, metadata !144, metadata !DIExpression()), !dbg !143
  %"struct member ptr" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !145
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !145
  %0 = add i64 %selected, 1, !dbg !145
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !145
  store i64 %0, ptr %"struct member ptr3", align 8, !dbg !145
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !146
  %selected6 = load i64, ptr %"struct member ptr5", align 8, !dbg !146
  %1 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6), !dbg !146
  %"struct member ptr718" = bitcast ptr %out to ptr, !dbg !146
  store ptr %1, ptr %"struct member ptr718", align 8, !dbg !146
  %"struct member ptr919" = bitcast ptr %out to ptr, !dbg !147
  %selected10 = load ptr, ptr %"struct member ptr919", align 8, !dbg !147
  %"struct member ptr1120" = bitcast ptr %str2 to ptr, !dbg !147
  %selected12 = load ptr, ptr %"struct member ptr1120", align 8, !dbg !147
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !147
  %selected14 = load i64, ptr %"struct member ptr13", align 8, !dbg !147
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14), !dbg !147
  %"struct member ptr15" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !148
  %selected16 = load i64, ptr %"struct member ptr15", align 8, !dbg !148
  %"struct member ptr1721" = bitcast ptr %out to ptr, !dbg !148
  %ptr_load = load ptr, ptr %"struct member ptr1721", align 8, !dbg !148
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected16, !dbg !148
  store i8 0, ptr %elem_ptr, align 1, !dbg !148
  %2 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !149
  %ret_ptr22 = bitcast ptr %2 to ptr, !dbg !149
  %3 = load ptr, ptr %ret_ptr22, align 8, !dbg !149
  %4 = load %string, ptr %out, align 8, !dbg !149
  store %string %4, ptr %3, align 8, !dbg !149
  ret void, !dbg !149
}

define void @build_unsigned_int(ptr %__apoc_internal_context, i64 %num, i64 %num_size, ptr %builder) !dbg !150 {
entry:
  %__apoc_internal_context5 = alloca %__Internal_Context, align 8
  %digit = alloca i64, align 8
  %builder4 = alloca ptr, align 8
  %num_size3 = alloca i64, align 8
  %num2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %num2, align 8
  call void @llvm.dbg.declare(metadata ptr %num2, metadata !154, metadata !DIExpression()), !dbg !155
  store i64 %num, ptr %num2, align 8
  store i64 0, ptr %num_size3, align 8
  call void @llvm.dbg.declare(metadata ptr %num_size3, metadata !156, metadata !DIExpression()), !dbg !155
  store i64 %num_size, ptr %num_size3, align 8
  store i64 0, ptr %builder4, align 8
  call void @llvm.dbg.declare(metadata ptr %builder4, metadata !157, metadata !DIExpression()), !dbg !155
  store ptr %builder, ptr %builder4, align 8
  %0 = load i64, ptr %num_size3, align 8, !dbg !158
  %1 = icmp ne i64 %0, 0, !dbg !158
  br i1 %1, label %if.true, label %if.aftr, !dbg !159

if.true:                                          ; preds = %entry
  %2 = load i64, ptr %num2, align 8, !dbg !160
  %3 = urem i64 %2, 10, !dbg !160
  %4 = add i64 %3, 48, !dbg !160
  store i64 0, ptr %digit, align 8, !dbg !160
  store i64 %4, ptr %digit, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata ptr %digit, metadata !161, metadata !DIExpression()), !dbg !160
  %5 = load i64, ptr %num2, align 8, !dbg !162
  %6 = udiv i64 %5, 10, !dbg !162
  %7 = load i64, ptr %num_size3, align 8, !dbg !162
  %8 = sub i64 %7, 1, !dbg !162
  %9 = load ptr, ptr %builder4, align 8, !dbg !162
  call void @build_unsigned_int(ptr %__apoc_internal_context5, i64 %6, i64 %8, ptr %9), !dbg !162
  %10 = load ptr, ptr %builder4, align 8, !dbg !163
  %derefrenced = load %String_Builder, ptr %10, align 256, !dbg !163
  %ptr_addr = load ptr, ptr %builder4, align 8, !dbg !163
  %11 = load i64, ptr %digit, align 8, !dbg !163
  %cast = trunc i64 %11 to i8, !dbg !163
  call void @"overload[x]=.9"(ptr %ptr_addr, i8 %cast), !dbg !163
  br label %if.aftr, !dbg !164

if.aftr:                                          ; preds = %entry, %if.true
  ret void, !dbg !159
}

define void @int_to_str(ptr %__apoc_internal_context, i64 %num, ptr %builder) !dbg !165 {
entry:
  %__apoc_internal_context8 = alloca %__Internal_Context, align 8
  %num_size = alloca i64, align 8
  %div_copy = alloca i64, align 8
  %builder3 = alloca ptr, align 8
  %num2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %num2, align 8
  call void @llvm.dbg.declare(metadata ptr %num2, metadata !168, metadata !DIExpression()), !dbg !169
  store i64 %num, ptr %num2, align 8
  store i64 0, ptr %builder3, align 8
  call void @llvm.dbg.declare(metadata ptr %builder3, metadata !170, metadata !DIExpression()), !dbg !169
  store ptr %builder, ptr %builder3, align 8
  %0 = load i64, ptr %num2, align 8, !dbg !171
  %1 = icmp eq i64 %0, 0, !dbg !171
  br i1 %1, label %if.true, label %if.aftr, !dbg !172

if.true:                                          ; preds = %entry
  %2 = load ptr, ptr %builder3, align 8, !dbg !173
  %derefrenced = load %String_Builder, ptr %2, align 256, !dbg !173
  %ptr_addr = load ptr, ptr %builder3, align 8, !dbg !173
  call void @"overload[x]=.9"(ptr %ptr_addr, i8 48), !dbg !173
  ret void, !dbg !174

if.aftr:                                          ; preds = %entry
  %3 = load i64, ptr %num2, align 8, !dbg !175
  store i64 0, ptr %div_copy, align 8, !dbg !175
  store i64 %3, ptr %div_copy, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %div_copy, metadata !176, metadata !DIExpression()), !dbg !175
  store i64 0, ptr %num_size, align 8, !dbg !177
  store i64 0, ptr %num_size, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %num_size, metadata !178, metadata !DIExpression()), !dbg !177
  br label %for.cond, !dbg !172

for.cond:                                         ; preds = %for.body, %if.aftr
  %4 = load i64, ptr %div_copy, align 8, !dbg !172
  %5 = icmp ne i64 %4, 0, !dbg !172
  br i1 %5, label %for.body, label %for.aftr, !dbg !172

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %div_copy, align 8, !dbg !179
  %7 = sdiv i64 %6, 10, !dbg !179
  store i64 %7, ptr %div_copy, align 8, !dbg !179
  %8 = load i64, ptr %num_size, align 8, !dbg !180
  %9 = add i64 %8, 1, !dbg !180
  store i64 %9, ptr %num_size, align 8, !dbg !180
  br label %for.cond, !dbg !180

for.aftr:                                         ; preds = %for.cond
  %10 = load i64, ptr %num2, align 8, !dbg !181
  %11 = icmp slt i64 %10, 0, !dbg !181
  br i1 %11, label %if.true4, label %if.aftr5, !dbg !182

if.true4:                                         ; preds = %for.aftr
  %12 = load ptr, ptr %builder3, align 8, !dbg !183
  %derefrenced6 = load %String_Builder, ptr %12, align 256, !dbg !183
  %ptr_addr7 = load ptr, ptr %builder3, align 8, !dbg !183
  call void @"overload[x]=.9"(ptr %ptr_addr7, i8 45), !dbg !183
  %13 = load i64, ptr %num2, align 8, !dbg !184
  %14 = sub i64 0, %13, !dbg !184
  store i64 %14, ptr %num2, align 8, !dbg !184
  %15 = load i64, ptr %num_size, align 8, !dbg !185
  %16 = add i64 %15, 1, !dbg !185
  store i64 %16, ptr %num_size, align 8, !dbg !185
  br label %if.aftr5, !dbg !186

if.aftr5:                                         ; preds = %for.aftr, %if.true4
  %17 = load i64, ptr %num2, align 8, !dbg !187
  %18 = load i64, ptr %num_size, align 8, !dbg !187
  %19 = load ptr, ptr %builder3, align 8, !dbg !187
  call void @build_unsigned_int(ptr %__apoc_internal_context8, i64 %17, i64 %18, ptr %19), !dbg !187
  ret void, !dbg !182
}

define void @float_to_str(ptr %__apoc_internal_context, double %num, ptr %builder) !dbg !188 {
entry:
  %__apoc_internal_context22 = alloca %__Internal_Context, align 8
  %i = alloca i64, align 8
  %zeroes_to_append = alloca i64, align 8
  %__apoc_internal_context9 = alloca %__Internal_Context, align 8
  %decimal = alloca i64, align 8
  %builder3 = alloca ptr, align 8
  %num2 = alloca double, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %num2, align 8
  call void @llvm.dbg.declare(metadata ptr %num2, metadata !192, metadata !DIExpression()), !dbg !193
  store double %num, ptr %num2, align 8
  store i64 0, ptr %builder3, align 8
  call void @llvm.dbg.declare(metadata ptr %builder3, metadata !194, metadata !DIExpression()), !dbg !193
  store ptr %builder, ptr %builder3, align 8
  %0 = load double, ptr %num2, align 8, !dbg !195
  %1 = fcmp ult double %0, 0.000000e+00, !dbg !195
  br i1 %1, label %if.true, label %if.aftr6, !dbg !196

if.true:                                          ; preds = %entry
  %2 = load ptr, ptr %builder3, align 8, !dbg !197
  %derefrenced = load %String_Builder, ptr %2, align 256, !dbg !197
  %ptr_addr = load ptr, ptr %builder3, align 8, !dbg !197
  call void @"overload[x]=.9"(ptr %ptr_addr, i8 45), !dbg !197
  %3 = load double, ptr %num2, align 8, !dbg !198
  %4 = fneg double %3, !dbg !198
  store double %4, ptr %num2, align 8, !dbg !198
  %5 = load double, ptr %num2, align 8, !dbg !199
  %cast = fptosi double %5 to i64, !dbg !199
  store i64 0, ptr %decimal, align 8, !dbg !199
  store i64 %cast, ptr %decimal, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %decimal, metadata !200, metadata !DIExpression()), !dbg !199
  %6 = load double, ptr %num2, align 8, !dbg !201
  %7 = load i64, ptr %decimal, align 8, !dbg !201
  %cast4 = sitofp i64 %7 to double, !dbg !201
  %8 = fsub double %6, %cast4, !dbg !201
  store double %8, ptr %num2, align 8, !dbg !201
  %9 = load i64, ptr %decimal, align 8, !dbg !202
  %10 = icmp eq i64 %9, 0, !dbg !202
  br i1 %10, label %if.true5, label %if.else, !dbg !196

if.true5:                                         ; preds = %if.true
  %11 = load ptr, ptr %builder3, align 8, !dbg !203
  %derefrenced7 = load %String_Builder, ptr %11, align 256, !dbg !203
  %ptr_addr8 = load ptr, ptr %builder3, align 8, !dbg !203
  call void @"overload[x]=.9"(ptr %ptr_addr8, i8 48), !dbg !203
  br label %if.aftr6, !dbg !204

if.aftr6:                                         ; preds = %entry, %if.else, %if.true5
  %12 = load ptr, ptr %builder3, align 8, !dbg !205
  %derefrenced10 = load %String_Builder, ptr %12, align 256, !dbg !205
  %ptr_addr11 = load ptr, ptr %builder3, align 8, !dbg !205
  call void @"overload[x]=.9"(ptr %ptr_addr11, i8 46), !dbg !205
  store i64 0, ptr %zeroes_to_append, align 8, !dbg !206
  store i64 0, ptr %zeroes_to_append, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %zeroes_to_append, metadata !207, metadata !DIExpression()), !dbg !206
  br label %for.cond, !dbg !196

if.else:                                          ; preds = %if.true
  %13 = load i64, ptr %decimal, align 8, !dbg !208
  %14 = load ptr, ptr %builder3, align 8, !dbg !208
  call void @int_to_str(ptr %__apoc_internal_context9, i64 %13, ptr %14), !dbg !208
  br label %if.aftr6, !dbg !209

for.cond:                                         ; preds = %if.true15, %for.body, %if.aftr6
  %15 = load double, ptr %num2, align 8, !dbg !196
  %cast12 = fptosi double %15 to i64, !dbg !196
  %cast13 = sitofp i64 %cast12 to double, !dbg !196
  %16 = load double, ptr %num2, align 8, !dbg !196
  %17 = fcmp une double %cast13, %16, !dbg !196
  br i1 %17, label %for.body, label %for.aftr, !dbg !196

for.body:                                         ; preds = %for.cond
  %18 = load double, ptr %num2, align 8, !dbg !210
  %19 = fmul double %18, 1.000000e+01, !dbg !210
  store double %19, ptr %num2, align 8, !dbg !210
  %20 = load double, ptr %num2, align 8, !dbg !211
  %cast14 = fptosi double %20 to i64, !dbg !211
  %21 = icmp eq i64 %cast14, 0, !dbg !211
  br i1 %21, label %if.true15, label %for.cond, !dbg !212

for.aftr:                                         ; preds = %for.cond
  store i64 0, ptr %i, align 8, !dbg !213
  store i64 0, ptr %i, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %i, metadata !214, metadata !DIExpression()), !dbg !215
  br label %for.cond17, !dbg !213

if.true15:                                        ; preds = %for.body
  %22 = load i64, ptr %zeroes_to_append, align 8, !dbg !216
  %23 = add i64 %22, 1, !dbg !216
  store i64 %23, ptr %zeroes_to_append, align 8, !dbg !216
  br label %for.cond, !dbg !211

for.cond17:                                       ; preds = %for.body18, %for.aftr
  %24 = load i64, ptr %i, align 8, !dbg !213
  %25 = load i64, ptr %zeroes_to_append, align 8, !dbg !213
  %26 = icmp slt i64 %24, %25, !dbg !213
  br i1 %26, label %for.body18, label %for.aftr19, !dbg !213

for.body18:                                       ; preds = %for.cond17
  %27 = load ptr, ptr %builder3, align 8, !dbg !217
  %derefrenced20 = load %String_Builder, ptr %27, align 256, !dbg !217
  %ptr_addr21 = load ptr, ptr %builder3, align 8, !dbg !217
  call void @"overload[x]=.9"(ptr %ptr_addr21, i8 48), !dbg !217
  %28 = load i64, ptr %i, align 8, !dbg !218
  %29 = add i64 %28, 1, !dbg !218
  store i64 %29, ptr %i, align 8, !dbg !218
  br label %for.cond17, !dbg !218

for.aftr19:                                       ; preds = %for.cond17
  %30 = load double, ptr %num2, align 8, !dbg !219
  %cast23 = fptosi double %30 to i64, !dbg !219
  %31 = load ptr, ptr %builder3, align 8, !dbg !219
  call void @int_to_str(ptr %__apoc_internal_context22, i64 %cast23, ptr %31), !dbg !219
  ret void, !dbg !220
}

define void @parse_format(ptr %__apoc_internal_context, %string %format, ptr %list) !dbg !221 {
entry:
  %out = alloca %string, align 8
  %__apoc_internal_context23 = alloca %__Internal_Context, align 8
  %__apoc_internal_context17 = alloca %__Internal_Context, align 8
  %__apoc_internal_context9 = alloca %__Internal_Context, align 8
  %type = alloca i32, align 4
  %item = alloca %Any, align 8
  %i = alloca i64, align 8
  %list_index = alloca i64, align 8
  %builder = alloca %String_Builder, align 256
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %list3 = alloca ptr, align 8
  %format2 = alloca %string, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %format2, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !283, metadata !DIExpression()), !dbg !284
  store %string %format, ptr %format2, align 8
  store i64 0, ptr %list3, align 8
  call void @llvm.dbg.declare(metadata ptr %list3, metadata !285, metadata !DIExpression()), !dbg !284
  store ptr %list, ptr %list3, align 8
  call void @llvm.memset.p0.i64(ptr align 256 %builder, i8 0, i64 272, i1 false), !dbg !286
  %return_value_member25 = bitcast ptr %__apoc_internal_context4 to ptr, !dbg !286
  store ptr %builder, ptr %return_value_member25, align 8, !dbg !286
  call void @init_builder(ptr %__apoc_internal_context4, ptr @3), !dbg !286
  call void @llvm.dbg.declare(metadata ptr %builder, metadata !287, metadata !DIExpression()), !dbg !286
  store i64 0, ptr %list_index, align 8, !dbg !288
  store i64 0, ptr %list_index, align 8, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %list_index, metadata !289, metadata !DIExpression()), !dbg !288
  store i64 0, ptr %i, align 8, !dbg !290
  store i64 0, ptr %i, align 8, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %i, metadata !291, metadata !DIExpression()), !dbg !292
  br label %for.cond, !dbg !290

for.cond:                                         ; preds = %if.aftr, %entry
  %0 = load i64, ptr %i, align 8, !dbg !290
  %"struct member ptr" = getelementptr inbounds %string, ptr %format2, i32 0, i32 1, !dbg !290
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !290
  %1 = icmp slt i64 %0, %selected, !dbg !290
  br i1 %1, label %for.body, label %for.aftr, !dbg !290

for.body:                                         ; preds = %for.cond
  %2 = load %string, ptr %format2, align 8, !dbg !293
  %3 = load i64, ptr %i, align 8, !dbg !293
  %4 = call i8 @"overload[]"(%string %2, i64 %3), !dbg !293
  %5 = icmp eq i8 %4, 37, !dbg !293
  br i1 %5, label %if.true, label %if.else22, !dbg !294

for.aftr:                                         ; preds = %for.cond
  %6 = load %String_Builder, ptr %builder, align 8, !dbg !295
  call void @"overload[x]=.9"(ptr %builder, i8 10), !dbg !295
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false), !dbg !296
  %return_value_member2426 = bitcast ptr %__apoc_internal_context23 to ptr, !dbg !296
  store ptr %out, ptr %return_value_member2426, align 8, !dbg !296
  %7 = load %String_Builder, ptr %builder, align 8, !dbg !296
  call void @builder_to_string(ptr %__apoc_internal_context23, ptr %builder), !dbg !296
  call void @llvm.dbg.declare(metadata ptr %out, metadata !297, metadata !DIExpression()), !dbg !296
  %8 = load ptr, ptr %__apoc_internal_context1, align 8, !dbg !298
  %ret_ptr27 = bitcast ptr %8 to ptr, !dbg !298
  %9 = load ptr, ptr %ret_ptr27, align 8, !dbg !298
  %10 = load %string, ptr %out, align 8, !dbg !298
  store %string %10, ptr %9, align 8, !dbg !298
  ret void, !dbg !298

if.true:                                          ; preds = %for.body
  %11 = load i64, ptr %list_index, align 8, !dbg !299
  %ptr_load = load ptr, ptr %list3, align 8, !dbg !299
  %elem_ptr = getelementptr %Any, ptr %ptr_load, i64 %11, !dbg !299
  %indexed_val = load %Any, ptr %elem_ptr, align 8, !dbg !299
  call void @llvm.memset.p0.i64(ptr align 8 %item, i8 0, i64 16, i1 false), !dbg !299
  store %Any %indexed_val, ptr %item, align 8, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %item, metadata !300, metadata !DIExpression()), !dbg !299
  %12 = load i64, ptr %list_index, align 8, !dbg !301
  %13 = add i64 %12, 1, !dbg !301
  store i64 %13, ptr %list_index, align 8, !dbg !301
  %"struct member ptr528" = bitcast ptr %item to ptr, !dbg !302
  %"derefrence struct" = load ptr, ptr %"struct member ptr528", align 8, !dbg !302
  %"union member ptr29" = bitcast ptr %"derefrence struct" to ptr, !dbg !302
  %selected6 = load i32, ptr %"union member ptr29", align 4, !dbg !302
  store i32 0, ptr %type, align 4, !dbg !302
  store i32 %selected6, ptr %type, align 4, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %type, metadata !303, metadata !DIExpression()), !dbg !302
  %14 = load i32, ptr %type, align 4, !dbg !304
  %15 = icmp eq i32 %14, 3, !dbg !304
  br i1 %15, label %if.true7, label %if.else, !dbg !305

if.aftr:                                          ; preds = %if.true12, %if.else21, %if.true7, %if.else22
  %16 = load i64, ptr %i, align 8, !dbg !294
  %17 = add i64 %16, 1, !dbg !294
  store i64 %17, ptr %i, align 8, !dbg !294
  br label %for.cond, !dbg !294

if.true7:                                         ; preds = %if.true
  %"struct member ptr10" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !306
  %selected11 = load ptr, ptr %"struct member ptr10", align 8, !dbg !306
  %derefrenced = load i64, ptr %selected11, align 8, !dbg !306
  %18 = load %String_Builder, ptr %builder, align 8, !dbg !306
  call void @int_to_str(ptr %__apoc_internal_context9, i64 %derefrenced, ptr %builder), !dbg !306
  br label %if.aftr, !dbg !307

if.else:                                          ; preds = %if.true
  %19 = load i32, ptr %type, align 4, !dbg !308
  %20 = icmp eq i32 %19, 4, !dbg !308
  br i1 %20, label %if.true12, label %if.else21, !dbg !309

if.true12:                                        ; preds = %if.else
  %"struct member ptr14" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !310
  %selected15 = load ptr, ptr %"struct member ptr14", align 8, !dbg !310
  %derefrenced16 = load double, ptr %selected15, align 8, !dbg !310
  %21 = call i32 (ptr, ...) @printf(ptr @4, double %derefrenced16), !dbg !310
  %"struct member ptr18" = getelementptr inbounds %Any, ptr %item, i32 0, i32 1, !dbg !311
  %selected19 = load ptr, ptr %"struct member ptr18", align 8, !dbg !311
  %derefrenced20 = load double, ptr %selected19, align 8, !dbg !311
  %22 = load %String_Builder, ptr %builder, align 8, !dbg !311
  call void @float_to_str(ptr %__apoc_internal_context17, double %derefrenced20, ptr %builder), !dbg !311
  br label %if.aftr, !dbg !312

if.else21:                                        ; preds = %if.else
  %23 = load %String_Builder, ptr %builder, align 8, !dbg !313
  %24 = load %string, ptr %format2, align 8, !dbg !313
  %25 = load i64, ptr %i, align 8, !dbg !313
  %26 = call i8 @"overload[]"(%string %24, i64 %25), !dbg !313
  call void @"overload[x]=.9"(ptr %builder, i8 %26), !dbg !313
  br label %if.aftr, !dbg !314

if.else22:                                        ; preds = %for.body
  %27 = load %String_Builder, ptr %builder, align 8, !dbg !315
  %28 = load %string, ptr %format2, align 8, !dbg !315
  %29 = load i64, ptr %i, align 8, !dbg !315
  %30 = call i8 @"overload[]"(%string %28, i64 %29), !dbg !315
  call void @"overload[x]=.9"(ptr %builder, i8 %30), !dbg !315
  br label %if.aftr, !dbg !316
}

define void @"print!@* u8!@-"(ptr %__apoc_internal_context, ptr %format, ...) !dbg !317 {
entry:
  %__apoc_internal_context7 = alloca %__Internal_Context, align 8
  %stdout = alloca ptr, align 8
  %__apoc_internal_context6 = alloca %__Internal_Context, align 8
  %out = alloca %string, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %list = alloca ptr, align 8
  %str = alloca %string, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %format2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %format2, align 8
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !318, metadata !DIExpression()), !dbg !319
  store ptr %format, ptr %format2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str, i8 0, i64 16, i1 false), !dbg !320
  %return_value_member10 = bitcast ptr %__apoc_internal_context3 to ptr, !dbg !320
  store ptr %str, ptr %return_value_member10, align 8, !dbg !320
  %0 = load ptr, ptr %format2, align 8, !dbg !320
  call void @to_string(ptr %__apoc_internal_context3, ptr %0), !dbg !320
  call void @llvm.dbg.declare(metadata ptr %str, metadata !321, metadata !DIExpression()), !dbg !320
  store i64 0, ptr %list, align 8, !dbg !322
  store i64 0, ptr %list, align 8, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %list, metadata !323, metadata !DIExpression()), !dbg !322
  %1 = load ptr, ptr %list, align 8, !dbg !324
  call void @llvm.va_start(ptr %list), !dbg !324
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false), !dbg !325
  %return_value_member511 = bitcast ptr %__apoc_internal_context4 to ptr, !dbg !325
  store ptr %out, ptr %return_value_member511, align 8, !dbg !325
  %2 = load %string, ptr %str, align 8, !dbg !325
  %3 = load ptr, ptr %list, align 8, !dbg !325
  call void @parse_format(ptr %__apoc_internal_context4, %string %2, ptr %3), !dbg !325
  call void @llvm.dbg.declare(metadata ptr %out, metadata !326, metadata !DIExpression()), !dbg !325
  %4 = load ptr, ptr %list, align 8, !dbg !327
  call void @llvm.va_end(ptr %list), !dbg !327
  %5 = call ptr @get_stdout(ptr %__apoc_internal_context6), !dbg !328
  store i64 0, ptr %stdout, align 8, !dbg !328
  store ptr %5, ptr %stdout, align 8, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %stdout, metadata !329, metadata !DIExpression()), !dbg !328
  %6 = load ptr, ptr %stdout, align 8, !dbg !330
  %"struct member ptr12" = bitcast ptr %out to ptr, !dbg !330
  %selected = load ptr, ptr %"struct member ptr12", align 8, !dbg !330
  %"struct member ptr8" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !330
  %selected9 = load i64, ptr %"struct member ptr8", align 8, !dbg !330
  %cast = trunc i64 %selected9 to i32, !dbg !330
  %7 = call i8 @write_file(ptr %__apoc_internal_context7, ptr %6, ptr %selected, i32 %cast), !dbg !330
  ret void, !dbg !331
}

define void @"print!@string!@-"(ptr %__apoc_internal_context, %string %format, ...) !dbg !332 {
entry:
  %__apoc_internal_context5 = alloca %__Internal_Context, align 8
  %stdout = alloca ptr, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %out = alloca %string, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %list = alloca ptr, align 8
  %format2 = alloca %string, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %format2, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %format2, metadata !333, metadata !DIExpression()), !dbg !334
  store %string %format, ptr %format2, align 8
  store i64 0, ptr %list, align 8, !dbg !335
  store i64 0, ptr %list, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %list, metadata !336, metadata !DIExpression()), !dbg !335
  %0 = load ptr, ptr %list, align 8, !dbg !337
  call void @llvm.va_start(ptr %list), !dbg !337
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false), !dbg !338
  %return_value_member8 = bitcast ptr %__apoc_internal_context3 to ptr, !dbg !338
  store ptr %out, ptr %return_value_member8, align 8, !dbg !338
  %1 = load %string, ptr %format2, align 8, !dbg !338
  %2 = load ptr, ptr %list, align 8, !dbg !338
  call void @parse_format(ptr %__apoc_internal_context3, %string %1, ptr %2), !dbg !338
  call void @llvm.dbg.declare(metadata ptr %out, metadata !339, metadata !DIExpression()), !dbg !338
  %3 = load ptr, ptr %list, align 8, !dbg !340
  call void @llvm.va_end(ptr %list), !dbg !340
  %4 = call ptr @get_stdout(ptr %__apoc_internal_context4), !dbg !341
  store i64 0, ptr %stdout, align 8, !dbg !341
  store ptr %4, ptr %stdout, align 8, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %stdout, metadata !342, metadata !DIExpression()), !dbg !341
  %5 = load ptr, ptr %stdout, align 8, !dbg !343
  %"struct member ptr9" = bitcast ptr %out to ptr, !dbg !343
  %selected = load ptr, ptr %"struct member ptr9", align 8, !dbg !343
  %"struct member ptr6" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !343
  %selected7 = load i64, ptr %"struct member ptr6", align 8, !dbg !343
  %cast = trunc i64 %selected7 to i32, !dbg !343
  %6 = call i8 @write_file(ptr %__apoc_internal_context5, ptr %5, ptr %selected, i32 %cast), !dbg !343
  ret void, !dbg !344
}

define void @copy(ptr %__apoc_internal_context, ptr %dst, ptr %src, i64 %size) !dbg !345 {
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
  call void @llvm.dbg.declare(metadata ptr %dst2, metadata !348, metadata !DIExpression()), !dbg !349
  store ptr %dst, ptr %dst2, align 8
  store i64 0, ptr %src3, align 8
  call void @llvm.dbg.declare(metadata ptr %src3, metadata !350, metadata !DIExpression()), !dbg !349
  store ptr %src, ptr %src3, align 8
  store i64 0, ptr %size4, align 8
  call void @llvm.dbg.declare(metadata ptr %size4, metadata !351, metadata !DIExpression()), !dbg !349
  store i64 %size, ptr %size4, align 8
  %0 = load ptr, ptr %dst2, align 8, !dbg !352
  store i64 0, ptr %a0, align 8, !dbg !352
  store ptr %0, ptr %a0, align 8, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %a0, metadata !353, metadata !DIExpression()), !dbg !352
  %1 = load ptr, ptr %src3, align 8, !dbg !354
  store i64 0, ptr %a1, align 8, !dbg !354
  store ptr %1, ptr %a1, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !355, metadata !DIExpression()), !dbg !354
  store i64 0, ptr %i, align 8, !dbg !356
  store i64 0, ptr %i, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %i, metadata !357, metadata !DIExpression()), !dbg !358
  br label %for.cond, !dbg !356

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 8, !dbg !356
  %3 = load i64, ptr %size4, align 8, !dbg !356
  %4 = icmp slt i64 %2, %3, !dbg !356
  br i1 %4, label %for.body, label %for.aftr, !dbg !356

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %i, align 8, !dbg !359
  %ptr_load = load ptr, ptr %a1, align 8, !dbg !359
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5, !dbg !359
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !359
  %6 = load i64, ptr %i, align 8, !dbg !359
  %ptr_load5 = load ptr, ptr %a0, align 8, !dbg !359
  %elem_ptr6 = getelementptr i8, ptr %ptr_load5, i64 %6, !dbg !359
  store i8 %indexed_val, ptr %elem_ptr6, align 1, !dbg !359
  br label %for.incr, !dbg !360

for.aftr:                                         ; preds = %for.cond
  ret void, !dbg !361

for.incr:                                         ; preds = %for.body
  %7 = load i64, ptr %i, align 8, !dbg !360
  %8 = add i64 %7, 1, !dbg !360
  store i64 %8, ptr %i, align 8, !dbg !360
  br label %for.cond, !dbg !360
}

define i64 @len(ptr %__apoc_internal_context, ptr %text) !dbg !362 {
entry:
  %result = alloca i64, align 8
  %text2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %text2, align 8
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !365, metadata !DIExpression()), !dbg !366
  store ptr %text, ptr %text2, align 8
  store i64 0, ptr %result, align 8, !dbg !367
  store i64 0, ptr %result, align 8, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %result, metadata !368, metadata !DIExpression()), !dbg !367
  store i64 0, ptr %result, align 8, !dbg !369
  br label %for.cond, !dbg !369

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i64, ptr %result, align 8, !dbg !369
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !369
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !369
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !369
  %1 = icmp ne i8 %indexed_val, 0, !dbg !369
  br i1 %1, label %for.body, label %for.aftr, !dbg !369

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %result, align 8, !dbg !370
  %3 = add i64 %2, 1, !dbg !370
  store i64 %3, ptr %result, align 8, !dbg !370
  br label %for.cond, !dbg !370

for.aftr:                                         ; preds = %for.cond
  %4 = load i64, ptr %result, align 8, !dbg !371
  ret i64 %4, !dbg !371
}

declare i32 @GetLastError()

declare ptr @CreateFileA(ptr, i64, i32, ptr, i64, i64, ptr)

declare i8 @WriteFile(ptr, ptr, i32, ptr, ptr)

declare ptr @GetStdHandle(i32)

define ptr @open_file(ptr %__apoc_internal_context, ptr %f_name, i64 %access) !dbg !372 {
entry:
  %file = alloca ptr, align 8
  %win_access = alloca i64, align 8
  %access3 = alloca i64, align 8
  %f_name2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %f_name2, align 8
  call void @llvm.dbg.declare(metadata ptr %f_name2, metadata !375, metadata !DIExpression()), !dbg !376
  store ptr %f_name, ptr %f_name2, align 8
  store i64 0, ptr %access3, align 8
  call void @llvm.dbg.declare(metadata ptr %access3, metadata !377, metadata !DIExpression()), !dbg !376
  store i64 %access, ptr %access3, align 8
  store i64 0, ptr %win_access, align 8, !dbg !378
  store i64 0, ptr %win_access, align 8, !dbg !378
  call void @llvm.dbg.declare(metadata ptr %win_access, metadata !379, metadata !DIExpression()), !dbg !378
  %0 = load i64, ptr %access3, align 8, !dbg !380
  %1 = and i64 %0, 1, !dbg !380
  %cast = trunc i64 %1 to i8, !dbg !380
  %boolean_expr = trunc i8 %cast to i1, !dbg !380
  br i1 %boolean_expr, label %if.true, label %if.aftr11, !dbg !381

if.true:                                          ; preds = %entry
  %2 = load i64, ptr %win_access, align 8, !dbg !382
  %3 = or i64 %2, 1179785, !dbg !382
  store i64 %3, ptr %win_access, align 8, !dbg !382
  br label %if.aftr, !dbg !380

if.aftr:                                          ; preds = %if.true
  %4 = load i64, ptr %access3, align 8, !dbg !383
  %5 = and i64 %4, 1, !dbg !383
  %cast4 = trunc i64 %5 to i8, !dbg !383
  %boolean_expr5 = trunc i8 %cast4 to i1, !dbg !383
  br i1 %boolean_expr5, label %if.true6, label %if.aftr11, !dbg !381

if.true6:                                         ; preds = %if.aftr
  %6 = load i64, ptr %win_access, align 8, !dbg !384
  %7 = or i64 %6, 1179926, !dbg !384
  store i64 %7, ptr %win_access, align 8, !dbg !384
  br label %if.aftr7, !dbg !383

if.aftr7:                                         ; preds = %if.true6
  %8 = load i64, ptr %access3, align 8, !dbg !385
  %9 = and i64 %8, 2, !dbg !385
  %cast8 = trunc i64 %9 to i8, !dbg !385
  %boolean_expr9 = trunc i8 %cast8 to i1, !dbg !385
  br i1 %boolean_expr9, label %if.true10, label %if.aftr11, !dbg !381

if.true10:                                        ; preds = %if.aftr7
  %10 = load i64, ptr %win_access, align 8, !dbg !386
  %11 = or i64 %10, 1179808, !dbg !386
  store i64 %11, ptr %win_access, align 8, !dbg !386
  br label %if.aftr11, !dbg !385

if.aftr11:                                        ; preds = %entry, %if.aftr, %if.aftr7, %if.true10
  %12 = load ptr, ptr %f_name2, align 8, !dbg !387
  %13 = load i64, ptr %win_access, align 8, !dbg !387
  %14 = call ptr @CreateFileA(ptr %12, i64 %13, i32 0, ptr null, i64 4, i64 32, ptr null), !dbg !387
  store i64 0, ptr %file, align 8, !dbg !387
  store ptr %14, ptr %file, align 8, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %file, metadata !388, metadata !DIExpression()), !dbg !387
  %15 = load ptr, ptr %file, align 8, !dbg !389
  ret ptr %15, !dbg !389
}

define i8 @write_file(ptr %__apoc_internal_context, ptr %file, ptr %data, i32 %size) !dbg !390 {
entry:
  %result = alloca i8, align 1
  %written = alloca i32, align 4
  %size4 = alloca i32, align 4
  %data3 = alloca ptr, align 8
  %file2 = alloca ptr, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %file2, align 8
  call void @llvm.dbg.declare(metadata ptr %file2, metadata !394, metadata !DIExpression()), !dbg !395
  store ptr %file, ptr %file2, align 8
  store i64 0, ptr %data3, align 8
  call void @llvm.dbg.declare(metadata ptr %data3, metadata !396, metadata !DIExpression()), !dbg !395
  store ptr %data, ptr %data3, align 8
  store i32 0, ptr %size4, align 4
  call void @llvm.dbg.declare(metadata ptr %size4, metadata !397, metadata !DIExpression()), !dbg !395
  store i32 %size, ptr %size4, align 4
  store i32 0, ptr %written, align 4, !dbg !398
  store i64 0, ptr %written, align 4, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %written, metadata !399, metadata !DIExpression()), !dbg !398
  %0 = load ptr, ptr %file2, align 8, !dbg !400
  %1 = load ptr, ptr %data3, align 8, !dbg !400
  %2 = load i32, ptr %size4, align 4, !dbg !400
  %3 = load i32, ptr %written, align 4, !dbg !400
  %4 = call i8 @WriteFile(ptr %0, ptr %1, i32 %2, ptr %written, ptr null), !dbg !400
  %5 = load i32, ptr %written, align 4, !dbg !401
  %6 = load i32, ptr %size4, align 4, !dbg !401
  %7 = icmp eq i32 %5, %6, !dbg !401
  store i8 0, ptr %result, align 1, !dbg !401
  store i1 %7, ptr %result, align 1, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %result, metadata !402, metadata !DIExpression()), !dbg !401
  %8 = load i8, ptr %result, align 1, !dbg !403
  ret i8 %8, !dbg !403
}

define ptr @get_stdout(ptr %__apoc_internal_context) !dbg !404 {
entry:
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  %0 = call ptr @GetStdHandle(i32 -11), !dbg !407
  ret ptr %0, !dbg !407
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

define ptr @mem_alloc(ptr %__apoc_internal_context, i64 %size) !dbg !408 {
entry:
  %result = alloca ptr, align 8
  %size2 = alloca i64, align 8
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  store i64 0, ptr %size2, align 8
  call void @llvm.dbg.declare(metadata ptr %size2, metadata !412, metadata !DIExpression()), !dbg !413
  store i64 %size, ptr %size2, align 8
  %0 = load i64, ptr %size2, align 8, !dbg !414
  %1 = call ptr @malloc(i64 %0), !dbg !414
  store i64 0, ptr %result, align 8, !dbg !414
  store ptr %1, ptr %result, align 8, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %result, metadata !415, metadata !DIExpression()), !dbg !414
  %2 = load ptr, ptr %result, align 8, !dbg !416
  %3 = load i64, ptr %size2, align 8, !dbg !416
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3), !dbg !416
  %5 = load ptr, ptr %result, align 8, !dbg !417
  ret ptr %5, !dbg !417
}

; Function Attrs: alwaysinline
define i8 @"overload[]"(%string %str, i64 %index) #0 !dbg !418 {
entry:
  %index2 = alloca i64, align 8
  %str1 = alloca %string, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !421, metadata !DIExpression()), !dbg !422
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %index2, align 8
  call void @llvm.dbg.declare(metadata ptr %index2, metadata !423, metadata !DIExpression()), !dbg !422
  store i64 %index, ptr %index2, align 8
  %0 = load i64, ptr %index2, align 8, !dbg !424
  %"struct member ptr3" = bitcast ptr %str1 to ptr, !dbg !424
  %ptr_load = load ptr, ptr %"struct member ptr3", align 8, !dbg !424
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !424
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !424
  ret i8 %indexed_val, !dbg !424
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline
define %string @"overload+\8Cw\AD\94\EE8"(%string %str, ptr %text) #0 !dbg !425 {
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
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !428, metadata !DIExpression()), !dbg !429
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 8
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !430, metadata !DIExpression()), !dbg !429
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %out, i8 0, i64 16, i1 false), !dbg !431
  call void @llvm.dbg.declare(metadata ptr %out, metadata !432, metadata !DIExpression()), !dbg !431
  %0 = load ptr, ptr %text2, align 8, !dbg !433
  %1 = call i64 @len(ptr %__apoc_internal_context, ptr %0), !dbg !433
  store i64 0, ptr %text_len, align 8, !dbg !433
  store i64 %1, ptr %text_len, align 8, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !434, metadata !DIExpression()), !dbg !433
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !435
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !435
  %2 = load i64, ptr %text_len, align 8, !dbg !435
  %3 = add i64 %selected, %2, !dbg !435
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !435
  store i64 %3, ptr %"struct member ptr3", align 8, !dbg !435
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !436
  %selected6 = load i64, ptr %"struct member ptr5", align 8, !dbg !436
  %4 = call ptr @mem_alloc(ptr %__apoc_internal_context4, i64 %selected6), !dbg !436
  %"struct member ptr724" = bitcast ptr %out to ptr, !dbg !436
  store ptr %4, ptr %"struct member ptr724", align 8, !dbg !436
  %"struct member ptr925" = bitcast ptr %out to ptr, !dbg !437
  %selected10 = load ptr, ptr %"struct member ptr925", align 8, !dbg !437
  %"struct member ptr1126" = bitcast ptr %str1 to ptr, !dbg !437
  %selected12 = load ptr, ptr %"struct member ptr1126", align 8, !dbg !437
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !437
  %selected14 = load i64, ptr %"struct member ptr13", align 8, !dbg !437
  call void @copy(ptr %__apoc_internal_context8, ptr %selected10, ptr %selected12, i64 %selected14), !dbg !437
  %"struct member ptr16" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !438
  %selected17 = load i64, ptr %"struct member ptr16", align 8, !dbg !438
  %"struct member ptr1827" = bitcast ptr %out to ptr, !dbg !438
  %ptr_load = load ptr, ptr %"struct member ptr1827", align 8, !dbg !438
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected17, !dbg !438
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !438
  %"struct member ptr19" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !438
  %selected20 = load i64, ptr %"struct member ptr19", align 8, !dbg !438
  %"struct member ptr2128" = bitcast ptr %out to ptr, !dbg !438
  %ptr_load22 = load ptr, ptr %"struct member ptr2128", align 8, !dbg !438
  %elem_ptr23 = getelementptr i8, ptr %ptr_load22, i64 %selected20, !dbg !438
  %5 = load ptr, ptr %text2, align 8, !dbg !438
  %6 = load i64, ptr %text_len, align 8, !dbg !438
  call void @copy(ptr %__apoc_internal_context15, ptr %elem_ptr23, ptr %5, i64 %6), !dbg !438
  %7 = load %string, ptr %out, align 8, !dbg !439
  ret %string %7, !dbg !439
}

; Function Attrs: alwaysinline
define void @"overload[x]="(ptr %str, ptr %text) #0 !dbg !440 {
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
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !443, metadata !DIExpression()), !dbg !444
  store ptr %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 8
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !445, metadata !DIExpression()), !dbg !444
  store ptr %text, ptr %text2, align 8
  %0 = load ptr, ptr %text2, align 8, !dbg !446
  %1 = call i64 @len(ptr %__apoc_internal_context, ptr %0), !dbg !446
  store i64 0, ptr %text_len, align 8, !dbg !446
  store i64 %1, ptr %text_len, align 8, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !447, metadata !DIExpression()), !dbg !446
  %2 = load i64, ptr %text_len, align 8, !dbg !448
  %"derefrence struct" = load ptr, ptr %str1, align 8, !dbg !448
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1, !dbg !448
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !448
  %3 = or i64 %2, %selected, !dbg !448
  %4 = and i64 %3, -4294967296, !dbg !448
  %5 = icmp eq i64 %4, 0, !dbg !448
  br i1 %5, label %6, label %11, !dbg !448

6:                                                ; preds = %entry
  %7 = trunc i64 %selected to i32, !dbg !448
  %8 = trunc i64 %2 to i32, !dbg !448
  %9 = udiv i32 %8, %7, !dbg !448
  %10 = zext i32 %9 to i64, !dbg !448
  br label %22, !dbg !448

11:                                               ; preds = %entry
  %12 = or i64 %2, %selected, !dbg !448
  %13 = and i64 %12, -4294967296, !dbg !448
  %14 = icmp eq i64 %13, 0, !dbg !448
  br i1 %14, label %15, label %20, !dbg !448

15:                                               ; preds = %11
  %16 = trunc i64 %selected to i32, !dbg !448
  %17 = trunc i64 %2 to i32, !dbg !448
  %18 = udiv i32 %17, %16, !dbg !448
  %19 = zext i32 %18 to i64, !dbg !448
  br label %22, !dbg !448

20:                                               ; preds = %11
  %21 = sdiv i64 %2, %selected, !dbg !448
  br label %22, !dbg !448

22:                                               ; preds = %15, %20, %6
  %23 = phi i64 [ %10, %6 ], [ %19, %15 ], [ %21, %20 ], !dbg !448
  store i64 0, ptr %times, align 8, !dbg !448
  store i64 %23, ptr %times, align 8, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %times, metadata !449, metadata !DIExpression()), !dbg !448
  %24 = load ptr, ptr %str1, align 8, !dbg !450
  store i64 0, ptr %current, align 8, !dbg !450
  store ptr %24, ptr %current, align 8, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %current, metadata !451, metadata !DIExpression()), !dbg !450
  store i64 0, ptr %i, align 8, !dbg !452
  store i64 0, ptr %i, align 8, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %i, metadata !453, metadata !DIExpression()), !dbg !454
  br label %for.cond, !dbg !452

for.cond:                                         ; preds = %if.aftr, %22
  %25 = load i64, ptr %i, align 8, !dbg !452
  %26 = sub i64 %25, 1, !dbg !452
  %27 = load i64, ptr %times, align 8, !dbg !452
  %28 = icmp slt i64 %26, %27, !dbg !452
  br i1 %28, label %for.body, label %for.aftr, !dbg !452

for.body:                                         ; preds = %for.cond
  %29 = load i64, ptr %text_len, align 8, !dbg !455
  store i64 0, ptr %copy_size, align 8, !dbg !455
  store i64 %29, ptr %copy_size, align 8, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %copy_size, metadata !456, metadata !DIExpression()), !dbg !455
  %30 = load i64, ptr %copy_size, align 8, !dbg !457
  %31 = icmp sgt i64 %30, 256, !dbg !457
  br i1 %31, label %if.true, label %if.aftr, !dbg !458

for.aftr:                                         ; preds = %for.cond
  ret void, !dbg !459

if.true:                                          ; preds = %for.body
  store i64 256, ptr %copy_size, align 8, !dbg !460
  br label %if.aftr, !dbg !457

if.aftr:                                          ; preds = %for.body, %if.true
  %"derefrence struct4" = load ptr, ptr %current, align 8, !dbg !461
  %"struct member ptr5" = getelementptr inbounds %String_Builder, ptr %"derefrence struct4", i32 0, i32 1, !dbg !461
  %selected6 = load i64, ptr %"struct member ptr5", align 8, !dbg !461
  %"derefrence struct7" = load ptr, ptr %current, align 8, !dbg !461
  %"struct member ptr827" = bitcast ptr %"derefrence struct7" to ptr, !dbg !461
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr827", i64 0, i64 %selected6, !dbg !461
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !461
  %"derefrence struct9" = load ptr, ptr %current, align 8, !dbg !461
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %"derefrence struct9", i32 0, i32 1, !dbg !461
  %selected11 = load i64, ptr %"struct member ptr10", align 8, !dbg !461
  %"derefrence struct12" = load ptr, ptr %current, align 8, !dbg !461
  %"struct member ptr1328" = bitcast ptr %"derefrence struct12" to ptr, !dbg !461
  %elem_ptr14 = getelementptr [256 x i8], ptr %"struct member ptr1328", i64 0, i64 %selected11, !dbg !461
  %32 = load i64, ptr %i, align 8, !dbg !461
  %33 = mul i64 %32, 256, !dbg !461
  %ptr_load = load ptr, ptr %text2, align 8, !dbg !461
  %elem_ptr15 = getelementptr i8, ptr %ptr_load, i64 %33, !dbg !461
  %indexed_val16 = load i8, ptr %elem_ptr15, align 1, !dbg !461
  %34 = load i64, ptr %i, align 8, !dbg !461
  %35 = mul i64 %34, 256, !dbg !461
  %ptr_load17 = load ptr, ptr %text2, align 8, !dbg !461
  %elem_ptr18 = getelementptr i8, ptr %ptr_load17, i64 %35, !dbg !461
  %36 = load i64, ptr %copy_size, align 8, !dbg !461
  call void @copy(ptr %__apoc_internal_context3, ptr %elem_ptr14, ptr %elem_ptr18, i64 %36), !dbg !461
  %"derefrence struct19" = load ptr, ptr %current, align 8, !dbg !462
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %"derefrence struct19", i32 0, i32 1, !dbg !462
  %selected21 = load i64, ptr %"struct member ptr20", align 8, !dbg !462
  %37 = load i64, ptr %copy_size, align 8, !dbg !462
  %38 = add i64 %selected21, %37, !dbg !462
  %"derefrence struct22" = load ptr, ptr %current, align 8, !dbg !462
  %"struct member ptr23" = getelementptr inbounds %String_Builder, ptr %"derefrence struct22", i32 0, i32 1, !dbg !462
  store i64 %38, ptr %"struct member ptr23", align 8, !dbg !462
  %39 = load i64, ptr %text_len, align 8, !dbg !463
  %40 = sub i64 %39, 256, !dbg !463
  store i64 %40, ptr %text_len, align 8, !dbg !463
  %"derefrence struct24" = load ptr, ptr %current, align 8, !dbg !464
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 2, !dbg !464
  %selected26 = load ptr, ptr %"struct member ptr25", align 8, !dbg !464
  store ptr %selected26, ptr %current, align 8, !dbg !464
  %41 = load i64, ptr %i, align 8, !dbg !458
  %42 = add i64 %41, 1, !dbg !458
  store i64 %42, ptr %i, align 8, !dbg !458
  br label %for.cond, !dbg !458
}

; Function Attrs: alwaysinline
define void @"overload[x]=.9"(ptr %str, i8 %c) #0 !dbg !465 {
entry:
  %__apoc_internal_context = alloca %__Internal_Context, align 8
  %to_put = alloca ptr, align 8
  %c2 = alloca i8, align 1
  %str1 = alloca ptr, align 8
  store i64 0, ptr %str1, align 8
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !468, metadata !DIExpression()), !dbg !469
  store ptr %str, ptr %str1, align 8
  store i8 0, ptr %c2, align 1
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !470, metadata !DIExpression()), !dbg !469
  store i8 %c, ptr %c2, align 1
  %0 = load ptr, ptr %str1, align 8, !dbg !471
  store i64 0, ptr %to_put, align 8, !dbg !471
  store ptr %0, ptr %to_put, align 8, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %to_put, metadata !472, metadata !DIExpression()), !dbg !471
  br label %for.cond, !dbg !473

for.cond:                                         ; preds = %if.true11, %if.true, %for.body, %entry
  %1 = load ptr, ptr %to_put, align 8, !dbg !473
  %2 = icmp ne ptr %1, null, !dbg !473
  %"derefrence struct" = load ptr, ptr %to_put, align 8, !dbg !473
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %"derefrence struct", i32 0, i32 1, !dbg !473
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !473
  %3 = icmp eq i64 %selected, 256, !dbg !473
  %"&&" = and i1 %2, %3, !dbg !473
  br i1 %"&&", label %for.body, label %for.aftr, !dbg !473

for.body:                                         ; preds = %for.cond
  %"derefrence struct3" = load ptr, ptr %to_put, align 8, !dbg !474
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %"derefrence struct3", i32 0, i32 2, !dbg !474
  %selected5 = load ptr, ptr %"struct member ptr4", align 8, !dbg !474
  %4 = icmp eq ptr %selected5, null, !dbg !474
  br i1 %4, label %if.true, label %for.cond, !dbg !475

for.aftr:                                         ; preds = %for.cond
  %5 = load i8, ptr %c2, align 1, !dbg !476
  %"derefrence struct16" = load ptr, ptr %to_put, align 8, !dbg !476
  %"struct member ptr17" = getelementptr inbounds %String_Builder, ptr %"derefrence struct16", i32 0, i32 1, !dbg !476
  %selected18 = load i64, ptr %"struct member ptr17", align 8, !dbg !476
  %"derefrence struct19" = load ptr, ptr %to_put, align 8, !dbg !476
  %"struct member ptr2026" = bitcast ptr %"derefrence struct19" to ptr, !dbg !476
  %elem_ptr = getelementptr [256 x i8], ptr %"struct member ptr2026", i64 0, i64 %selected18, !dbg !476
  store i8 %5, ptr %elem_ptr, align 1, !dbg !476
  %"derefrence struct21" = load ptr, ptr %to_put, align 8, !dbg !477
  %"struct member ptr22" = getelementptr inbounds %String_Builder, ptr %"derefrence struct21", i32 0, i32 1, !dbg !477
  %selected23 = load i64, ptr %"struct member ptr22", align 8, !dbg !477
  %6 = add i64 %selected23, 1, !dbg !477
  %"derefrence struct24" = load ptr, ptr %to_put, align 8, !dbg !477
  %"struct member ptr25" = getelementptr inbounds %String_Builder, ptr %"derefrence struct24", i32 0, i32 1, !dbg !477
  store i64 %6, ptr %"struct member ptr25", align 8, !dbg !477
  ret void, !dbg !478

if.true:                                          ; preds = %for.body
  %7 = call ptr @mem_alloc(ptr %__apoc_internal_context, i64 272), !dbg !479
  %"derefrence struct6" = load ptr, ptr %to_put, align 8, !dbg !479
  %"struct member ptr7" = getelementptr inbounds %String_Builder, ptr %"derefrence struct6", i32 0, i32 2, !dbg !479
  store ptr %7, ptr %"struct member ptr7", align 8, !dbg !479
  %"derefrence struct8" = load ptr, ptr %to_put, align 8, !dbg !480
  %"struct member ptr9" = getelementptr inbounds %String_Builder, ptr %"derefrence struct8", i32 0, i32 1, !dbg !480
  %selected10 = load i64, ptr %"struct member ptr9", align 8, !dbg !480
  %8 = icmp eq i64 %selected10, 256, !dbg !480
  br i1 %8, label %if.true11, label %for.cond, !dbg !475

if.true11:                                        ; preds = %if.true
  %"derefrence struct13" = load ptr, ptr %to_put, align 8, !dbg !481
  %"struct member ptr14" = getelementptr inbounds %String_Builder, ptr %"derefrence struct13", i32 0, i32 2, !dbg !481
  %selected15 = load ptr, ptr %"struct member ptr14", align 8, !dbg !481
  store ptr %selected15, ptr %to_put, align 8, !dbg !481
  br label %for.cond, !dbg !480
}

; Function Attrs: alwaysinline
define i8 @overload(%string %str, ptr %text) #0 !dbg !482 {
entry:
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %__apoc_internal_context = alloca %__Internal_Context, align 8
  %str2 = alloca %string, align 8
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !485, metadata !DIExpression()), !dbg !486
  store %string %str, ptr %str1, align 8
  store i64 0, ptr %text2, align 8
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !487, metadata !DIExpression()), !dbg !486
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %str2, i8 0, i64 16, i1 false), !dbg !488
  %0 = load ptr, ptr %text2, align 8, !dbg !488
  %1 = bitcast ptr %str2 to ptr, !dbg !488
  store ptr %0, ptr %1, align 8, !dbg !488
  %2 = load ptr, ptr %text2, align 8, !dbg !488
  %3 = call i64 @len(ptr %__apoc_internal_context, ptr %2), !dbg !488
  %4 = getelementptr inbounds %string, ptr %str2, i32 0, i32 1, !dbg !488
  store i64 %3, ptr %4, align 8, !dbg !488
  call void @llvm.dbg.declare(metadata ptr %str2, metadata !489, metadata !DIExpression()), !dbg !488
  %5 = load %string, ptr %str1, align 8, !dbg !490
  %6 = load %string, ptr %str2, align 8, !dbg !490
  %7 = call i8 @compare(ptr %__apoc_internal_context3, %string %5, %string %6), !dbg !490
  ret i8 %7, !dbg !490
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!27, !28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STRING_BUFFER_SIZE", scope: !2, file: !2, line: 2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./String.apoc", directory: "E:\\C_Projects\\Apocalypse\\Standard")
!3 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression())
!5 = distinct !DIGlobalVariable(name: "DELETE", scope: !6, file: !6, line: 58, type: !3, isLocal: true, isDefinition: true)
!6 = !DIFile(filename: "./Windows.apoc", directory: "E:\\C_Projects\\Apocalypse\\Standard")
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "READ_CONTROL", scope: !6, file: !6, line: 59, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "WRITE_DAC", scope: !6, file: !6, line: 60, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "WRITE_OWNER", scope: !6, file: !6, line: 61, type: !3, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "SYNCHRONIZE", scope: !6, file: !6, line: 62, type: !3, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "true", scope: !17, file: !17, line: 2, type: !18, isLocal: true, isDefinition: true)
!17 = !DIFile(filename: "./Basic.apoc", directory: "E:\\C_Projects\\Apocalypse\\Standard")
!18 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "false", scope: !17, file: !17, line: 3, type: !18, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "null", scope: !17, file: !17, line: 4, type: !23, isLocal: true, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !26)
!25 = !DIFile(filename: "Test.apoc", directory: "E:\\C_Projects\\Apocalypse")
!26 = !{!0, !4, !7, !9, !11, !13, !15, !19, !21}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 2, !"CodeView", i32 1}
!29 = distinct !DISubprogram(name: "main", scope: !25, file: !25, line: 5, type: !30, scopeLine: 6, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!32}
!32 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!33 = !{}
!34 = !DILocation(line: 7, column: 2, scope: !29)
!35 = !DILocalVariable(name: "result", scope: !29, file: !25, line: 7, type: !36, align: 2048)
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "String_Builder", scope: !2, file: !2, line: 10, size: 2176, align: 2048, elements: !37)
!37 = !{!38, !43, !44}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2, file: !2, line: 12, baseType: !39, size: 2048, align: 8)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, align: 8, elements: !41)
!40 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!41 = !{!42}
!42 = !DISubrange(count: 256, lowerBound: 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2, file: !2, line: 13, baseType: !3, size: 64, align: 64, offset: 2048)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2, file: !2, line: 14, baseType: !45, size: 64, align: 64, offset: 2112)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!46 = !DILocation(line: 8, column: 2, scope: !29)
!47 = !DILocation(line: 9, column: 2, scope: !29)
!48 = !DILocalVariable(name: "str", scope: !29, file: !25, line: 9, type: !49, align: 64)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !2, file: !2, line: 4, size: 128, align: 64, elements: !50)
!50 = !{!51, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !2, file: !2, line: 6, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2, file: !2, line: 7, baseType: !3, size: 64, align: 64, offset: 64)
!54 = !DILocation(line: 11, column: 7, scope: !29)
!55 = !DILocation(line: 12, column: 7, scope: !29)
!56 = !DILocation(line: 13, column: 5, scope: !29)
!57 = distinct !DISubprogram(name: "builder_to_string", scope: !2, file: !2, line: 17, type: !58, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !45}
!60 = !DILocalVariable(name: "builder", arg: 1, scope: !57, file: !2, line: 17, type: !45)
!61 = !DILocation(line: 17, scope: !57)
!62 = !DILocation(line: 19, column: 2, scope: !57)
!63 = !DILocalVariable(name: "out", scope: !57, file: !2, line: 19, type: !49, align: 64)
!64 = !DILocation(line: 20, column: 2, scope: !57)
!65 = !DILocalVariable(name: "out_len", scope: !57, file: !2, line: 20, type: !3, align: 64)
!66 = !DILocation(line: 21, column: 2, scope: !57)
!67 = !DILocalVariable(name: "current", scope: !57, file: !2, line: 21, type: !45, align: 64)
!68 = !DILocation(line: 22, column: 2, scope: !57)
!69 = !DILocalVariable(name: "i", scope: !57, file: !2, line: 22, type: !3, align: 64)
!70 = !DILocation(line: 22, column: 6, scope: !57)
!71 = !DILocation(line: 23, column: 3, scope: !57)
!72 = !DILocation(line: 24, column: 3, scope: !57)
!73 = !DILocation(line: 25, column: 2, scope: !57)
!74 = !DILocation(line: 26, column: 2, scope: !57)
!75 = !DILocation(line: 27, column: 2, scope: !57)
!76 = !DILocation(line: 28, column: 2, scope: !57)
!77 = !DILocation(line: 30, column: 2, scope: !57)
!78 = !DILocalVariable(name: "times", scope: !57, file: !2, line: 30, type: !3, align: 64)
!79 = !DILocation(line: 31, column: 2, scope: !57)
!80 = !DILocalVariable(name: "i", scope: !57, file: !2, line: 31, type: !3, align: 64)
!81 = !DILocation(line: 31, column: 6, scope: !57)
!82 = !DILocation(line: 32, column: 7, scope: !57)
!83 = !DILocation(line: 33, column: 3, scope: !57)
!84 = !DILocation(line: 34, column: 3, scope: !57)
!85 = !DILocation(line: 35, column: 2, scope: !57)
!86 = !DILocation(line: 36, column: 6, scope: !57)
!87 = !DILocation(line: 37, column: 2, scope: !57)
!88 = !DILocation(line: 38, column: 5, scope: !57)
!89 = distinct !DISubprogram(name: "init_builder", scope: !2, file: !2, line: 41, type: !90, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !52}
!92 = !DILocalVariable(name: "text", arg: 1, scope: !89, file: !2, line: 41, type: !52)
!93 = !DILocation(line: 41, scope: !89)
!94 = !DILocation(line: 43, column: 2, scope: !89)
!95 = !DILocalVariable(name: "out", scope: !89, file: !2, line: 43, type: !36, align: 2048)
!96 = !DILocation(line: 44, column: 2, scope: !89)
!97 = !DILocalVariable(name: "current", scope: !89, file: !2, line: 44, type: !45, align: 64)
!98 = !DILocation(line: 45, column: 2, scope: !89)
!99 = !DILocalVariable(name: "times", scope: !89, file: !2, line: 45, type: !3, align: 64)
!100 = !DILocation(line: 46, column: 2, scope: !89)
!101 = !DILocalVariable(name: "i", scope: !89, file: !2, line: 46, type: !3, align: 64)
!102 = !DILocation(line: 46, column: 6, scope: !89)
!103 = !DILocation(line: 47, column: 3, scope: !89)
!104 = !DILocation(line: 48, column: 3, scope: !89)
!105 = !DILocation(line: 49, column: 3, scope: !89)
!106 = !DILocation(line: 55, column: 2, scope: !89)
!107 = !DILocation(line: 56, column: 5, scope: !89)
!108 = !DILocation(line: 50, column: 4, scope: !89)
!109 = !DILocation(line: 51, column: 4, scope: !89)
!110 = !DILocation(line: 52, column: 4, scope: !89)
!111 = !DILocation(line: 53, column: 4, scope: !89)
!112 = !DILocation(line: 54, column: 3, scope: !89)
!113 = distinct !DISubprogram(name: "compare", scope: !2, file: !2, line: 111, type: !114, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!114 = !DISubroutineType(types: !115)
!115 = !{!18, !49, !49}
!116 = !DILocalVariable(name: "str1", arg: 1, scope: !113, file: !2, line: 111, type: !49)
!117 = !DILocation(line: 111, scope: !113)
!118 = !DILocalVariable(name: "str2", arg: 2, scope: !113, file: !2, line: 111, type: !49)
!119 = !DILocation(line: 113, column: 2, scope: !113)
!120 = !DILocation(line: 116, column: 2, scope: !113)
!121 = !DILocation(line: 114, column: 6, scope: !113)
!122 = !DILocalVariable(name: "i", scope: !113, file: !2, line: 116, type: !3, align: 64)
!123 = !DILocation(line: 116, column: 6, scope: !113)
!124 = !DILocation(line: 117, column: 3, scope: !113)
!125 = !DILocation(line: 118, column: 5, scope: !113)
!126 = !DILocation(line: 117, column: 38, scope: !113)
!127 = distinct !DISubprogram(name: "to_string", scope: !2, file: !2, line: 121, type: !90, scopeLine: 122, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!128 = !DILocalVariable(name: "text", arg: 1, scope: !127, file: !2, line: 121, type: !52)
!129 = !DILocation(line: 121, scope: !127)
!130 = !DILocation(line: 123, column: 2, scope: !127)
!131 = !DILocalVariable(name: "text_len", scope: !127, file: !2, line: 123, type: !3, align: 64)
!132 = !DILocation(line: 124, column: 2, scope: !127)
!133 = !DILocalVariable(name: "allocated", scope: !127, file: !2, line: 124, type: !23, align: 64)
!134 = !DILocation(line: 125, column: 6, scope: !127)
!135 = !DILocation(line: 126, column: 2, scope: !127)
!136 = !DILocalVariable(name: "str", scope: !127, file: !2, line: 126, type: !49, align: 64)
!137 = !DILocation(line: 127, column: 5, scope: !127)
!138 = distinct !DISubprogram(name: "terminate_string", scope: !2, file: !2, line: 130, type: !139, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !49}
!141 = !DILocalVariable(name: "str", arg: 1, scope: !138, file: !2, line: 130, type: !49)
!142 = !DILocation(line: 130, scope: !138)
!143 = !DILocation(line: 132, column: 2, scope: !138)
!144 = !DILocalVariable(name: "out", scope: !138, file: !2, line: 132, type: !49, align: 64)
!145 = !DILocation(line: 133, column: 2, scope: !138)
!146 = !DILocation(line: 134, column: 2, scope: !138)
!147 = !DILocation(line: 135, column: 6, scope: !138)
!148 = !DILocation(line: 136, column: 2, scope: !138)
!149 = !DILocation(line: 137, column: 5, scope: !138)
!150 = distinct !DISubprogram(name: "build_unsigned_int", scope: !2, file: !2, line: 140, type: !151, scopeLine: 140, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !153, !3, !45}
!153 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!154 = !DILocalVariable(name: "num", arg: 1, scope: !150, file: !2, line: 140, type: !153)
!155 = !DILocation(line: 140, scope: !150)
!156 = !DILocalVariable(name: "num_size", arg: 2, scope: !150, file: !2, line: 140, type: !3)
!157 = !DILocalVariable(name: "builder", arg: 3, scope: !150, file: !2, line: 140, type: !45)
!158 = !DILocation(line: 141, column: 2, scope: !150)
!159 = !DILocation(line: 146, column: 1, scope: !150)
!160 = !DILocation(line: 142, column: 3, scope: !150)
!161 = !DILocalVariable(name: "digit", scope: !150, file: !2, line: 142, type: !153, align: 64)
!162 = !DILocation(line: 143, column: 21, scope: !150)
!163 = !DILocation(line: 144, column: 4, scope: !150)
!164 = !DILocation(line: 145, column: 2, scope: !150)
!165 = distinct !DISubprogram(name: "int_to_str", scope: !2, file: !2, line: 148, type: !166, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !3, !45}
!168 = !DILocalVariable(name: "num", arg: 1, scope: !165, file: !2, line: 148, type: !3)
!169 = !DILocation(line: 148, scope: !165)
!170 = !DILocalVariable(name: "builder", arg: 2, scope: !165, file: !2, line: 148, type: !45)
!171 = !DILocation(line: 150, column: 2, scope: !165)
!172 = !DILocation(line: 157, column: 2, scope: !165)
!173 = !DILocation(line: 151, column: 4, scope: !165)
!174 = !DILocation(line: 152, column: 5, scope: !165)
!175 = !DILocation(line: 154, column: 2, scope: !165)
!176 = !DILocalVariable(name: "div_copy", scope: !165, file: !2, line: 154, type: !3, align: 64)
!177 = !DILocation(line: 155, column: 2, scope: !165)
!178 = !DILocalVariable(name: "num_size", scope: !165, file: !2, line: 155, type: !3, align: 64)
!179 = !DILocation(line: 158, column: 3, scope: !165)
!180 = !DILocation(line: 159, column: 2, scope: !165)
!181 = !DILocation(line: 160, column: 2, scope: !165)
!182 = !DILocation(line: 166, column: 1, scope: !165)
!183 = !DILocation(line: 161, column: 4, scope: !165)
!184 = !DILocation(line: 162, column: 3, scope: !165)
!185 = !DILocation(line: 163, column: 3, scope: !165)
!186 = !DILocation(line: 164, column: 2, scope: !165)
!187 = !DILocation(line: 165, column: 20, scope: !165)
!188 = distinct !DISubprogram(name: "float_to_str", scope: !2, file: !2, line: 168, type: !189, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !191, !45}
!191 = !DIBasicType(name: "f64", size: 64, encoding: DW_ATE_float)
!192 = !DILocalVariable(name: "num", arg: 1, scope: !188, file: !2, line: 168, type: !191)
!193 = !DILocation(line: 168, scope: !188)
!194 = !DILocalVariable(name: "builder", arg: 2, scope: !188, file: !2, line: 168, type: !45)
!195 = !DILocation(line: 170, column: 2, scope: !188)
!196 = !DILocation(line: 185, column: 2, scope: !188)
!197 = !DILocation(line: 171, column: 4, scope: !188)
!198 = !DILocation(line: 172, column: 3, scope: !188)
!199 = !DILocation(line: 175, column: 2, scope: !188)
!200 = !DILocalVariable(name: "decimal", scope: !188, file: !2, line: 175, type: !153, align: 64)
!201 = !DILocation(line: 176, column: 2, scope: !188)
!202 = !DILocation(line: 178, column: 2, scope: !188)
!203 = !DILocation(line: 179, column: 4, scope: !188)
!204 = !DILocation(line: 180, column: 2, scope: !188)
!205 = !DILocation(line: 182, column: 3, scope: !188)
!206 = !DILocation(line: 183, column: 2, scope: !188)
!207 = !DILocalVariable(name: "zeroes_to_append", scope: !188, file: !2, line: 183, type: !3, align: 64)
!208 = !DILocation(line: 181, column: 17, scope: !188)
!209 = !DILocation(line: 181, column: 2, scope: !188)
!210 = !DILocation(line: 186, column: 3, scope: !188)
!211 = !DILocation(line: 187, column: 3, scope: !188)
!212 = !DILocation(line: 188, column: 2, scope: !188)
!213 = !DILocation(line: 190, column: 2, scope: !188)
!214 = !DILocalVariable(name: "i", scope: !188, file: !2, line: 190, type: !3, align: 64)
!215 = !DILocation(line: 190, column: 6, scope: !188)
!216 = !DILocation(line: 187, column: 20, scope: !188)
!217 = !DILocation(line: 191, column: 4, scope: !188)
!218 = !DILocation(line: 192, column: 2, scope: !188)
!219 = !DILocation(line: 194, column: 12, scope: !188)
!220 = !DILocation(line: 195, column: 1, scope: !188)
!221 = distinct !DISubprogram(name: "parse_format", scope: !2, file: !2, line: 197, type: !222, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !49, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "Any", scope: !17, file: !17, line: 51, size: 128, align: 64, elements: !226)
!226 = !{!227, !282}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !17, line: 52, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !17, file: !17, line: 56, size: 320, align: 64, elements: !230)
!230 = !{!231, !232, !237, !250, !258, !265, !273}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !17, file: !17, line: 57, baseType: !32, size: 32, align: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !17, file: !17, line: 66, baseType: !233, size: 64, align: 32)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Primitive", scope: !17, file: !17, line: 66, size: 64, align: 32, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !17, file: !17, line: 67, baseType: !32, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !17, file: !17, line: 68, baseType: !32, size: 32, align: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !17, file: !17, line: 71, baseType: !238, size: 320, align: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Struct", scope: !17, file: !17, line: 71, size: 320, align: 64, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !247}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !17, file: !17, line: 72, baseType: !32, size: 32, align: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "member_count", scope: !17, file: !17, line: 73, baseType: !32, size: 32, align: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "is_union", scope: !17, file: !17, line: 74, baseType: !18, size: 8, align: 8, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "is_packed", scope: !17, file: !17, line: 75, baseType: !18, size: 8, align: 8, offset: 72)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !17, line: 76, baseType: !52, size: 64, align: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "member_names", scope: !17, file: !17, line: 77, baseType: !246, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "member_types", scope: !17, file: !17, line: 78, baseType: !248, size: 64, align: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !17, file: !17, line: 78, size: 320, align: 64, elements: !230)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !17, file: !17, line: 81, baseType: !251, size: 192, align: 64)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Array", scope: !17, file: !17, line: 81, size: 192, align: 64, elements: !252)
!252 = !{!253, !254, !257}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !17, file: !17, line: 82, baseType: !32, size: 32, align: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !17, line: 83, baseType: !255, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !17, file: !17, line: 83, size: 320, align: 64, elements: !230)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "elem_count", scope: !17, file: !17, line: 84, baseType: !153, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !17, file: !17, line: 87, baseType: !259, size: 128, align: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Pointer", scope: !17, file: !17, line: 87, size: 128, align: 64, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !17, file: !17, line: 88, baseType: !32, size: 32, align: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pointed", scope: !17, file: !17, line: 89, baseType: !263, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !17, file: !17, line: 89, size: 320, align: 64, elements: !230)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "enumerator", scope: !17, file: !17, line: 92, baseType: !266, size: 256, align: 64)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Enum", scope: !17, file: !17, line: 92, size: 256, align: 64, elements: !267)
!267 = !{!268, !269, !270, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !17, file: !17, line: 93, baseType: !32, size: 32, align: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !17, line: 94, baseType: !233, size: 64, align: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !17, file: !17, line: 95, baseType: !246, size: 64, align: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !17, file: !17, line: 96, baseType: !272, size: 64, align: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !17, file: !17, line: 99, baseType: !274, size: 256, align: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Func", scope: !17, file: !17, line: 99, size: 256, align: 64, elements: !275)
!275 = !{!276, !277, !280, !281}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !17, file: !17, line: 100, baseType: !32, size: 32, align: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "param_types", scope: !17, file: !17, line: 101, baseType: !278, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !17, file: !17, line: 101, size: 320, align: 64, elements: !230)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "return_type", scope: !17, file: !17, line: 102, baseType: !278, size: 64, align: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "calling_convention", scope: !17, file: !17, line: 103, baseType: !32, size: 32, align: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !17, file: !17, line: 53, baseType: !23, size: 64, align: 64, offset: 64)
!283 = !DILocalVariable(name: "format", arg: 1, scope: !221, file: !2, line: 197, type: !49)
!284 = !DILocation(line: 197, scope: !221)
!285 = !DILocalVariable(name: "list", arg: 2, scope: !221, file: !2, line: 197, type: !224)
!286 = !DILocation(line: 199, column: 2, scope: !221)
!287 = !DILocalVariable(name: "builder", scope: !221, file: !2, line: 199, type: !36, align: 2048)
!288 = !DILocation(line: 200, column: 2, scope: !221)
!289 = !DILocalVariable(name: "list_index", scope: !221, file: !2, line: 200, type: !3, align: 64)
!290 = !DILocation(line: 201, column: 2, scope: !221)
!291 = !DILocalVariable(name: "i", scope: !221, file: !2, line: 201, type: !3, align: 64)
!292 = !DILocation(line: 201, column: 6, scope: !221)
!293 = !DILocation(line: 202, column: 3, scope: !221)
!294 = !DILocation(line: 217, column: 2, scope: !221)
!295 = !DILocation(line: 218, column: 2, scope: !221)
!296 = !DILocation(line: 219, column: 2, scope: !221)
!297 = !DILocalVariable(name: "out", scope: !221, file: !2, line: 219, type: !49, align: 64)
!298 = !DILocation(line: 220, column: 5, scope: !221)
!299 = !DILocation(line: 203, column: 4, scope: !221)
!300 = !DILocalVariable(name: "item", scope: !221, file: !2, line: 203, type: !225, align: 64)
!301 = !DILocation(line: 204, column: 4, scope: !221)
!302 = !DILocation(line: 205, column: 4, scope: !221)
!303 = !DILocalVariable(name: "type", scope: !221, file: !2, line: 205, type: !32, align: 32)
!304 = !DILocation(line: 206, column: 4, scope: !221)
!305 = !DILocation(line: 214, column: 3, scope: !221)
!306 = !DILocation(line: 207, column: 15, scope: !221)
!307 = !DILocation(line: 208, column: 4, scope: !221)
!308 = !DILocation(line: 208, column: 11, scope: !221)
!309 = !DILocation(line: 208, column: 6, scope: !221)
!310 = !DILocation(line: 209, column: 11, scope: !221)
!311 = !DILocation(line: 210, column: 17, scope: !221)
!312 = !DILocation(line: 211, column: 4, scope: !221)
!313 = !DILocation(line: 212, column: 5, scope: !221)
!314 = !DILocation(line: 211, column: 6, scope: !221)
!315 = !DILocation(line: 215, column: 4, scope: !221)
!316 = !DILocation(line: 216, column: 3, scope: !221)
!317 = distinct !DISubprogram(name: "print!@* u8!@-", scope: !2, file: !2, line: 223, type: !90, scopeLine: 224, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!318 = !DILocalVariable(name: "format", arg: 1, scope: !317, file: !2, line: 223, type: !52)
!319 = !DILocation(line: 223, scope: !317)
!320 = !DILocation(line: 225, column: 2, scope: !317)
!321 = !DILocalVariable(name: "str", scope: !317, file: !2, line: 225, type: !49, align: 64)
!322 = !DILocation(line: 226, column: 2, scope: !317)
!323 = !DILocalVariable(name: "list", scope: !317, file: !2, line: 226, type: !224, align: 64)
!324 = !DILocation(line: 227, column: 15, scope: !317)
!325 = !DILocation(line: 228, column: 2, scope: !317)
!326 = !DILocalVariable(name: "out", scope: !317, file: !2, line: 228, type: !49, align: 64)
!327 = !DILocation(line: 229, column: 14, scope: !317)
!328 = !DILocation(line: 230, column: 2, scope: !317)
!329 = !DILocalVariable(name: "stdout", scope: !317, file: !2, line: 230, type: !23, align: 64)
!330 = !DILocation(line: 231, column: 12, scope: !317)
!331 = !DILocation(line: 232, column: 1, scope: !317)
!332 = distinct !DISubprogram(name: "print!@string!@-", scope: !2, file: !2, line: 234, type: !139, scopeLine: 235, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!333 = !DILocalVariable(name: "format", arg: 1, scope: !332, file: !2, line: 234, type: !49)
!334 = !DILocation(line: 234, scope: !332)
!335 = !DILocation(line: 236, column: 2, scope: !332)
!336 = !DILocalVariable(name: "list", scope: !332, file: !2, line: 236, type: !224, align: 64)
!337 = !DILocation(line: 237, column: 15, scope: !332)
!338 = !DILocation(line: 238, column: 2, scope: !332)
!339 = !DILocalVariable(name: "out", scope: !332, file: !2, line: 238, type: !49, align: 64)
!340 = !DILocation(line: 239, column: 14, scope: !332)
!341 = !DILocation(line: 240, column: 2, scope: !332)
!342 = !DILocalVariable(name: "stdout", scope: !332, file: !2, line: 240, type: !23, align: 64)
!343 = !DILocation(line: 241, column: 12, scope: !332)
!344 = !DILocation(line: 242, column: 1, scope: !332)
!345 = distinct !DISubprogram(name: "copy", scope: !2, file: !2, line: 245, type: !346, scopeLine: 246, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !23, !23, !153}
!348 = !DILocalVariable(name: "dst", arg: 1, scope: !345, file: !2, line: 245, type: !23)
!349 = !DILocation(line: 245, scope: !345)
!350 = !DILocalVariable(name: "src", arg: 2, scope: !345, file: !2, line: 245, type: !23)
!351 = !DILocalVariable(name: "size", arg: 3, scope: !345, file: !2, line: 245, type: !153)
!352 = !DILocation(line: 247, column: 2, scope: !345)
!353 = !DILocalVariable(name: "a0", scope: !345, file: !2, line: 247, type: !52, align: 64)
!354 = !DILocation(line: 248, column: 2, scope: !345)
!355 = !DILocalVariable(name: "a1", scope: !345, file: !2, line: 248, type: !52, align: 64)
!356 = !DILocation(line: 249, column: 2, scope: !345)
!357 = !DILocalVariable(name: "i", scope: !345, file: !2, line: 249, type: !3, align: 64)
!358 = !DILocation(line: 249, column: 6, scope: !345)
!359 = !DILocation(line: 251, column: 3, scope: !345)
!360 = !DILocation(line: 252, column: 2, scope: !345)
!361 = !DILocation(line: 253, column: 1, scope: !345)
!362 = distinct !DISubprogram(name: "len", scope: !2, file: !2, line: 255, type: !363, scopeLine: 256, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!363 = !DISubroutineType(types: !364)
!364 = !{!3, !52}
!365 = !DILocalVariable(name: "text", arg: 1, scope: !362, file: !2, line: 255, type: !52)
!366 = !DILocation(line: 255, scope: !362)
!367 = !DILocation(line: 257, column: 2, scope: !362)
!368 = !DILocalVariable(name: "result", scope: !362, file: !2, line: 257, type: !3, align: 64)
!369 = !DILocation(line: 258, column: 2, scope: !362)
!370 = !DILocation(line: 258, column: 47, scope: !362)
!371 = !DILocation(line: 259, column: 5, scope: !362)
!372 = distinct !DISubprogram(name: "open_file", scope: !6, file: !6, line: 26, type: !373, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!373 = !DISubroutineType(types: !374)
!374 = !{!23, !52, !3}
!375 = !DILocalVariable(name: "f_name", arg: 1, scope: !372, file: !6, line: 26, type: !52)
!376 = !DILocation(line: 26, scope: !372)
!377 = !DILocalVariable(name: "access", arg: 2, scope: !372, file: !6, line: 26, type: !3)
!378 = !DILocation(line: 28, column: 2, scope: !372)
!379 = !DILocalVariable(name: "win_access", scope: !372, file: !6, line: 28, type: !3, align: 64)
!380 = !DILocation(line: 29, column: 2, scope: !372)
!381 = !DILocation(line: 36, column: 1, scope: !372)
!382 = !DILocation(line: 29, column: 41, scope: !372)
!383 = !DILocation(line: 30, column: 2, scope: !372)
!384 = !DILocation(line: 30, column: 41, scope: !372)
!385 = !DILocation(line: 31, column: 2, scope: !372)
!386 = !DILocation(line: 31, column: 41, scope: !372)
!387 = !DILocation(line: 32, column: 2, scope: !372)
!388 = !DILocalVariable(name: "file", scope: !372, file: !6, line: 32, type: !23, align: 64)
!389 = !DILocation(line: 35, column: 5, scope: !372)
!390 = distinct !DISubprogram(name: "write_file", scope: !6, file: !6, line: 38, type: !391, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!391 = !DISubroutineType(types: !392)
!392 = !{!18, !23, !23, !393}
!393 = !DIBasicType(name: "u32", size: 24, encoding: DW_ATE_unsigned)
!394 = !DILocalVariable(name: "file", arg: 1, scope: !390, file: !6, line: 38, type: !23)
!395 = !DILocation(line: 38, scope: !390)
!396 = !DILocalVariable(name: "data", arg: 2, scope: !390, file: !6, line: 38, type: !23)
!397 = !DILocalVariable(name: "size", arg: 3, scope: !390, file: !6, line: 38, type: !393)
!398 = !DILocation(line: 40, column: 2, scope: !390)
!399 = !DILocalVariable(name: "written", scope: !390, file: !6, line: 40, type: !393, align: 32)
!400 = !DILocation(line: 41, column: 11, scope: !390)
!401 = !DILocation(line: 42, column: 2, scope: !390)
!402 = !DILocalVariable(name: "result", scope: !390, file: !6, line: 42, type: !18, align: 8)
!403 = !DILocation(line: 43, column: 5, scope: !390)
!404 = distinct !DISubprogram(name: "get_stdout", scope: !6, file: !6, line: 46, type: !405, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!405 = !DISubroutineType(types: !406)
!406 = !{!23}
!407 = !DILocation(line: 48, column: 5, scope: !404)
!408 = distinct !DISubprogram(name: "mem_alloc", scope: !409, file: !409, line: 12, type: !410, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!409 = !DIFile(filename: "./C_Standard.apoc", directory: "E:\\C_Projects\\Apocalypse\\Standard")
!410 = !DISubroutineType(types: !411)
!411 = !{!23, !153}
!412 = !DILocalVariable(name: "size", arg: 1, scope: !408, file: !409, line: 12, type: !153)
!413 = !DILocation(line: 12, scope: !408)
!414 = !DILocation(line: 14, column: 2, scope: !408)
!415 = !DILocalVariable(name: "result", scope: !408, file: !409, line: 14, type: !23, align: 64)
!416 = !DILocation(line: 15, column: 8, scope: !408)
!417 = !DILocation(line: 16, column: 5, scope: !408)
!418 = distinct !DISubprogram(name: "overload[]", scope: !2, file: !2, line: 59, type: !419, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!419 = !DISubroutineType(types: !420)
!420 = !{!40, !49, !3}
!421 = !DILocalVariable(name: "str", scope: !418, file: !2, line: 59, type: !49)
!422 = !DILocation(line: 59, scope: !418)
!423 = !DILocalVariable(name: "index", arg: 1, scope: !418, file: !2, line: 59, type: !3)
!424 = !DILocation(line: 61, column: 5, scope: !418)
!425 = distinct !DISubprogram(name: "overload+\8Cw\AD\94\EE8", scope: !2, file: !2, line: 64, type: !426, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!426 = !DISubroutineType(types: !427)
!427 = !{!49, !49, !52}
!428 = !DILocalVariable(name: "str", scope: !425, file: !2, line: 64, type: !49)
!429 = !DILocation(line: 64, scope: !425)
!430 = !DILocalVariable(name: "text", arg: 1, scope: !425, file: !2, line: 64, type: !52)
!431 = !DILocation(line: 66, column: 2, scope: !425)
!432 = !DILocalVariable(name: "out", scope: !425, file: !2, line: 66, type: !49, align: 64)
!433 = !DILocation(line: 67, column: 2, scope: !425)
!434 = !DILocalVariable(name: "text_len", scope: !425, file: !2, line: 67, type: !3, align: 64)
!435 = !DILocation(line: 68, column: 2, scope: !425)
!436 = !DILocation(line: 69, column: 2, scope: !425)
!437 = !DILocation(line: 70, column: 6, scope: !425)
!438 = !DILocation(line: 71, column: 6, scope: !425)
!439 = !DILocation(line: 72, column: 5, scope: !425)
!440 = distinct !DISubprogram(name: "overload[x]=", scope: !2, file: !2, line: 75, type: !441, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !45, !52}
!443 = !DILocalVariable(name: "str", scope: !440, file: !2, line: 75, type: !45)
!444 = !DILocation(line: 75, scope: !440)
!445 = !DILocalVariable(name: "text", arg: 1, scope: !440, file: !2, line: 75, type: !52)
!446 = !DILocation(line: 77, column: 2, scope: !440)
!447 = !DILocalVariable(name: "text_len", scope: !440, file: !2, line: 77, type: !3, align: 64)
!448 = !DILocation(line: 78, column: 2, scope: !440)
!449 = !DILocalVariable(name: "times", scope: !440, file: !2, line: 78, type: !3, align: 64)
!450 = !DILocation(line: 79, column: 2, scope: !440)
!451 = !DILocalVariable(name: "current", scope: !440, file: !2, line: 79, type: !45, align: 64)
!452 = !DILocation(line: 80, column: 2, scope: !440)
!453 = !DILocalVariable(name: "i", scope: !440, file: !2, line: 80, type: !3, align: 64)
!454 = !DILocation(line: 80, column: 6, scope: !440)
!455 = !DILocation(line: 81, column: 3, scope: !440)
!456 = !DILocalVariable(name: "copy_size", scope: !440, file: !2, line: 81, type: !3, align: 64)
!457 = !DILocation(line: 82, column: 3, scope: !440)
!458 = !DILocation(line: 87, column: 2, scope: !440)
!459 = !DILocation(line: 89, column: 1, scope: !440)
!460 = !DILocation(line: 82, column: 37, scope: !440)
!461 = !DILocation(line: 83, column: 7, scope: !440)
!462 = !DILocation(line: 84, column: 3, scope: !440)
!463 = !DILocation(line: 85, column: 3, scope: !440)
!464 = !DILocation(line: 86, column: 3, scope: !440)
!465 = distinct !DISubprogram(name: "overload[x]=", scope: !2, file: !2, line: 91, type: !466, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !45, !40}
!468 = !DILocalVariable(name: "str", scope: !465, file: !2, line: 91, type: !45)
!469 = !DILocation(line: 91, scope: !465)
!470 = !DILocalVariable(name: "c", arg: 1, scope: !465, file: !2, line: 91, type: !40)
!471 = !DILocation(line: 93, column: 2, scope: !465)
!472 = !DILocalVariable(name: "to_put", scope: !465, file: !2, line: 93, type: !45, align: 64)
!473 = !DILocation(line: 94, column: 2, scope: !465)
!474 = !DILocation(line: 95, column: 3, scope: !465)
!475 = !DILocation(line: 100, column: 2, scope: !465)
!476 = !DILocation(line: 101, column: 2, scope: !465)
!477 = !DILocation(line: 102, column: 2, scope: !465)
!478 = !DILocation(line: 103, column: 1, scope: !465)
!479 = !DILocation(line: 96, column: 4, scope: !465)
!480 = !DILocation(line: 98, column: 3, scope: !465)
!481 = !DILocation(line: 99, column: 4, scope: !465)
!482 = distinct !DISubprogram(name: "overload", scope: !2, file: !2, line: 105, type: !483, scopeLine: 106, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !33)
!483 = !DISubroutineType(types: !484)
!484 = !{!18, !49, !52}
!485 = !DILocalVariable(name: "str", scope: !482, file: !2, line: 105, type: !49)
!486 = !DILocation(line: 105, scope: !482)
!487 = !DILocalVariable(name: "text", arg: 1, scope: !482, file: !2, line: 105, type: !52)
!488 = !DILocation(line: 107, column: 2, scope: !482)
!489 = !DILocalVariable(name: "str2", scope: !482, file: !2, line: 107, type: !49, align: 64)
!490 = !DILocation(line: 108, column: 5, scope: !482)
