; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%string = type { ptr, i64 }

@global_var = constant i8 1
@global_var.1 = constant i8 0
@0 = private unnamed_addr constant [10 x i8] c"some_text\00", align 1
@1 = private unnamed_addr constant [11 x i8] c" more text\00", align 1
@2 = private unnamed_addr constant [16 x i8] c" even more text\00", align 1
@3 = private unnamed_addr constant [35 x i8] c"some_text more text even more text\00", align 1

declare void @var_arg_start(ptr)

define i32 @_apoc_init() !dbg !16 {
entry:
  %my_str = alloca %string, align 16, !dbg !21
  %0 = call %string @to_string(ptr @0), !dbg !21
  call void @llvm.memset.p0.i64(ptr align 16 %my_str, i8 0, i64 16, i1 false), !dbg !21
  store %string %0, ptr %my_str, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata ptr %my_str, metadata !22, metadata !DIExpression()), !dbg !21
  %1 = load %string, ptr %my_str, align 8, !dbg !30
  %2 = call %string @"overload+"(%string %1, ptr @1), !dbg !30
  store %string %2, ptr %my_str, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata ptr %my_str, metadata !31, metadata !DIExpression()), !dbg !30
  %3 = load %string, ptr %my_str, align 8, !dbg !32
  %4 = call %string @"overload+"(%string %3, ptr @2), !dbg !32
  store %string %4, ptr %my_str, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata ptr %my_str, metadata !33, metadata !DIExpression()), !dbg !32
  %5 = load %string, ptr %my_str, align 8, !dbg !34
  %6 = call i8 @overload(%string %5, ptr @3), !dbg !34
  %boolean_expr = trunc i8 %6 to i1, !dbg !34
  br i1 %boolean_expr, label %if_true, label %if_false, !dbg !34

if_false:                                         ; preds = %entry
  %7 = load %string, ptr %my_str, align 8, !dbg !35
  call void @print(%string %7), !dbg !35
  ret i32 0, !dbg !36

if_true:                                          ; preds = %entry
  ret i32 1, !dbg !37
}

define ptr @mem_alloc(i64 %size) !dbg !38 {
entry:
  %result = alloca ptr, align 8
  %size1 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %size1, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %size1, metadata !43, metadata !DIExpression()), !dbg !44
  store i64 %size, ptr %size1, align 4
  %0 = load i64, ptr %size1, align 4, !dbg !45
  %1 = call ptr @malloc(i64 %0), !dbg !45
  call void @llvm.memset.p0.i64(ptr align 8 %result, i8 0, i64 8, i1 false), !dbg !45
  store ptr %1, ptr %result, align 8, !dbg !45
  call void @llvm.dbg.declare(metadata ptr %result, metadata !46, metadata !DIExpression()), !dbg !45
  %2 = load ptr, ptr %result, align 8, !dbg !47
  %3 = load i64, ptr %size1, align 4, !dbg !47
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3), !dbg !47
  %5 = load ptr, ptr %result, align 8, !dbg !48
  ret ptr %5, !dbg !48
}

define i8 @compare(%string %str1, %string %str2) !dbg !49 {
entry:
  %i = alloca i64, align 8
  %str22 = alloca %string, align 16
  %str11 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str11, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str11, metadata !52, metadata !DIExpression()), !dbg !53
  store %string %str1, ptr %str11, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %str22, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str22, metadata !54, metadata !DIExpression()), !dbg !53
  store %string %str2, ptr %str22, align 8
  %"struct member ptr" = getelementptr inbounds %string, ptr %str11, i32 0, i32 1, !dbg !55
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !55
  %"struct member ptr3" = getelementptr inbounds %string, ptr %str22, i32 0, i32 1, !dbg !55
  %selected4 = load i64, ptr %"struct member ptr3", align 4, !dbg !55
  %0 = icmp ne i64 %selected, %selected4, !dbg !55
  br i1 %0, label %if_true12, label %if_false, !dbg !55

if_false:                                         ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %i, i8 0, i64 8, i1 false), !dbg !56
  store i64 0, ptr %i, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %i, metadata !57, metadata !DIExpression()), !dbg !58
  br label %for.cond, !dbg !56

