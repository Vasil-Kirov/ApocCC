; ModuleID = 'quick_test_2.apoc'
source_filename = "quick_test_2.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Array_Struct = type { [1024 x i8], i32 }

@global_var = constant i8 1
@global_var.1 = constant i8 0
@global_var.2 = constant ptr null

define i32 @print_passed(ptr %__apoc_internal_context) {
entry:
  %array_list = alloca [1024 x i8], align 1
  %arr = alloca %Array_Struct, align 1024
  %__apoc_internal_context1 = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__apoc_internal_context1, align 8
  call void @llvm.memset.p0.i64(ptr align 1024 %arr, i8 0, i64 1028, i1 false)
  %0 = getelementptr inbounds %Array_Struct, ptr %arr, i32 0, i32 1
  store i32 3, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %array_list, i8 0, i64 1024, i1 false)
  %array_elem14 = bitcast ptr %array_list to ptr
  store i8 12, ptr %array_elem14, align 1
  %array_elem2 = getelementptr [1024 x i8], ptr %array_list, i64 0, i64 1
  store i8 13, ptr %array_elem2, align 1
  %array_elem3 = getelementptr [1024 x i8], ptr %array_list, i64 0, i64 2
  store i8 14, ptr %array_elem3, align 1
  %1 = getelementptr [1024 x i8], ptr %array_list, i64 0, i64 3
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 1021, i1 false)
  %2 = bitcast ptr %arr to ptr
  %3 = bitcast ptr %array_list to ptr
  call void @llvm.memcpy.p0.p0.i8(ptr align 1 %2, ptr align 1 %3, i8 0, i1 false)
  %"struct member ptr" = getelementptr inbounds %Array_Struct, ptr %arr, i32 0, i32 1
  %selected = load i32, ptr %"struct member ptr", align 4
  %4 = sub i32 %selected, 1
  %"struct member ptr415" = bitcast ptr %arr to ptr
  %elem_ptr = getelementptr [1024 x i8], ptr %"struct member ptr415", i64 0, i32 %4
  %indexed_val = load i8, ptr %elem_ptr, align 1
  %5 = add i8 %indexed_val, 74
  %"struct member ptr5" = getelementptr inbounds %Array_Struct, ptr %arr, i32 0, i32 1
  %selected6 = load i32, ptr %"struct member ptr5", align 4
  %6 = sub i32 %selected6, 1
  %"struct member ptr716" = bitcast ptr %arr to ptr
  %elem_ptr8 = getelementptr [1024 x i8], ptr %"struct member ptr716", i64 0, i32 %6
  store i8 %5, ptr %elem_ptr8, align 1
  %"struct member ptr9" = getelementptr inbounds %Array_Struct, ptr %arr, i32 0, i32 1
  %selected10 = load i32, ptr %"struct member ptr9", align 4
  %7 = sub i32 %selected10, 1
  %"struct member ptr1117" = bitcast ptr %arr to ptr
  %elem_ptr12 = getelementptr [1024 x i8], ptr %"struct member ptr1117", i64 0, i32 %7
  %indexed_val13 = load i8, ptr %elem_ptr12, align 1
  %8 = udiv i8 %indexed_val13, 2
  %cast = sext i8 %8 to i32
  ret i32 %cast
}

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i8(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i8, i1 immarg) #1

attributes #0 = { argmemonly nofree nounwind willreturn writeonly }
attributes #1 = { argmemonly nofree nounwind willreturn }
