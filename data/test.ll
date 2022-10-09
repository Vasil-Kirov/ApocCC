; ModuleID = 'quick_test_2.apoc'
source_filename = "quick_test_2.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Foo = type { i16, i16 }
%__Internal_Context.0 = type { ptr }

@global_var = constant i8 1
@global_var.1 = constant i8 0
@global_var.2 = constant ptr null

define %Foo @some_other(ptr %__apoc_internal_context) {
entry:
  %foo = alloca %Foo, align 4
  %__apoc_internal_context1 = alloca %__Internal_Context.0, align 8
  %__ptr_context = alloca ptr, align 8
  store ptr %__apoc_internal_context, ptr %__ptr_context, align 8
  %0 = load ptr, ptr %__ptr_context, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__apoc_internal_context1, ptr align 8 %0, i64 8, i1 false)
  store i32 0, ptr %foo, align 4
  %"union member ptr4" = bitcast ptr %foo to ptr
  %"struct member ptr5" = bitcast ptr %"union member ptr4" to ptr
  store i16 12, ptr %"struct member ptr5", align 2
  %"union member ptr26" = bitcast ptr %foo to ptr
  %"struct member ptr3" = getelementptr inbounds { i16, i16 }, ptr %"union member ptr26", i32 0, i32 1
  store i16 12, ptr %"struct member ptr3", align 2
  %ret_loaded_struct = load %Foo, ptr %foo, align 4
  ret %Foo %ret_loaded_struct
}

define i32 @main() {
entry:
  %0 = alloca %Foo, align 4
  %__apoc_internal_context = alloca %__Internal_Context.0, align 8
  %foo = alloca %Foo, align 4
  %my_struct = alloca { i16, i16 }, align 2
  store i32 0, ptr %my_struct, align 2
  %"struct member ptr5" = bitcast ptr %my_struct to ptr
  store i16 12, ptr %"struct member ptr5", align 2
  %"struct member ptr1" = getelementptr inbounds { i16, i16 }, ptr %my_struct, i32 0, i32 1
  store i16 12, ptr %"struct member ptr1", align 2
  store i32 0, ptr %foo, align 4
  %1 = call %Foo @some_other(ptr %__apoc_internal_context)
  store %Foo %1, ptr %0, align 4
  %"union member ptr6" = bitcast ptr %0 to ptr
  %selected = load { i16, i16 }, ptr %"union member ptr6", align 2
  %"union member ptr27" = bitcast ptr %foo to ptr
  store { i16, i16 } %selected, ptr %"union member ptr27", align 2
  %"union member ptr38" = bitcast ptr %foo to ptr
  %selected4 = load i32, ptr %"union member ptr38", align 4
  ret i32 %selected4
}

declare void @var_arg_start(ptr, ptr)

declare void @var_arg_stop(ptr, ptr)

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { argmemonly nofree nounwind willreturn }