for.cond:                                         ; preds = %for.incr, %if_false
  %1 = load i64, ptr %i, align 4, !dbg !56
  %"struct member ptr5" = getelementptr inbounds %string, ptr %str11, i32 0, i32 1, !dbg !56
  %selected6 = load i64, ptr %"struct member ptr5", align 4, !dbg !56
  %2 = icmp ult i64 %1, %selected6, !dbg !56
  br i1 %2, label %for.body, label %for.aftr, !dbg !56

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 4, !dbg !59
  %"struct member ptr7" = getelementptr inbounds %string, ptr %str11, i32 0, i32 0, !dbg !59
  %ptr_load = load ptr, ptr %"struct member ptr7", align 8, !dbg !59
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %3, !dbg !59
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !59
  %4 = load i64, ptr %i, align 4, !dbg !59
  %"struct member ptr8" = getelementptr inbounds %string, ptr %str22, i32 0, i32 0, !dbg !59
  %ptr_load9 = load ptr, ptr %"struct member ptr8", align 8, !dbg !59
  %elem_ptr10 = getelementptr i8, ptr %ptr_load9, i64 %4, !dbg !59
  %indexed_val11 = load i8, ptr %elem_ptr10, align 1, !dbg !59
  %5 = icmp ne i8 %indexed_val, %indexed_val11, !dbg !59
  br i1 %5, label %if_true, label %for.incr, !dbg !59

for.aftr:                                         ; preds = %for.cond
  ret i8 1, !dbg !60

for.incr:                                         ; preds = %for.body
  %6 = load i64, ptr %i, align 4, !dbg !56
  %7 = add i64 %6, 1, !dbg !56
  store i64 %7, ptr %i, align 4, !dbg !56
  br label %for.cond, !dbg !56

if_true:                                          ; preds = %for.body
  ret i8 0, !dbg !61

if_true12:                                        ; preds = %entry
  ret i8 0, !dbg !62
}

define %string @to_string(ptr %text) !dbg !63 {
entry:
  %string = alloca %string, align 16
  %allocated = alloca ptr, align 8
  %text_len = alloca i64, align 8
  %text1 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %text1, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %text1, metadata !66, metadata !DIExpression()), !dbg !67
  store ptr %text, ptr %text1, align 8
  %0 = load ptr, ptr %text1, align 8, !dbg !68
  %1 = call i64 @len(ptr %0), !dbg !68
  call void @llvm.memset.p0.i64(ptr align 8 %text_len, i8 0, i64 8, i1 false), !dbg !68
  store i64 %1, ptr %text_len, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !69, metadata !DIExpression()), !dbg !68
  %2 = load i64, ptr %text_len, align 4, !dbg !70
  %3 = call ptr @mem_alloc(i64 %2), !dbg !70
  call void @llvm.memset.p0.i64(ptr align 8 %allocated, i8 0, i64 8, i1 false), !dbg !70
  store ptr %3, ptr %allocated, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %allocated, metadata !71, metadata !DIExpression()), !dbg !70
  %4 = load ptr, ptr %allocated, align 8, !dbg !72
  %5 = load ptr, ptr %text1, align 8, !dbg !72
  %6 = load i64, ptr %text_len, align 4, !dbg !72
  call void @copy(ptr %4, ptr %5, i64 %6), !dbg !72
  call void @llvm.memset.p0.i64(ptr align 16 %string, i8 0, i64 16, i1 false), !dbg !73
  %7 = load ptr, ptr %allocated, align 8, !dbg !73
  %8 = getelementptr inbounds %string, ptr %string, i32 0, i32 0, !dbg !73
  store ptr %7, ptr %8, align 8, !dbg !73
  %9 = load i64, ptr %text_len, align 4, !dbg !73
  %10 = getelementptr inbounds %string, ptr %string, i32 0, i32 1, !dbg !73
  store i64 %9, ptr %10, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %string, metadata !74, metadata !DIExpression()), !dbg !73
  %11 = load %string, ptr %string, align 8, !dbg !75
  ret %string %11, !dbg !75
}

define %string @terminate_string(%string %str) !dbg !76 {
entry:
  %out = alloca %string, align 16
  %zero_init_struct = alloca %string, align 16
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !79, metadata !DIExpression()), !dbg !80
  store %string %str, ptr %str1, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %zero_init_struct, i8 0, i64 16, i1 false), !dbg !81
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !81
  store ptr %zero_init_struct, ptr %out, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %out, metadata !82, metadata !DIExpression()), !dbg !81
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !83
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !83
  %0 = add i64 %selected, 1, !dbg !83
  %"struct member ptr2" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !83
  store i64 %0, ptr %"struct member ptr2", align 4, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %"struct member ptr2", metadata !84, metadata !DIExpression()), !dbg !83
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !85
  %selected4 = load i64, ptr %"struct member ptr3", align 4, !dbg !85
  %1 = call ptr @mem_alloc(i64 %selected4), !dbg !85
  %"struct member ptr5" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !85
  store ptr %1, ptr %"struct member ptr5", align 8, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %"struct member ptr5", metadata !86, metadata !DIExpression()), !dbg !85
  %"struct member ptr6" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !87
  %selected7 = load ptr, ptr %"struct member ptr6", align 8, !dbg !87
  %"struct member ptr8" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0, !dbg !87
  %selected9 = load ptr, ptr %"struct member ptr8", align 8, !dbg !87
  %"struct member ptr10" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !87
  %selected11 = load i64, ptr %"struct member ptr10", align 4, !dbg !87
  call void @copy(ptr %selected7, ptr %selected9, i64 %selected11), !dbg !87
  %"struct member ptr12" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !88
  %selected13 = load i64, ptr %"struct member ptr12", align 4, !dbg !88
  %"struct member ptr14" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !88
  %ptr_load = load ptr, ptr %"struct member ptr14", align 8, !dbg !88
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected13, !dbg !88
  store i8 0, ptr %elem_ptr, align 1, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %elem_ptr, metadata !89, metadata !DIExpression()), !dbg !88
  %2 = load %string, ptr %out, align 8, !dbg !90
  ret %string %2, !dbg !90
}

define void @print(%string %str) !dbg !91 {
entry:
  %to_print = alloca %string, align 16
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !94, metadata !DIExpression()), !dbg !95
  store %string %str, ptr %str1, align 8
  %0 = load %string, ptr %str1, align 8, !dbg !96
  %1 = call %string @terminate_string(%string %0), !dbg !96
  call void @llvm.memset.p0.i64(ptr align 16 %to_print, i8 0, i64 16, i1 false), !dbg !96
  store %string %1, ptr %to_print, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %to_print, metadata !97, metadata !DIExpression()), !dbg !96
  %"struct member ptr" = getelementptr inbounds %string, ptr %to_print, i32 0, i32 0, !dbg !98
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !98
  %2 = call i32 (ptr, ...) @printf(ptr %selected), !dbg !98
  ret void
}

define void @copy(ptr %dst, ptr %src, i64 %size) !dbg !99 {
entry:
  %i = alloca i64, align 8
  %a1 = alloca ptr, align 8
  %a0 = alloca ptr, align 8
  %size3 = alloca i64, align 8
  %src2 = alloca ptr, align 8
  %dst1 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %dst1, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %dst1, metadata !102, metadata !DIExpression()), !dbg !103
  store ptr %dst, ptr %dst1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %src2, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %src2, metadata !104, metadata !DIExpression()), !dbg !103
  store ptr %src, ptr %src2, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %size3, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %size3, metadata !105, metadata !DIExpression()), !dbg !103
  store i64 %size, ptr %size3, align 4
  %0 = load ptr, ptr %dst1, align 8, !dbg !106
  call void @llvm.memset.p0.i64(ptr align 8 %a0, i8 0, i64 8, i1 false), !dbg !106
  store ptr %0, ptr %a0, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %a0, metadata !107, metadata !DIExpression()), !dbg !106
  %1 = load ptr, ptr %src2, align 8, !dbg !108
  call void @llvm.memset.p0.i64(ptr align 8 %a1, i8 0, i64 8, i1 false), !dbg !108
  store ptr %1, ptr %a1, align 8, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !109, metadata !DIExpression()), !dbg !108
  call void @llvm.memset.p0.i64(ptr align 8 %i, i8 0, i64 8, i1 false), !dbg !110
  store i64 0, ptr %i, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata ptr %i, metadata !111, metadata !DIExpression()), !dbg !112
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.incr, %entry
  %2 = load i64, ptr %i, align 4, !dbg !110
  %3 = load i64, ptr %size3, align 4, !dbg !110
  %4 = icmp ult i64 %2, %3, !dbg !110
  br i1 %4, label %for.body, label %for.aftr, !dbg !110

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %i, align 4, !dbg !113
  %ptr_load = load ptr, ptr %a1, align 8, !dbg !113
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %5, !dbg !113
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !113
  %6 = load i64, ptr %i, align 4, !dbg !113
  %ptr_load4 = load ptr, ptr %a0, align 8, !dbg !113
  %elem_ptr5 = getelementptr i8, ptr %ptr_load4, i64 %6, !dbg !113
  store i8 %indexed_val, ptr %elem_ptr5, align 1, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %elem_ptr5, metadata !114, metadata !DIExpression()), !dbg !113
  br label %for.incr, !dbg !113

for.aftr:                                         ; preds = %for.cond
  %7 = load i64, ptr %i, align 4, !dbg !113
  %ptr_load6 = load ptr, ptr %a1, align 8, !dbg !113
  %elem_ptr7 = getelementptr i8, ptr %ptr_load6, i64 %7, !dbg !113
  %indexed_val8 = load i8, ptr %elem_ptr7, align 1, !dbg !113
  %8 = load i64, ptr %i, align 4, !dbg !113
  %ptr_load9 = load ptr, ptr %a0, align 8, !dbg !113
  %elem_ptr10 = getelementptr i8, ptr %ptr_load9, i64 %8, !dbg !113
  store i8 %indexed_val8, ptr %elem_ptr10, align 1, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %elem_ptr10, metadata !114, metadata !DIExpression()), !dbg !113
  ret void

for.incr:                                         ; preds = %for.body
  %9 = load i64, ptr %i, align 4, !dbg !110
  %10 = add i64 %9, 1, !dbg !110
  store i64 %10, ptr %i, align 4, !dbg !110
  br label %for.cond, !dbg !110
}

define i64 @len(ptr %text) !dbg !115 {
entry:
  %result = alloca i64, align 8
  %text1 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %text1, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %text1, metadata !118, metadata !DIExpression()), !dbg !119
  store ptr %text, ptr %text1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %result, i8 0, i64 8, i1 false), !dbg !120
  store i64 0, ptr %result, align 4, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %result, metadata !121, metadata !DIExpression()), !dbg !120
  store i64 0, ptr %result, align 4, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %result, metadata !123, metadata !DIExpression()), !dbg !124
  br label %for.cond, !dbg !122

for.cond:                                         ; preds = %for.incr, %entry
  %0 = load i64, ptr %result, align 4, !dbg !122
  %ptr_load = load ptr, ptr %text1, align 8, !dbg !122
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !122
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !122
  %1 = icmp ne i8 %indexed_val, 0, !dbg !122
  br i1 %1, label %for.body, label %for.aftr, !dbg !122

for.body:                                         ; preds = %for.cond
  br label %for.incr, !dbg !125

for.aftr:                                         ; preds = %for.cond
  %2 = load i64, ptr %result, align 4, !dbg !126
  ret i64 %2, !dbg !126

for.incr:                                         ; preds = %for.body
  %3 = load i64, ptr %result, align 4, !dbg !122
  %4 = add i64 %3, 1, !dbg !122
  store i64 %4, ptr %result, align 4, !dbg !122
  br label %for.cond, !dbg !122
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
define i8 @"overload[]"(%string %str, i64 %index) #0 !dbg !127 {
entry:
  %index2 = alloca i64, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !130, metadata !DIExpression()), !dbg !131
  store %string %str, ptr %str1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %index2, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %index2, metadata !132, metadata !DIExpression()), !dbg !131
  store i64 %index, ptr %index2, align 4
  %0 = load i64, ptr %index2, align 4, !dbg !133
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0, !dbg !133
  %ptr_load = load ptr, ptr %"struct member ptr", align 8, !dbg !133
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %0, !dbg !133
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !133
  ret i8 %indexed_val, !dbg !133
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline
define %string @"overload+"(%string %str, ptr %text) #0 !dbg !134 {
entry:
  %text_len = alloca i64, align 8
  %out = alloca %string, align 16
  %zero_init_struct = alloca %string, align 16
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !137, metadata !DIExpression()), !dbg !138
  store %string %str, ptr %str1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %text2, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !139, metadata !DIExpression()), !dbg !138
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %zero_init_struct, i8 0, i64 16, i1 false), !dbg !140
  call void @llvm.memset.p0.i64(ptr align 16 %out, i8 0, i64 16, i1 false), !dbg !140
  store ptr %zero_init_struct, ptr %out, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %out, metadata !141, metadata !DIExpression()), !dbg !140
  %0 = load ptr, ptr %text2, align 8, !dbg !142
  %1 = call i64 @len(ptr %0), !dbg !142
  call void @llvm.memset.p0.i64(ptr align 8 %text_len, i8 0, i64 8, i1 false), !dbg !142
  store i64 %1, ptr %text_len, align 4, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %text_len, metadata !143, metadata !DIExpression()), !dbg !142
  %"struct member ptr" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !144
  %selected = load i64, ptr %"struct member ptr", align 4, !dbg !144
  %2 = load i64, ptr %text_len, align 4, !dbg !144
  %3 = add i64 %selected, %2, !dbg !144
  %"struct member ptr3" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !144
  store i64 %3, ptr %"struct member ptr3", align 4, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %"struct member ptr3", metadata !145, metadata !DIExpression()), !dbg !144
  %"struct member ptr4" = getelementptr inbounds %string, ptr %out, i32 0, i32 1, !dbg !146
  %selected5 = load i64, ptr %"struct member ptr4", align 4, !dbg !146
  %4 = call ptr @mem_alloc(i64 %selected5), !dbg !146
  %"struct member ptr6" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !146
  store ptr %4, ptr %"struct member ptr6", align 8, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %"struct member ptr6", metadata !147, metadata !DIExpression()), !dbg !146
  %"struct member ptr7" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !148
  %selected8 = load ptr, ptr %"struct member ptr7", align 8, !dbg !148
  %"struct member ptr9" = getelementptr inbounds %string, ptr %str1, i32 0, i32 0, !dbg !148
  %selected10 = load ptr, ptr %"struct member ptr9", align 8, !dbg !148
  %"struct member ptr11" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !148
  %selected12 = load i64, ptr %"struct member ptr11", align 4, !dbg !148
  call void @copy(ptr %selected8, ptr %selected10, i64 %selected12), !dbg !148
  %"struct member ptr13" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !149
  %selected14 = load i64, ptr %"struct member ptr13", align 4, !dbg !149
  %"struct member ptr15" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !149
  %ptr_load = load ptr, ptr %"struct member ptr15", align 8, !dbg !149
  %elem_ptr = getelementptr i8, ptr %ptr_load, i64 %selected14, !dbg !149
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !149
  %"struct member ptr16" = getelementptr inbounds %string, ptr %str1, i32 0, i32 1, !dbg !149
  %selected17 = load i64, ptr %"struct member ptr16", align 4, !dbg !149
  %"struct member ptr18" = getelementptr inbounds %string, ptr %out, i32 0, i32 0, !dbg !149
  %ptr_load19 = load ptr, ptr %"struct member ptr18", align 8, !dbg !149
  %elem_ptr20 = getelementptr i8, ptr %ptr_load19, i64 %selected17, !dbg !149
  %5 = load ptr, ptr %text2, align 8, !dbg !149
  %6 = load i64, ptr %text_len, align 4, !dbg !149
  call void @copy(ptr %elem_ptr20, ptr %5, i64 %6), !dbg !149
  %7 = load %string, ptr %out, align 8, !dbg !150
  ret %string %7, !dbg !150
}

; Function Attrs: alwaysinline
define i8 @overload(%string %str, ptr %text) #0 !dbg !151 {
entry:
  %string = alloca %string, align 16
  %text2 = alloca ptr, align 8
  %str1 = alloca %string, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %str1, i8 0, i64 16, i1 false)
  call void @llvm.dbg.declare(metadata ptr %str1, metadata !154, metadata !DIExpression()), !dbg !155
  store %string %str, ptr %str1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %text2, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %text2, metadata !156, metadata !DIExpression()), !dbg !155
  store ptr %text, ptr %text2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %string, i8 0, i64 16, i1 false), !dbg !157
  %0 = load ptr, ptr %text2, align 8, !dbg !157
  %1 = getelementptr inbounds %string, ptr %string, i32 0, i32 0, !dbg !157
  store ptr %0, ptr %1, align 8, !dbg !157
  %2 = load ptr, ptr %text2, align 8, !dbg !157
  %3 = call i64 @len(ptr %2), !dbg !157
  %4 = getelementptr inbounds %string, ptr %string, i32 0, i32 1, !dbg !157
  store i64 %3, ptr %4, align 4, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %string, metadata !158, metadata !DIExpression()), !dbg !157
  %5 = load %string, ptr %str1, align 8, !dbg !159
  %6 = load %string, ptr %string, align 8, !dbg !159
  %7 = call i8 @compare(%string %5, %string %6), !dbg !159
  ret i8 %7, !dbg !159
}

attributes #0 = { alwaysinline }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!14, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "Test.apoc", directory: "W:\\Apocalypse")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "Basic.apoc", directory: "W:\\Apocalypse\\Standard")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "String.apoc", directory: "W:\\Apocalypse\\Standard")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !8)
!7 = !DIFile(filename: "C_Standard.apoc", directory: "W:\\Apocalypse\\Standard")
!8 = !{!9, !12}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "true", scope: !3, file: !3, line: 2, type: !11, isLocal: true, isDefinition: true)
!11 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "false", scope: !3, file: !3, line: 3, type: !11, isLocal: true, isDefinition: true)
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 2, !"CodeView", i32 1}
!16 = distinct !DISubprogram(name: "_apoc_init", scope: !1, file: !1, line: 4, type: !17, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocation(line: 6, column: 2, scope: !16)
!22 = !DILocalVariable(name: "my_str", scope: !16, file: !1, line: 6, type: !23, align: 128)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !5, file: !5, line: 2, size: 128, align: 64, elements: !24)
!24 = !{!25, !28}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !5, file: !5, line: 4, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5, file: !5, line: 5, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!30 = !DILocation(line: 7, column: 2, scope: !16)
!31 = !DILocalVariable(name: "my_str", scope: !16, file: !1, line: 7, type: !23, align: 128)
!32 = !DILocation(line: 8, column: 2, scope: !16)
!33 = !DILocalVariable(name: "my_str", scope: !16, file: !1, line: 8, type: !23, align: 128)
!34 = !DILocation(line: 9, column: 2, scope: !16)
!35 = !DILocation(line: 11, column: 7, scope: !16)
!36 = !DILocation(line: 12, column: 5, scope: !16)
!37 = !DILocation(line: 10, column: 6, scope: !16)
!38 = distinct !DISubprogram(name: "mem_alloc", scope: !3, file: !3, line: 65, type: !39, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !29}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!43 = !DILocalVariable(name: "size", scope: !38, file: !3, line: 65, type: !29)
!44 = !DILocation(line: 65, scope: !38)
!45 = !DILocation(line: 67, column: 2, scope: !38)
!46 = !DILocalVariable(name: "result", scope: !38, file: !3, line: 67, type: !41, align: 64)
!47 = !DILocation(line: 68, column: 8, scope: !38)
!48 = !DILocation(line: 69, column: 5, scope: !38)
!49 = distinct !DISubprogram(name: "compare", scope: !5, file: !5, line: 30, type: !50, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!50 = !DISubroutineType(types: !51)
!51 = !{!11, !23, !23}
!52 = !DILocalVariable(name: "str1", scope: !49, file: !5, line: 30, type: !23)
!53 = !DILocation(line: 30, scope: !49)
!54 = !DILocalVariable(name: "str2", arg: 1, scope: !49, file: !5, line: 30, type: !23)
!55 = !DILocation(line: 32, column: 2, scope: !49)
!56 = !DILocation(line: 35, column: 2, scope: !49)
!57 = !DILocalVariable(name: "i", scope: !49, file: !5, line: 35, type: !29, align: 64)
!58 = !DILocation(line: 35, column: 6, scope: !49)
!59 = !DILocation(line: 36, column: 3, scope: !49)
!60 = !DILocation(line: 37, column: 5, scope: !49)
!61 = !DILocation(line: 36, column: 38, scope: !49)
!62 = !DILocation(line: 33, column: 6, scope: !49)
!63 = distinct !DISubprogram(name: "to_string", scope: !5, file: !5, line: 40, type: !64, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!64 = !DISubroutineType(types: !65)
!65 = !{!23, !26}
!66 = !DILocalVariable(name: "text", scope: !63, file: !5, line: 40, type: !26)
!67 = !DILocation(line: 40, scope: !63)
!68 = !DILocation(line: 42, column: 2, scope: !63)
!69 = !DILocalVariable(name: "text_len", scope: !63, file: !5, line: 42, type: !29, align: 64)
!70 = !DILocation(line: 43, column: 2, scope: !63)
!71 = !DILocalVariable(name: "allocated", scope: !63, file: !5, line: 43, type: !41, align: 64)
!72 = !DILocation(line: 44, column: 6, scope: !63)
!73 = !DILocation(line: 45, column: 2, scope: !63)
!74 = !DILocalVariable(name: "str", scope: !63, file: !5, line: 45, type: !23, align: 128)
!75 = !DILocation(line: 46, column: 5, scope: !63)
!76 = distinct !DISubprogram(name: "terminate_string", scope: !5, file: !5, line: 49, type: !77, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!77 = !DISubroutineType(types: !78)
!78 = !{!23, !23}
!79 = !DILocalVariable(name: "str", scope: !76, file: !5, line: 49, type: !23)
!80 = !DILocation(line: 49, scope: !76)
!81 = !DILocation(line: 51, column: 2, scope: !76)
!82 = !DILocalVariable(name: "out", scope: !76, file: !5, line: 51, type: !23, align: 128)
!83 = !DILocation(line: 52, column: 2, scope: !76)
!84 = !DILocalVariable(scope: !76, file: !5, line: 52, type: !29, align: 64)
!85 = !DILocation(line: 53, column: 2, scope: !76)
!86 = !DILocalVariable(scope: !76, file: !5, line: 53, type: !26, align: 64)
!87 = !DILocation(line: 54, column: 6, scope: !76)
!88 = !DILocation(line: 55, column: 2, scope: !76)
!89 = !DILocalVariable(scope: !76, file: !5, line: 55, type: !27, align: 8)
!90 = !DILocation(line: 56, column: 5, scope: !76)
!91 = distinct !DISubprogram(name: "print", scope: !5, file: !5, line: 59, type: !92, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!92 = !DISubroutineType(types: !93)
!93 = !{!42, !23}
!94 = !DILocalVariable(name: "str", scope: !91, file: !5, line: 59, type: !23)
!95 = !DILocation(line: 59, scope: !91)
!96 = !DILocation(line: 61, column: 2, scope: !91)
!97 = !DILocalVariable(name: "to_print", scope: !91, file: !5, line: 61, type: !23, align: 128)
!98 = !DILocation(line: 62, column: 8, scope: !91)
!99 = distinct !DISubprogram(name: "copy", scope: !5, file: !5, line: 65, type: !100, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!100 = !DISubroutineType(types: !101)
!101 = !{!42, !41, !41, !29}
!102 = !DILocalVariable(name: "dst", scope: !99, file: !5, line: 65, type: !41)
!103 = !DILocation(line: 65, scope: !99)
!104 = !DILocalVariable(name: "src", arg: 1, scope: !99, file: !5, line: 65, type: !41)
!105 = !DILocalVariable(name: "size", arg: 2, scope: !99, file: !5, line: 65, type: !29)
!106 = !DILocation(line: 67, column: 2, scope: !99)
!107 = !DILocalVariable(name: "a0", scope: !99, file: !5, line: 67, type: !26, align: 64)
!108 = !DILocation(line: 68, column: 2, scope: !99)
!109 = !DILocalVariable(name: "a1", scope: !99, file: !5, line: 68, type: !26, align: 64)
!110 = !DILocation(line: 69, column: 2, scope: !99)
!111 = !DILocalVariable(name: "i", scope: !99, file: !5, line: 69, type: !29, align: 64)
!112 = !DILocation(line: 69, column: 6, scope: !99)
!113 = !DILocation(line: 70, column: 3, scope: !99)
!114 = !DILocalVariable(scope: !99, file: !5, line: 70, type: !27, align: 8)
!115 = distinct !DISubprogram(name: "len", scope: !5, file: !5, line: 73, type: !116, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!116 = !DISubroutineType(types: !117)
!117 = !{!29, !26}
!118 = !DILocalVariable(name: "text", scope: !115, file: !5, line: 73, type: !26)
!119 = !DILocation(line: 73, scope: !115)
!120 = !DILocation(line: 75, column: 2, scope: !115)
!121 = !DILocalVariable(name: "result", scope: !115, file: !5, line: 75, type: !29, align: 64)
!122 = !DILocation(line: 76, column: 2, scope: !115)
!123 = !DILocalVariable(name: "result", scope: !115, file: !5, line: 76, type: !29, align: 64)
!124 = !DILocation(line: 76, column: 6, scope: !115)
!125 = !DILocation(line: 76, column: 47, scope: !115)
!126 = !DILocation(line: 77, column: 5, scope: !115)
!127 = distinct !DISubprogram(name: "overload[]", scope: !5, file: !5, line: 8, type: !128, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!128 = !DISubroutineType(types: !129)
!129 = !{!27, !23, !29}
!130 = !DILocalVariable(name: "str", scope: !127, file: !5, line: 8, type: !23)
!131 = !DILocation(line: 8, scope: !127)
!132 = !DILocalVariable(name: "index", arg: 1, scope: !127, file: !5, line: 8, type: !29)
!133 = !DILocation(line: 10, column: 5, scope: !127)
!134 = distinct !DISubprogram(name: "overload+", scope: !5, file: !5, line: 13, type: !135, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!135 = !DISubroutineType(types: !136)
!136 = !{!23, !23, !26}
!137 = !DILocalVariable(name: "str", scope: !134, file: !5, line: 13, type: !23)
!138 = !DILocation(line: 13, scope: !134)
!139 = !DILocalVariable(name: "text", arg: 1, scope: !134, file: !5, line: 13, type: !26)
!140 = !DILocation(line: 15, column: 2, scope: !134)
!141 = !DILocalVariable(name: "out", scope: !134, file: !5, line: 15, type: !23, align: 128)
!142 = !DILocation(line: 16, column: 2, scope: !134)
!143 = !DILocalVariable(name: "text_len", scope: !134, file: !5, line: 16, type: !29, align: 64)
!144 = !DILocation(line: 17, column: 2, scope: !134)
!145 = !DILocalVariable(scope: !134, file: !5, line: 17, type: !29, align: 64)
!146 = !DILocation(line: 18, column: 2, scope: !134)
!147 = !DILocalVariable(scope: !134, file: !5, line: 18, type: !26, align: 64)
!148 = !DILocation(line: 19, column: 6, scope: !134)
!149 = !DILocation(line: 20, column: 6, scope: !134)
!150 = !DILocation(line: 21, column: 5, scope: !134)
!151 = distinct !DISubprogram(name: "overload", scope: !5, file: !5, line: 24, type: !152, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!152 = !DISubroutineType(types: !153)
!153 = !{!11, !23, !26}
!154 = !DILocalVariable(name: "str", scope: !151, file: !5, line: 24, type: !23)
!155 = !DILocation(line: 24, scope: !151)
!156 = !DILocalVariable(name: "text", arg: 1, scope: !151, file: !5, line: 24, type: !26)
!157 = !DILocation(line: 26, column: 2, scope: !151)
!158 = !DILocalVariable(name: "str2", scope: !151, file: !5, line: 26, type: !23, align: 128)
!159 = !DILocation(line: 27, column: 5, scope: !151)
