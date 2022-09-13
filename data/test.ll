; ModuleID = 'quick_test_2.apoc'
source_filename = "quick_test_2.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Type_Info = type { %Type_Struct.1 }
%Type_Struct.1 = type { i32, i32, i8, i8, ptr, ptr, ptr }
%Type_Primitive.2 = type { i32, i32 }
%Any = type { ptr, ptr }
%String_Builder = type { [256 x i8], i64, ptr }
%string = type { ptr, i64 }
%__Internal_Context = type { ptr }

@global_var = local_unnamed_addr global double 5.432100e+04, !dbg !0
@global_var.1 = local_unnamed_addr constant i8 1, !dbg !4
@global_var.2 = local_unnamed_addr constant i8 0, !dbg !8
@global_var.3 = local_unnamed_addr constant ptr null, !dbg !10
@global_var.4 = local_unnamed_addr constant i64 256, !dbg !13
@global_var.5 = local_unnamed_addr constant i64 65536, !dbg !17
@global_var.6 = local_unnamed_addr constant i64 131072, !dbg !20
@global_var.7 = local_unnamed_addr constant i64 262144, !dbg !22
@global_var.8 = local_unnamed_addr constant i64 524288, !dbg !24
@global_var.9 = local_unnamed_addr constant i64 1048576, !dbg !26
@0 = private unnamed_addr constant [30 x i8] c"The var 1 is %\0Aand var 2 is %\00", align 1
@1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define i32 @give_num() local_unnamed_addr #0 !dbg !33 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 12, metadata !38, metadata !DIExpression()), !dbg !39
  ret i32 12, !dbg !40
}

define i32 @main() local_unnamed_addr !dbg !41 {
entry:
  %any_val2 = alloca double, align 8
  %runtime_type_info1 = alloca %Type_Info, align 16
  %any_val = alloca float, align 4
  %runtime_type_info = alloca %Type_Info, align 16
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !42, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata float 0x4011666660000000, metadata !42, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !45, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata double 4.530000e+00, metadata !45, metadata !DIExpression()), !dbg !44
  store double 1.234500e+04, ptr @global_var, align 8, !dbg !46
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !47, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata double 1.234500e+04, metadata !47, metadata !DIExpression()), !dbg !44
  store i32 4, ptr %runtime_type_info, align 32, !dbg !48
  %0 = getelementptr inbounds %Type_Primitive.2, ptr %runtime_type_info, i64 0, i32 1, !dbg !48
  store i32 9, ptr %0, align 32, !dbg !48
  store i32 0, ptr %any_val, align 4, !dbg !48
  store float 0x4011666660000000, ptr %any_val, align 4, !dbg !48
  %any_pass.fca.0.insert = insertvalue %Any poison, ptr %runtime_type_info, 0, !dbg !48
  %any_pass.fca.1.insert = insertvalue %Any %any_pass.fca.0.insert, ptr %any_val, 1, !dbg !48
  store i32 4, ptr %runtime_type_info1, align 32, !dbg !48
  %1 = getelementptr inbounds %Type_Primitive.2, ptr %runtime_type_info1, i64 0, i32 1, !dbg !48
  store i32 10, ptr %1, align 32, !dbg !48
  store i64 0, ptr %any_val2, align 8, !dbg !48
  store double 1.234500e+04, ptr %any_val2, align 8, !dbg !48
  %any_pass4.fca.0.insert = insertvalue %Any poison, ptr %runtime_type_info1, 0, !dbg !48
  %any_pass4.fca.1.insert = insertvalue %Any %any_pass4.fca.0.insert, ptr %any_val2, 1, !dbg !48
  call void (ptr, ptr, ...) @"print!@* u8!@-"(ptr poison, ptr nonnull @0, %Any %any_pass.fca.1.insert, %Any %any_pass4.fca.1.insert), !dbg !48
  ret i32 0, !dbg !49
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
define noalias ptr @mem_alloc(ptr nocapture readnone %__apoc_internal_context, i64 %size) local_unnamed_addr #2 !dbg !50 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i64 %size, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = call ptr @malloc(i64 %size), !dbg !57
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr %0, metadata !58, metadata !DIExpression()), !dbg !56
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %size, i1 false), !dbg !59
  ret ptr %0, !dbg !60
}

; Function Attrs: nofree nounwind
define void @builder_to_string(ptr nocapture readonly %__apoc_internal_context, ptr nocapture readonly %builder) local_unnamed_addr #3 !dbg !61 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata ptr %builder, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata ptr null, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !82, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !82, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata ptr null, metadata !83, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata ptr %builder, metadata !83, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 poison, metadata !84, metadata !DIExpression()), !dbg !75
  %"struct member ptr79" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 2, !dbg !85
  %selected80 = load ptr, ptr %"struct member ptr79", align 8, !dbg !85
  %.not81 = icmp eq ptr %selected80, null, !dbg !85
  br i1 %.not81, label %for.aftr, label %for.body.preheader, !dbg !85

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !85

for.body:                                         ; preds = %for.body.preheader, %for.body
  %selected84 = phi ptr [ %selected, %for.body ], [ %selected80, %for.body.preheader ]
  %out_len.083 = phi i64 [ %0, %for.body ], [ 0, %for.body.preheader ]
  %current.082 = phi ptr [ %selected84, %for.body ], [ %builder, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %out_len.083, metadata !82, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata ptr %current.082, metadata !83, metadata !DIExpression()), !dbg !75
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %current.082, i64 0, i32 1, !dbg !86
  %selected5 = load i64, ptr %"struct member ptr4", align 8, !dbg !86
  %0 = add i64 %selected5, %out_len.083, !dbg !86
  call void @llvm.dbg.value(metadata i64 %0, metadata !82, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata ptr %selected84, metadata !83, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 poison, metadata !84, metadata !DIExpression()), !dbg !75
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %selected84, i64 0, i32 2, !dbg !85
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !85
  %.not = icmp eq ptr %selected, null, !dbg !85
  br i1 %.not, label %for.aftr, label %for.body, !dbg !85

for.aftr:                                         ; preds = %for.body, %entry
  %current.0.lcssa = phi ptr [ %builder, %entry ], [ %selected84, %for.body ], !dbg !75
  %out_len.0.lcssa = phi i64 [ 0, %entry ], [ %0, %for.body ], !dbg !75
  %"struct member ptr10" = getelementptr inbounds %String_Builder, ptr %current.0.lcssa, i64 0, i32 1, !dbg !87
  %selected11 = load i64, ptr %"struct member ptr10", align 8, !dbg !87
  %1 = add i64 %selected11, %out_len.0.lcssa, !dbg !87
  call void @llvm.dbg.value(metadata i64 %1, metadata !82, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !88
  call void @llvm.dbg.value(metadata i64 %1, metadata !55, metadata !DIExpression()) #17, !dbg !88
  %2 = call ptr @malloc(i64 %1) #17, !dbg !90
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !88
  call void @llvm.dbg.value(metadata ptr %2, metadata !58, metadata !DIExpression()) #17, !dbg !88
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %1, i1 false) #17, !dbg !91
  call void @llvm.dbg.value(metadata ptr %2, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !75
  call void @llvm.dbg.value(metadata i64 %1, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !92, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !92, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !93, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 0, metadata !93, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 poison, metadata !93, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata ptr %current.0.lcssa, metadata !83, metadata !DIExpression()), !dbg !75
  %"struct member ptr2086" = getelementptr inbounds %String_Builder, ptr %current.0.lcssa, i64 0, i32 2, !dbg !94
  %selected2187 = load ptr, ptr %"struct member ptr2086", align 8, !dbg !94
  %.not7088 = icmp eq ptr %selected2187, null, !dbg !94
  br i1 %.not7088, label %for.aftr18, label %for.body17.preheader, !dbg !94

for.body17.preheader:                             ; preds = %for.aftr
  br label %for.body17, !dbg !95

for.body17:                                       ; preds = %for.body17.preheader, %copy.exit
  %lsr.iv = phi ptr [ %2, %for.body17.preheader ], [ %uglygep, %copy.exit ]
  %"struct member ptr2091" = phi ptr [ %"struct member ptr20", %copy.exit ], [ %"struct member ptr2086", %for.body17.preheader ]
  %current.190 = phi ptr [ %selected40, %copy.exit ], [ %current.0.lcssa, %for.body17.preheader ]
  %times.089 = phi i64 [ %12, %copy.exit ], [ 0, %for.body17.preheader ]
  call void @llvm.dbg.value(metadata ptr %current.190, metadata !83, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 %times.089, metadata !92, metadata !DIExpression()), !dbg !75
  %"struct member ptr36" = getelementptr inbounds %String_Builder, ptr %current.190, i64 0, i32 1, !dbg !100
  %selected37 = load i64, ptr %"struct member ptr36", align 8, !dbg !100
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %times.089), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !102
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata ptr %current.190, metadata !103, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %selected37, metadata !104, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %times.089), metadata !105, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !102
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata ptr %current.190, metadata !106, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !102
  %3 = icmp sgt i64 %selected37, 0, !dbg !95
  br i1 %3, label %for.body.i.preheader, label %copy.exit, !dbg !95

for.body.i.preheader:                             ; preds = %for.body17
  %4 = ptrtoint ptr %2 to i64, !dbg !88
  %5 = shl i64 %times.089, 8, !dbg !100
  %6 = add i64 %5, %4, !dbg !100
  %current.19096 = ptrtoint ptr %current.190 to i64, !dbg !75
  %min.iters.check = icmp ult i64 %selected37, 4, !dbg !95
  %7 = sub i64 %6, %current.19096, !dbg !95
  %diff.check = icmp ult i64 %7, 4, !dbg !95
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check, !dbg !95
  br i1 %or.cond, label %for.body.i.preheader113, label %vector.ph, !dbg !95

vector.ph:                                        ; preds = %for.body.i.preheader
  %n.vec = and i64 %selected37, -4, !dbg !95
  br label %vector.body, !dbg !95

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !108
  %8 = getelementptr i8, ptr %current.190, i64 %index, !dbg !108
  %wide.load = load <4 x i8>, ptr %8, align 1, !dbg !108
  %uglygep116 = getelementptr i8, ptr %lsr.iv, i64 %index, !dbg !108
  store <4 x i8> %wide.load, ptr %uglygep116, align 1, !dbg !108
  %index.next = add nuw i64 %index, 4, !dbg !108
  %9 = icmp eq i64 %n.vec, %index.next, !dbg !108
  br i1 %9, label %middle.block, label %vector.body, !dbg !108, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %selected37, %n.vec, !dbg !95
  br i1 %cmp.n, label %copy.exit, label %for.body.i.preheader113, !dbg !95

for.body.i.preheader113:                          ; preds = %for.body.i.preheader, %middle.block
  %i.010.i.ph = phi i64 [ 0, %for.body.i.preheader ], [ %n.vec, %middle.block ]
  br label %for.body.i, !dbg !95

for.body.i:                                       ; preds = %for.body.i.preheader113, %for.body.i
  %i.010.i = phi i64 [ %10, %for.body.i ], [ %i.010.i.ph, %for.body.i.preheader113 ]
  call void @llvm.dbg.value(metadata i64 %i.010.i, metadata !107, metadata !DIExpression()), !dbg !102
  %elem_ptr.i = getelementptr i8, ptr %current.190, i64 %i.010.i, !dbg !108
  %indexed_val.i = load i8, ptr %elem_ptr.i, align 1, !dbg !108
  %uglygep117 = getelementptr i8, ptr %lsr.iv, i64 %i.010.i, !dbg !108
  store i8 %indexed_val.i, ptr %uglygep117, align 1, !dbg !108
  %10 = add nuw nsw i64 %i.010.i, 1, !dbg !108
  call void @llvm.dbg.value(metadata i64 %10, metadata !107, metadata !DIExpression()), !dbg !102
  %11 = icmp slt i64 %10, %selected37, !dbg !95
  br i1 %11, label %for.body.i, label %copy.exit, !dbg !95, !llvm.loop !111

copy.exit:                                        ; preds = %for.body.i, %middle.block, %for.body17
  %selected40 = load ptr, ptr %"struct member ptr2091", align 8, !dbg !112
  call void @llvm.dbg.value(metadata ptr %selected40, metadata !83, metadata !DIExpression()), !dbg !75
  %12 = add i64 %times.089, 1, !dbg !113
  call void @llvm.dbg.value(metadata i64 poison, metadata !93, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 %12, metadata !92, metadata !DIExpression()), !dbg !75
  %"struct member ptr20" = getelementptr inbounds %String_Builder, ptr %selected40, i64 0, i32 2, !dbg !94
  %selected21 = load ptr, ptr %"struct member ptr20", align 8, !dbg !94
  %.not70 = icmp eq ptr %selected21, null, !dbg !94
  %uglygep = getelementptr i8, ptr %lsr.iv, i64 256, !dbg !94
  br i1 %.not70, label %for.aftr18.loopexit, label %for.body17, !dbg !94

for.aftr18.loopexit:                              ; preds = %copy.exit
  %phi.bo = shl i64 %12, 8, !dbg !114
  br label %for.aftr18, !dbg !114

for.aftr18:                                       ; preds = %for.aftr18.loopexit, %for.aftr
  %times.0.lcssa = phi i64 [ 0, %for.aftr ], [ %phi.bo, %for.aftr18.loopexit ]
  %current.1.lcssa = phi ptr [ %current.0.lcssa, %for.aftr ], [ %selected40, %for.aftr18.loopexit ], !dbg !75
  %elem_ptr44 = getelementptr i8, ptr %2, i64 %times.0.lcssa, !dbg !114
  %"struct member ptr57" = getelementptr inbounds %String_Builder, ptr %current.1.lcssa, i64 0, i32 1, !dbg !114
  %selected58 = load i64, ptr %"struct member ptr57", align 8, !dbg !114
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %elem_ptr44, metadata !101, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %current.1.lcssa, metadata !103, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 %selected58, metadata !104, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %elem_ptr44, metadata !105, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %current.1.lcssa, metadata !106, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !115
  %13 = icmp sgt i64 %selected58, 0, !dbg !117
  br i1 %13, label %for.body.i77.preheader, label %copy.exit78, !dbg !117

for.body.i77.preheader:                           ; preds = %for.aftr18
  %min.iters.check102 = icmp ult i64 %selected58, 8, !dbg !117
  br i1 %min.iters.check102, label %for.body.i77.preheader112, label %vector.memcheck97, !dbg !117

vector.memcheck97:                                ; preds = %for.body.i77.preheader
  %14 = ptrtoint ptr %current.1.lcssa to i64, !dbg !114
  %15 = ptrtoint ptr %2 to i64, !dbg !88
  %16 = add i64 %times.0.lcssa, %15, !dbg !117
  %17 = sub i64 %16, %14, !dbg !117
  %diff.check99 = icmp ult i64 %17, 4, !dbg !117
  br i1 %diff.check99, label %for.body.i77.preheader112, label %vector.ph103, !dbg !117

vector.ph103:                                     ; preds = %vector.memcheck97
  %n.vec105 = and i64 %selected58, -4, !dbg !117
  br label %vector.body108, !dbg !117

vector.body108:                                   ; preds = %vector.body108, %vector.ph103
  %index109 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body108 ], !dbg !118
  %18 = getelementptr i8, ptr %current.1.lcssa, i64 %index109, !dbg !118
  %wide.load110 = load <4 x i8>, ptr %18, align 1, !dbg !118
  %19 = getelementptr i8, ptr %elem_ptr44, i64 %index109, !dbg !118
  store <4 x i8> %wide.load110, ptr %19, align 1, !dbg !118
  %index.next111 = add nuw i64 %index109, 4, !dbg !118
  %20 = icmp eq i64 %n.vec105, %index.next111, !dbg !118
  br i1 %20, label %middle.block100, label %vector.body108, !dbg !118, !llvm.loop !119

middle.block100:                                  ; preds = %vector.body108
  %cmp.n107 = icmp eq i64 %selected58, %n.vec105, !dbg !117
  br i1 %cmp.n107, label %copy.exit78, label %for.body.i77.preheader112, !dbg !117

for.body.i77.preheader112:                        ; preds = %vector.memcheck97, %for.body.i77.preheader, %middle.block100
  %i.010.i73.ph = phi i64 [ 0, %vector.memcheck97 ], [ 0, %for.body.i77.preheader ], [ %n.vec105, %middle.block100 ]
  br label %for.body.i77, !dbg !117

for.body.i77:                                     ; preds = %for.body.i77.preheader112, %for.body.i77
  %i.010.i73 = phi i64 [ %21, %for.body.i77 ], [ %i.010.i73.ph, %for.body.i77.preheader112 ]
  call void @llvm.dbg.value(metadata i64 %i.010.i73, metadata !107, metadata !DIExpression()), !dbg !115
  %elem_ptr.i74 = getelementptr i8, ptr %current.1.lcssa, i64 %i.010.i73, !dbg !118
  %indexed_val.i75 = load i8, ptr %elem_ptr.i74, align 1, !dbg !118
  %elem_ptr6.i76 = getelementptr i8, ptr %elem_ptr44, i64 %i.010.i73, !dbg !118
  store i8 %indexed_val.i75, ptr %elem_ptr6.i76, align 1, !dbg !118
  %21 = add nuw nsw i64 %i.010.i73, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %21, metadata !107, metadata !DIExpression()), !dbg !115
  %22 = icmp slt i64 %21, %selected58, !dbg !117
  br i1 %22, label %for.body.i77, label %copy.exit78, !dbg !117, !llvm.loop !120

copy.exit78:                                      ; preds = %for.body.i77, %middle.block100, %for.aftr18
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 undef), metadata !82, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !75
  %23 = load ptr, ptr %__apoc_internal_context, align 8, !dbg !121
  store ptr %2, ptr %23, align 8, !dbg !121
  %.repack71 = getelementptr inbounds %string, ptr %23, i64 0, i32 1, !dbg !121
  store i64 %1, ptr %.repack71, align 8, !dbg !121
  ret void, !dbg !121
}

; Function Attrs: nofree nounwind
define void @init_builder(ptr nocapture readonly %__apoc_internal_context, ptr nocapture readonly %text) local_unnamed_addr #3 !dbg !122 {
entry:
  %out = alloca %String_Builder, align 256
  call void @llvm.dbg.value(metadata ptr null, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata ptr %text, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(272) %out, i8 0, i64 272, i1 false), !dbg !127
  call void @llvm.dbg.declare(metadata ptr %out, metadata !128, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata ptr null, metadata !129, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata ptr %out, metadata !129, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 0, metadata !130, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 0, metadata !130, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 0, metadata !131, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 0, metadata !131, metadata !DIExpression()), !dbg !126
  %indexed_val1311 = load i8, ptr %text, align 1, !dbg !132
  %.not1312 = icmp eq i8 %indexed_val1311, 0, !dbg !132
  br i1 %.not1312, label %for.aftr, label %for.body.preheader, !dbg !132

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !133

for.body:                                         ; preds = %for.body.preheader, %if.aftr
  %indexed_val1316 = phi i8 [ %indexed_val, %if.aftr ], [ %indexed_val1311, %for.body.preheader ]
  %i.01315 = phi i64 [ %5, %if.aftr ], [ 0, %for.body.preheader ]
  %current.01314 = phi ptr [ %current.1, %if.aftr ], [ %out, %for.body.preheader ]
  %times.01313 = phi i64 [ %times.1, %if.aftr ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.01315, metadata !131, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata ptr %current.01314, metadata !129, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %times.01313, metadata !130, metadata !DIExpression()), !dbg !126
  %elem_ptr6 = getelementptr [256 x i8], ptr %current.01314, i64 0, i64 %i.01315, !dbg !134
  store i8 %indexed_val1316, ptr %elem_ptr6, align 1, !dbg !134
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %current.01314, i64 0, i32 1, !dbg !135
  %selected = load i64, ptr %"struct member ptr8", align 8, !dbg !135
  %0 = add i64 %selected, 1, !dbg !135
  store i64 %0, ptr %"struct member ptr8", align 8, !dbg !135
  %1 = icmp eq i64 %i.01315, 256, !dbg !136
  br i1 %1, label %if.true, label %if.aftr, !dbg !133

for.aftr:                                         ; preds = %if.aftr, %entry
  %.fca.2.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 2, !dbg !137
  %.fca.1.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 1, !dbg !137
  %.fca.0.255.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 255, !dbg !137
  %.fca.0.254.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 254, !dbg !137
  %.fca.0.253.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 253, !dbg !137
  %.fca.0.252.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 252, !dbg !137
  %.fca.0.251.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 251, !dbg !137
  %.fca.0.250.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 250, !dbg !137
  %.fca.0.249.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 249, !dbg !137
  %.fca.0.248.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 248, !dbg !137
  %.fca.0.247.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 247, !dbg !137
  %.fca.0.246.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 246, !dbg !137
  %.fca.0.245.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 245, !dbg !137
  %.fca.0.244.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 244, !dbg !137
  %.fca.0.243.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 243, !dbg !137
  %.fca.0.242.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 242, !dbg !137
  %.fca.0.241.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 241, !dbg !137
  %.fca.0.240.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 240, !dbg !137
  %.fca.0.239.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 239, !dbg !137
  %.fca.0.238.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 238, !dbg !137
  %.fca.0.237.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 237, !dbg !137
  %.fca.0.236.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 236, !dbg !137
  %.fca.0.235.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 235, !dbg !137
  %.fca.0.234.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 234, !dbg !137
  %.fca.0.233.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 233, !dbg !137
  %.fca.0.232.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 232, !dbg !137
  %.fca.0.231.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 231, !dbg !137
  %.fca.0.230.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 230, !dbg !137
  %.fca.0.229.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 229, !dbg !137
  %.fca.0.228.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 228, !dbg !137
  %.fca.0.227.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 227, !dbg !137
  %.fca.0.226.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 226, !dbg !137
  %.fca.0.225.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 225, !dbg !137
  %.fca.0.224.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 224, !dbg !137
  %.fca.0.223.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 223, !dbg !137
  %.fca.0.222.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 222, !dbg !137
  %.fca.0.221.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 221, !dbg !137
  %.fca.0.220.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 220, !dbg !137
  %.fca.0.219.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 219, !dbg !137
  %.fca.0.218.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 218, !dbg !137
  %.fca.0.217.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 217, !dbg !137
  %.fca.0.216.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 216, !dbg !137
  %.fca.0.215.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 215, !dbg !137
  %.fca.0.214.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 214, !dbg !137
  %.fca.0.213.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 213, !dbg !137
  %.fca.0.212.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 212, !dbg !137
  %.fca.0.211.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 211, !dbg !137
  %.fca.0.210.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 210, !dbg !137
  %.fca.0.209.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 209, !dbg !137
  %.fca.0.208.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 208, !dbg !137
  %.fca.0.207.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 207, !dbg !137
  %.fca.0.206.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 206, !dbg !137
  %.fca.0.205.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 205, !dbg !137
  %.fca.0.204.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 204, !dbg !137
  %.fca.0.203.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 203, !dbg !137
  %.fca.0.202.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 202, !dbg !137
  %.fca.0.201.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 201, !dbg !137
  %.fca.0.200.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 200, !dbg !137
  %.fca.0.199.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 199, !dbg !137
  %.fca.0.198.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 198, !dbg !137
  %.fca.0.197.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 197, !dbg !137
  %.fca.0.196.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 196, !dbg !137
  %.fca.0.195.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 195, !dbg !137
  %.fca.0.194.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 194, !dbg !137
  %.fca.0.193.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 193, !dbg !137
  %.fca.0.192.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 192, !dbg !137
  %.fca.0.191.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 191, !dbg !137
  %.fca.0.190.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 190, !dbg !137
  %.fca.0.189.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 189, !dbg !137
  %.fca.0.188.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 188, !dbg !137
  %.fca.0.187.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 187, !dbg !137
  %.fca.0.186.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 186, !dbg !137
  %.fca.0.185.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 185, !dbg !137
  %.fca.0.184.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 184, !dbg !137
  %.fca.0.183.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 183, !dbg !137
  %.fca.0.182.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 182, !dbg !137
  %.fca.0.181.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 181, !dbg !137
  %.fca.0.180.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 180, !dbg !137
  %.fca.0.179.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 179, !dbg !137
  %.fca.0.178.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 178, !dbg !137
  %.fca.0.177.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 177, !dbg !137
  %.fca.0.176.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 176, !dbg !137
  %.fca.0.175.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 175, !dbg !137
  %.fca.0.174.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 174, !dbg !137
  %.fca.0.173.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 173, !dbg !137
  %.fca.0.172.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 172, !dbg !137
  %.fca.0.171.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 171, !dbg !137
  %.fca.0.170.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 170, !dbg !137
  %.fca.0.169.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 169, !dbg !137
  %.fca.0.168.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 168, !dbg !137
  %.fca.0.167.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 167, !dbg !137
  %.fca.0.166.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 166, !dbg !137
  %.fca.0.165.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 165, !dbg !137
  %.fca.0.164.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 164, !dbg !137
  %.fca.0.163.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 163, !dbg !137
  %.fca.0.162.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 162, !dbg !137
  %.fca.0.161.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 161, !dbg !137
  %.fca.0.160.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 160, !dbg !137
  %.fca.0.159.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 159, !dbg !137
  %.fca.0.158.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 158, !dbg !137
  %.fca.0.157.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 157, !dbg !137
  %.fca.0.156.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 156, !dbg !137
  %.fca.0.155.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 155, !dbg !137
  %.fca.0.154.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 154, !dbg !137
  %.fca.0.153.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 153, !dbg !137
  %.fca.0.152.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 152, !dbg !137
  %.fca.0.151.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 151, !dbg !137
  %.fca.0.150.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 150, !dbg !137
  %.fca.0.149.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 149, !dbg !137
  %.fca.0.148.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 148, !dbg !137
  %.fca.0.147.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 147, !dbg !137
  %.fca.0.146.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 146, !dbg !137
  %.fca.0.145.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 145, !dbg !137
  %.fca.0.144.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 144, !dbg !137
  %.fca.0.143.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 143, !dbg !137
  %.fca.0.142.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 142, !dbg !137
  %.fca.0.141.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 141, !dbg !137
  %.fca.0.140.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 140, !dbg !137
  %.fca.0.139.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 139, !dbg !137
  %.fca.0.138.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 138, !dbg !137
  %.fca.0.137.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 137, !dbg !137
  %.fca.0.136.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 136, !dbg !137
  %.fca.0.135.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 135, !dbg !137
  %.fca.0.134.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 134, !dbg !137
  %.fca.0.133.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 133, !dbg !137
  %.fca.0.132.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 132, !dbg !137
  %.fca.0.131.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 131, !dbg !137
  %.fca.0.130.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 130, !dbg !137
  %.fca.0.129.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 129, !dbg !137
  %.fca.0.128.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 128, !dbg !137
  %.fca.0.127.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 127, !dbg !137
  %.fca.0.126.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 126, !dbg !137
  %.fca.0.125.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 125, !dbg !137
  %.fca.0.124.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 124, !dbg !137
  %.fca.0.123.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 123, !dbg !137
  %.fca.0.122.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 122, !dbg !137
  %.fca.0.121.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 121, !dbg !137
  %.fca.0.120.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 120, !dbg !137
  %.fca.0.119.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 119, !dbg !137
  %.fca.0.118.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 118, !dbg !137
  %.fca.0.117.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 117, !dbg !137
  %.fca.0.116.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 116, !dbg !137
  %.fca.0.115.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 115, !dbg !137
  %.fca.0.114.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 114, !dbg !137
  %.fca.0.113.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 113, !dbg !137
  %.fca.0.112.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 112, !dbg !137
  %.fca.0.111.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 111, !dbg !137
  %.fca.0.110.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 110, !dbg !137
  %.fca.0.109.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 109, !dbg !137
  %.fca.0.108.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 108, !dbg !137
  %.fca.0.107.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 107, !dbg !137
  %.fca.0.106.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 106, !dbg !137
  %.fca.0.105.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 105, !dbg !137
  %.fca.0.104.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 104, !dbg !137
  %.fca.0.103.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 103, !dbg !137
  %.fca.0.102.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 102, !dbg !137
  %.fca.0.101.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 101, !dbg !137
  %.fca.0.100.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 100, !dbg !137
  %.fca.0.99.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 99, !dbg !137
  %.fca.0.98.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 98, !dbg !137
  %.fca.0.97.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 97, !dbg !137
  %.fca.0.96.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 96, !dbg !137
  %.fca.0.95.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 95, !dbg !137
  %.fca.0.94.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 94, !dbg !137
  %.fca.0.93.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 93, !dbg !137
  %.fca.0.92.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 92, !dbg !137
  %.fca.0.91.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 91, !dbg !137
  %.fca.0.90.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 90, !dbg !137
  %.fca.0.89.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 89, !dbg !137
  %.fca.0.88.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 88, !dbg !137
  %.fca.0.87.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 87, !dbg !137
  %.fca.0.86.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 86, !dbg !137
  %.fca.0.85.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 85, !dbg !137
  %.fca.0.84.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 84, !dbg !137
  %.fca.0.83.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 83, !dbg !137
  %.fca.0.82.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 82, !dbg !137
  %.fca.0.81.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 81, !dbg !137
  %.fca.0.80.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 80, !dbg !137
  %.fca.0.79.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 79, !dbg !137
  %.fca.0.78.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 78, !dbg !137
  %.fca.0.77.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 77, !dbg !137
  %.fca.0.76.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 76, !dbg !137
  %.fca.0.75.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 75, !dbg !137
  %.fca.0.74.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 74, !dbg !137
  %.fca.0.73.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 73, !dbg !137
  %.fca.0.72.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 72, !dbg !137
  %.fca.0.71.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 71, !dbg !137
  %.fca.0.70.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 70, !dbg !137
  %.fca.0.69.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 69, !dbg !137
  %.fca.0.68.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 68, !dbg !137
  %.fca.0.67.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 67, !dbg !137
  %.fca.0.66.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 66, !dbg !137
  %.fca.0.65.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 65, !dbg !137
  %.fca.0.64.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 64, !dbg !137
  %.fca.0.63.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 63, !dbg !137
  %.fca.0.62.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 62, !dbg !137
  %.fca.0.61.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 61, !dbg !137
  %.fca.0.60.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 60, !dbg !137
  %.fca.0.59.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 59, !dbg !137
  %.fca.0.58.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 58, !dbg !137
  %.fca.0.57.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 57, !dbg !137
  %.fca.0.56.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 56, !dbg !137
  %.fca.0.55.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 55, !dbg !137
  %.fca.0.54.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 54, !dbg !137
  %.fca.0.53.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 53, !dbg !137
  %.fca.0.52.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 52, !dbg !137
  %.fca.0.51.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 51, !dbg !137
  %.fca.0.50.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 50, !dbg !137
  %.fca.0.49.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 49, !dbg !137
  %.fca.0.48.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 48, !dbg !137
  %.fca.0.47.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 47, !dbg !137
  %.fca.0.46.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 46, !dbg !137
  %.fca.0.45.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 45, !dbg !137
  %.fca.0.44.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 44, !dbg !137
  %.fca.0.43.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 43, !dbg !137
  %.fca.0.42.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 42, !dbg !137
  %.fca.0.41.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 41, !dbg !137
  %.fca.0.40.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 40, !dbg !137
  %.fca.0.39.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 39, !dbg !137
  %.fca.0.38.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 38, !dbg !137
  %.fca.0.37.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 37, !dbg !137
  %.fca.0.36.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 36, !dbg !137
  %.fca.0.35.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 35, !dbg !137
  %.fca.0.34.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 34, !dbg !137
  %.fca.0.33.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 33, !dbg !137
  %.fca.0.32.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 32, !dbg !137
  %.fca.0.31.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 31, !dbg !137
  %.fca.0.30.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 30, !dbg !137
  %.fca.0.29.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 29, !dbg !137
  %.fca.0.28.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 28, !dbg !137
  %.fca.0.27.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 27, !dbg !137
  %.fca.0.26.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 26, !dbg !137
  %.fca.0.25.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 25, !dbg !137
  %.fca.0.24.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 24, !dbg !137
  %.fca.0.23.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 23, !dbg !137
  %.fca.0.22.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 22, !dbg !137
  %.fca.0.21.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 21, !dbg !137
  %.fca.0.20.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 20, !dbg !137
  %.fca.0.19.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 19, !dbg !137
  %.fca.0.18.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 18, !dbg !137
  %.fca.0.17.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 17, !dbg !137
  %.fca.0.16.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 16, !dbg !137
  %.fca.0.15.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 15, !dbg !137
  %.fca.0.14.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 14, !dbg !137
  %.fca.0.13.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 13, !dbg !137
  %.fca.0.12.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 12, !dbg !137
  %.fca.0.11.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 11, !dbg !137
  %.fca.0.10.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 10, !dbg !137
  %.fca.0.9.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 9, !dbg !137
  %.fca.0.8.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 8, !dbg !137
  %.fca.0.7.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 7, !dbg !137
  %.fca.0.6.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 6, !dbg !137
  %.fca.0.5.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 5, !dbg !137
  %.fca.0.4.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 4, !dbg !137
  %.fca.0.3.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 3, !dbg !137
  %.fca.0.2.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 2, !dbg !137
  %.fca.0.1.gep = getelementptr inbounds %String_Builder, ptr %out, i64 0, i32 0, i64 1, !dbg !137
  %2 = load ptr, ptr %__apoc_internal_context, align 8, !dbg !138
  %.fca.0.0.load18 = load i8, ptr %out, align 256, !dbg !138
  %.fca.0.1.load21 = load i8, ptr %.fca.0.1.gep, align 1, !dbg !138
  %.fca.0.2.load24 = load i8, ptr %.fca.0.2.gep, align 2, !dbg !138
  %.fca.0.3.load27 = load i8, ptr %.fca.0.3.gep, align 1, !dbg !138
  %.fca.0.4.load30 = load i8, ptr %.fca.0.4.gep, align 4, !dbg !138
  %.fca.0.5.load33 = load i8, ptr %.fca.0.5.gep, align 1, !dbg !138
  %.fca.0.6.load36 = load i8, ptr %.fca.0.6.gep, align 2, !dbg !138
  %.fca.0.7.load39 = load i8, ptr %.fca.0.7.gep, align 1, !dbg !138
  %.fca.0.8.load42 = load i8, ptr %.fca.0.8.gep, align 8, !dbg !138
  %.fca.0.9.load45 = load i8, ptr %.fca.0.9.gep, align 1, !dbg !138
  %.fca.0.10.load48 = load i8, ptr %.fca.0.10.gep, align 2, !dbg !138
  %.fca.0.11.load51 = load i8, ptr %.fca.0.11.gep, align 1, !dbg !138
  %.fca.0.12.load54 = load i8, ptr %.fca.0.12.gep, align 4, !dbg !138
  %.fca.0.13.load57 = load i8, ptr %.fca.0.13.gep, align 1, !dbg !138
  %.fca.0.14.load60 = load i8, ptr %.fca.0.14.gep, align 2, !dbg !138
  %.fca.0.15.load63 = load i8, ptr %.fca.0.15.gep, align 1, !dbg !138
  %.fca.0.16.load66 = load i8, ptr %.fca.0.16.gep, align 16, !dbg !138
  %.fca.0.17.load69 = load i8, ptr %.fca.0.17.gep, align 1, !dbg !138
  %.fca.0.18.load72 = load i8, ptr %.fca.0.18.gep, align 2, !dbg !138
  %.fca.0.19.load75 = load i8, ptr %.fca.0.19.gep, align 1, !dbg !138
  %.fca.0.20.load78 = load i8, ptr %.fca.0.20.gep, align 4, !dbg !138
  %.fca.0.21.load81 = load i8, ptr %.fca.0.21.gep, align 1, !dbg !138
  %.fca.0.22.load84 = load i8, ptr %.fca.0.22.gep, align 2, !dbg !138
  %.fca.0.23.load87 = load i8, ptr %.fca.0.23.gep, align 1, !dbg !138
  %.fca.0.24.load90 = load i8, ptr %.fca.0.24.gep, align 8, !dbg !138
  %.fca.0.25.load93 = load i8, ptr %.fca.0.25.gep, align 1, !dbg !138
  %.fca.0.26.load96 = load i8, ptr %.fca.0.26.gep, align 2, !dbg !138
  %.fca.0.27.load99 = load i8, ptr %.fca.0.27.gep, align 1, !dbg !138
  %.fca.0.28.load102 = load i8, ptr %.fca.0.28.gep, align 4, !dbg !138
  %.fca.0.29.load105 = load i8, ptr %.fca.0.29.gep, align 1, !dbg !138
  %.fca.0.30.load108 = load i8, ptr %.fca.0.30.gep, align 2, !dbg !138
  %.fca.0.31.load111 = load i8, ptr %.fca.0.31.gep, align 1, !dbg !138
  %.fca.0.32.load114 = load i8, ptr %.fca.0.32.gep, align 32, !dbg !138
  %.fca.0.33.load117 = load i8, ptr %.fca.0.33.gep, align 1, !dbg !138
  %.fca.0.34.load120 = load i8, ptr %.fca.0.34.gep, align 2, !dbg !138
  %.fca.0.35.load123 = load i8, ptr %.fca.0.35.gep, align 1, !dbg !138
  %.fca.0.36.load126 = load i8, ptr %.fca.0.36.gep, align 4, !dbg !138
  %.fca.0.37.load129 = load i8, ptr %.fca.0.37.gep, align 1, !dbg !138
  %.fca.0.38.load132 = load i8, ptr %.fca.0.38.gep, align 2, !dbg !138
  %.fca.0.39.load135 = load i8, ptr %.fca.0.39.gep, align 1, !dbg !138
  %.fca.0.40.load138 = load i8, ptr %.fca.0.40.gep, align 8, !dbg !138
  %.fca.0.41.load141 = load i8, ptr %.fca.0.41.gep, align 1, !dbg !138
  %.fca.0.42.load144 = load i8, ptr %.fca.0.42.gep, align 2, !dbg !138
  %.fca.0.43.load147 = load i8, ptr %.fca.0.43.gep, align 1, !dbg !138
  %.fca.0.44.load150 = load i8, ptr %.fca.0.44.gep, align 4, !dbg !138
  %.fca.0.45.load153 = load i8, ptr %.fca.0.45.gep, align 1, !dbg !138
  %.fca.0.46.load156 = load i8, ptr %.fca.0.46.gep, align 2, !dbg !138
  %.fca.0.47.load159 = load i8, ptr %.fca.0.47.gep, align 1, !dbg !138
  %.fca.0.48.load162 = load i8, ptr %.fca.0.48.gep, align 16, !dbg !138
  %.fca.0.49.load165 = load i8, ptr %.fca.0.49.gep, align 1, !dbg !138
  %.fca.0.50.load168 = load i8, ptr %.fca.0.50.gep, align 2, !dbg !138
  %.fca.0.51.load171 = load i8, ptr %.fca.0.51.gep, align 1, !dbg !138
  %.fca.0.52.load174 = load i8, ptr %.fca.0.52.gep, align 4, !dbg !138
  %.fca.0.53.load177 = load i8, ptr %.fca.0.53.gep, align 1, !dbg !138
  %.fca.0.54.load180 = load i8, ptr %.fca.0.54.gep, align 2, !dbg !138
  %.fca.0.55.load183 = load i8, ptr %.fca.0.55.gep, align 1, !dbg !138
  %.fca.0.56.load186 = load i8, ptr %.fca.0.56.gep, align 8, !dbg !138
  %.fca.0.57.load189 = load i8, ptr %.fca.0.57.gep, align 1, !dbg !138
  %.fca.0.58.load192 = load i8, ptr %.fca.0.58.gep, align 2, !dbg !138
  %.fca.0.59.load195 = load i8, ptr %.fca.0.59.gep, align 1, !dbg !138
  %.fca.0.60.load198 = load i8, ptr %.fca.0.60.gep, align 4, !dbg !138
  %.fca.0.61.load201 = load i8, ptr %.fca.0.61.gep, align 1, !dbg !138
  %.fca.0.62.load204 = load i8, ptr %.fca.0.62.gep, align 2, !dbg !138
  %.fca.0.63.load207 = load i8, ptr %.fca.0.63.gep, align 1, !dbg !138
  %.fca.0.64.load210 = load i8, ptr %.fca.0.64.gep, align 64, !dbg !138
  %.fca.0.65.load213 = load i8, ptr %.fca.0.65.gep, align 1, !dbg !138
  %.fca.0.66.load216 = load i8, ptr %.fca.0.66.gep, align 2, !dbg !138
  %.fca.0.67.load219 = load i8, ptr %.fca.0.67.gep, align 1, !dbg !138
  %.fca.0.68.load222 = load i8, ptr %.fca.0.68.gep, align 4, !dbg !138
  %.fca.0.69.load225 = load i8, ptr %.fca.0.69.gep, align 1, !dbg !138
  %.fca.0.70.load228 = load i8, ptr %.fca.0.70.gep, align 2, !dbg !138
  %.fca.0.71.load231 = load i8, ptr %.fca.0.71.gep, align 1, !dbg !138
  %.fca.0.72.load234 = load i8, ptr %.fca.0.72.gep, align 8, !dbg !138
  %.fca.0.73.load237 = load i8, ptr %.fca.0.73.gep, align 1, !dbg !138
  %.fca.0.74.load240 = load i8, ptr %.fca.0.74.gep, align 2, !dbg !138
  %.fca.0.75.load243 = load i8, ptr %.fca.0.75.gep, align 1, !dbg !138
  %.fca.0.76.load246 = load i8, ptr %.fca.0.76.gep, align 4, !dbg !138
  %.fca.0.77.load249 = load i8, ptr %.fca.0.77.gep, align 1, !dbg !138
  %.fca.0.78.load252 = load i8, ptr %.fca.0.78.gep, align 2, !dbg !138
  %.fca.0.79.load255 = load i8, ptr %.fca.0.79.gep, align 1, !dbg !138
  %.fca.0.80.load258 = load i8, ptr %.fca.0.80.gep, align 16, !dbg !138
  %.fca.0.81.load261 = load i8, ptr %.fca.0.81.gep, align 1, !dbg !138
  %.fca.0.82.load264 = load i8, ptr %.fca.0.82.gep, align 2, !dbg !138
  %.fca.0.83.load267 = load i8, ptr %.fca.0.83.gep, align 1, !dbg !138
  %.fca.0.84.load270 = load i8, ptr %.fca.0.84.gep, align 4, !dbg !138
  %.fca.0.85.load273 = load i8, ptr %.fca.0.85.gep, align 1, !dbg !138
  %.fca.0.86.load276 = load i8, ptr %.fca.0.86.gep, align 2, !dbg !138
  %.fca.0.87.load279 = load i8, ptr %.fca.0.87.gep, align 1, !dbg !138
  %.fca.0.88.load282 = load i8, ptr %.fca.0.88.gep, align 8, !dbg !138
  %.fca.0.89.load285 = load i8, ptr %.fca.0.89.gep, align 1, !dbg !138
  %.fca.0.90.load288 = load i8, ptr %.fca.0.90.gep, align 2, !dbg !138
  %.fca.0.91.load291 = load i8, ptr %.fca.0.91.gep, align 1, !dbg !138
  %.fca.0.92.load294 = load i8, ptr %.fca.0.92.gep, align 4, !dbg !138
  %.fca.0.93.load297 = load i8, ptr %.fca.0.93.gep, align 1, !dbg !138
  %.fca.0.94.load300 = load i8, ptr %.fca.0.94.gep, align 2, !dbg !138
  %.fca.0.95.load303 = load i8, ptr %.fca.0.95.gep, align 1, !dbg !138
  %.fca.0.96.load306 = load i8, ptr %.fca.0.96.gep, align 32, !dbg !138
  %.fca.0.97.load309 = load i8, ptr %.fca.0.97.gep, align 1, !dbg !138
  %.fca.0.98.load312 = load i8, ptr %.fca.0.98.gep, align 2, !dbg !138
  %.fca.0.99.load315 = load i8, ptr %.fca.0.99.gep, align 1, !dbg !138
  %.fca.0.100.load318 = load i8, ptr %.fca.0.100.gep, align 4, !dbg !138
  %.fca.0.101.load321 = load i8, ptr %.fca.0.101.gep, align 1, !dbg !138
  %.fca.0.102.load324 = load i8, ptr %.fca.0.102.gep, align 2, !dbg !138
  %.fca.0.103.load327 = load i8, ptr %.fca.0.103.gep, align 1, !dbg !138
  %.fca.0.104.load330 = load i8, ptr %.fca.0.104.gep, align 8, !dbg !138
  %.fca.0.105.load333 = load i8, ptr %.fca.0.105.gep, align 1, !dbg !138
  %.fca.0.106.load336 = load i8, ptr %.fca.0.106.gep, align 2, !dbg !138
  %.fca.0.107.load339 = load i8, ptr %.fca.0.107.gep, align 1, !dbg !138
  %.fca.0.108.load342 = load i8, ptr %.fca.0.108.gep, align 4, !dbg !138
  %.fca.0.109.load345 = load i8, ptr %.fca.0.109.gep, align 1, !dbg !138
  %.fca.0.110.load348 = load i8, ptr %.fca.0.110.gep, align 2, !dbg !138
  %.fca.0.111.load351 = load i8, ptr %.fca.0.111.gep, align 1, !dbg !138
  %.fca.0.112.load354 = load i8, ptr %.fca.0.112.gep, align 16, !dbg !138
  %.fca.0.113.load357 = load i8, ptr %.fca.0.113.gep, align 1, !dbg !138
  %.fca.0.114.load360 = load i8, ptr %.fca.0.114.gep, align 2, !dbg !138
  %.fca.0.115.load363 = load i8, ptr %.fca.0.115.gep, align 1, !dbg !138
  %.fca.0.116.load366 = load i8, ptr %.fca.0.116.gep, align 4, !dbg !138
  %.fca.0.117.load369 = load i8, ptr %.fca.0.117.gep, align 1, !dbg !138
  %.fca.0.118.load372 = load i8, ptr %.fca.0.118.gep, align 2, !dbg !138
  %.fca.0.119.load375 = load i8, ptr %.fca.0.119.gep, align 1, !dbg !138
  %.fca.0.120.load378 = load i8, ptr %.fca.0.120.gep, align 8, !dbg !138
  %.fca.0.121.load381 = load i8, ptr %.fca.0.121.gep, align 1, !dbg !138
  %.fca.0.122.load384 = load i8, ptr %.fca.0.122.gep, align 2, !dbg !138
  %.fca.0.123.load387 = load i8, ptr %.fca.0.123.gep, align 1, !dbg !138
  %.fca.0.124.load390 = load i8, ptr %.fca.0.124.gep, align 4, !dbg !138
  %.fca.0.125.load393 = load i8, ptr %.fca.0.125.gep, align 1, !dbg !138
  %.fca.0.126.load396 = load i8, ptr %.fca.0.126.gep, align 2, !dbg !138
  %.fca.0.127.load399 = load i8, ptr %.fca.0.127.gep, align 1, !dbg !138
  %.fca.0.128.load402 = load i8, ptr %.fca.0.128.gep, align 128, !dbg !138
  %.fca.0.129.load405 = load i8, ptr %.fca.0.129.gep, align 1, !dbg !138
  %.fca.0.130.load408 = load i8, ptr %.fca.0.130.gep, align 2, !dbg !138
  %.fca.0.131.load411 = load i8, ptr %.fca.0.131.gep, align 1, !dbg !138
  %.fca.0.132.load414 = load i8, ptr %.fca.0.132.gep, align 4, !dbg !138
  %.fca.0.133.load417 = load i8, ptr %.fca.0.133.gep, align 1, !dbg !138
  %.fca.0.134.load420 = load i8, ptr %.fca.0.134.gep, align 2, !dbg !138
  %.fca.0.135.load423 = load i8, ptr %.fca.0.135.gep, align 1, !dbg !138
  %.fca.0.136.load426 = load i8, ptr %.fca.0.136.gep, align 8, !dbg !138
  %.fca.0.137.load429 = load i8, ptr %.fca.0.137.gep, align 1, !dbg !138
  %.fca.0.138.load432 = load i8, ptr %.fca.0.138.gep, align 2, !dbg !138
  %.fca.0.139.load435 = load i8, ptr %.fca.0.139.gep, align 1, !dbg !138
  %.fca.0.140.load438 = load i8, ptr %.fca.0.140.gep, align 4, !dbg !138
  %.fca.0.141.load441 = load i8, ptr %.fca.0.141.gep, align 1, !dbg !138
  %.fca.0.142.load444 = load i8, ptr %.fca.0.142.gep, align 2, !dbg !138
  %.fca.0.143.load447 = load i8, ptr %.fca.0.143.gep, align 1, !dbg !138
  %.fca.0.144.load450 = load i8, ptr %.fca.0.144.gep, align 16, !dbg !138
  %.fca.0.145.load453 = load i8, ptr %.fca.0.145.gep, align 1, !dbg !138
  %.fca.0.146.load456 = load i8, ptr %.fca.0.146.gep, align 2, !dbg !138
  %.fca.0.147.load459 = load i8, ptr %.fca.0.147.gep, align 1, !dbg !138
  %.fca.0.148.load462 = load i8, ptr %.fca.0.148.gep, align 4, !dbg !138
  %.fca.0.149.load465 = load i8, ptr %.fca.0.149.gep, align 1, !dbg !138
  %.fca.0.150.load468 = load i8, ptr %.fca.0.150.gep, align 2, !dbg !138
  %.fca.0.151.load471 = load i8, ptr %.fca.0.151.gep, align 1, !dbg !138
  %.fca.0.152.load474 = load i8, ptr %.fca.0.152.gep, align 8, !dbg !138
  %.fca.0.153.load477 = load i8, ptr %.fca.0.153.gep, align 1, !dbg !138
  %.fca.0.154.load480 = load i8, ptr %.fca.0.154.gep, align 2, !dbg !138
  %.fca.0.155.load483 = load i8, ptr %.fca.0.155.gep, align 1, !dbg !138
  %.fca.0.156.load486 = load i8, ptr %.fca.0.156.gep, align 4, !dbg !138
  %.fca.0.157.load489 = load i8, ptr %.fca.0.157.gep, align 1, !dbg !138
  %.fca.0.158.load492 = load i8, ptr %.fca.0.158.gep, align 2, !dbg !138
  %.fca.0.159.load495 = load i8, ptr %.fca.0.159.gep, align 1, !dbg !138
  %.fca.0.160.load498 = load i8, ptr %.fca.0.160.gep, align 32, !dbg !138
  %.fca.0.161.load501 = load i8, ptr %.fca.0.161.gep, align 1, !dbg !138
  %.fca.0.162.load504 = load i8, ptr %.fca.0.162.gep, align 2, !dbg !138
  %.fca.0.163.load507 = load i8, ptr %.fca.0.163.gep, align 1, !dbg !138
  %.fca.0.164.load510 = load i8, ptr %.fca.0.164.gep, align 4, !dbg !138
  %.fca.0.165.load513 = load i8, ptr %.fca.0.165.gep, align 1, !dbg !138
  %.fca.0.166.load516 = load i8, ptr %.fca.0.166.gep, align 2, !dbg !138
  %.fca.0.167.load519 = load i8, ptr %.fca.0.167.gep, align 1, !dbg !138
  %.fca.0.168.load522 = load i8, ptr %.fca.0.168.gep, align 8, !dbg !138
  %.fca.0.169.load525 = load i8, ptr %.fca.0.169.gep, align 1, !dbg !138
  %.fca.0.170.load528 = load i8, ptr %.fca.0.170.gep, align 2, !dbg !138
  %.fca.0.171.load531 = load i8, ptr %.fca.0.171.gep, align 1, !dbg !138
  %.fca.0.172.load534 = load i8, ptr %.fca.0.172.gep, align 4, !dbg !138
  %.fca.0.173.load537 = load i8, ptr %.fca.0.173.gep, align 1, !dbg !138
  %.fca.0.174.load540 = load i8, ptr %.fca.0.174.gep, align 2, !dbg !138
  %.fca.0.175.load543 = load i8, ptr %.fca.0.175.gep, align 1, !dbg !138
  %.fca.0.176.load546 = load i8, ptr %.fca.0.176.gep, align 16, !dbg !138
  %.fca.0.177.load549 = load i8, ptr %.fca.0.177.gep, align 1, !dbg !138
  %.fca.0.178.load552 = load i8, ptr %.fca.0.178.gep, align 2, !dbg !138
  %.fca.0.179.load555 = load i8, ptr %.fca.0.179.gep, align 1, !dbg !138
  %.fca.0.180.load558 = load i8, ptr %.fca.0.180.gep, align 4, !dbg !138
  %.fca.0.181.load561 = load i8, ptr %.fca.0.181.gep, align 1, !dbg !138
  %.fca.0.182.load564 = load i8, ptr %.fca.0.182.gep, align 2, !dbg !138
  %.fca.0.183.load567 = load i8, ptr %.fca.0.183.gep, align 1, !dbg !138
  %.fca.0.184.load570 = load i8, ptr %.fca.0.184.gep, align 8, !dbg !138
  %.fca.0.185.load573 = load i8, ptr %.fca.0.185.gep, align 1, !dbg !138
  %.fca.0.186.load576 = load i8, ptr %.fca.0.186.gep, align 2, !dbg !138
  %.fca.0.187.load579 = load i8, ptr %.fca.0.187.gep, align 1, !dbg !138
  %.fca.0.188.load582 = load i8, ptr %.fca.0.188.gep, align 4, !dbg !138
  %.fca.0.189.load585 = load i8, ptr %.fca.0.189.gep, align 1, !dbg !138
  %.fca.0.190.load588 = load i8, ptr %.fca.0.190.gep, align 2, !dbg !138
  %.fca.0.191.load591 = load i8, ptr %.fca.0.191.gep, align 1, !dbg !138
  %.fca.0.192.load594 = load i8, ptr %.fca.0.192.gep, align 64, !dbg !138
  %.fca.0.193.load597 = load i8, ptr %.fca.0.193.gep, align 1, !dbg !138
  %.fca.0.194.load600 = load i8, ptr %.fca.0.194.gep, align 2, !dbg !138
  %.fca.0.195.load603 = load i8, ptr %.fca.0.195.gep, align 1, !dbg !138
  %.fca.0.196.load606 = load i8, ptr %.fca.0.196.gep, align 4, !dbg !138
  %.fca.0.197.load609 = load i8, ptr %.fca.0.197.gep, align 1, !dbg !138
  %.fca.0.198.load612 = load i8, ptr %.fca.0.198.gep, align 2, !dbg !138
  %.fca.0.199.load615 = load i8, ptr %.fca.0.199.gep, align 1, !dbg !138
  %.fca.0.200.load618 = load i8, ptr %.fca.0.200.gep, align 8, !dbg !138
  %.fca.0.201.load621 = load i8, ptr %.fca.0.201.gep, align 1, !dbg !138
  %.fca.0.202.load624 = load i8, ptr %.fca.0.202.gep, align 2, !dbg !138
  %.fca.0.203.load627 = load i8, ptr %.fca.0.203.gep, align 1, !dbg !138
  %.fca.0.204.load630 = load i8, ptr %.fca.0.204.gep, align 4, !dbg !138
  %.fca.0.205.load633 = load i8, ptr %.fca.0.205.gep, align 1, !dbg !138
  %.fca.0.206.load636 = load i8, ptr %.fca.0.206.gep, align 2, !dbg !138
  %.fca.0.207.load639 = load i8, ptr %.fca.0.207.gep, align 1, !dbg !138
  %.fca.0.208.load642 = load i8, ptr %.fca.0.208.gep, align 16, !dbg !138
  %.fca.0.209.load645 = load i8, ptr %.fca.0.209.gep, align 1, !dbg !138
  %.fca.0.210.load648 = load i8, ptr %.fca.0.210.gep, align 2, !dbg !138
  %.fca.0.211.load651 = load i8, ptr %.fca.0.211.gep, align 1, !dbg !138
  %.fca.0.212.load654 = load i8, ptr %.fca.0.212.gep, align 4, !dbg !138
  %.fca.0.213.load657 = load i8, ptr %.fca.0.213.gep, align 1, !dbg !138
  %.fca.0.214.load660 = load i8, ptr %.fca.0.214.gep, align 2, !dbg !138
  %.fca.0.215.load663 = load i8, ptr %.fca.0.215.gep, align 1, !dbg !138
  %.fca.0.216.load666 = load i8, ptr %.fca.0.216.gep, align 8, !dbg !138
  %.fca.0.217.load669 = load i8, ptr %.fca.0.217.gep, align 1, !dbg !138
  %.fca.0.218.load672 = load i8, ptr %.fca.0.218.gep, align 2, !dbg !138
  %.fca.0.219.load675 = load i8, ptr %.fca.0.219.gep, align 1, !dbg !138
  %.fca.0.220.load678 = load i8, ptr %.fca.0.220.gep, align 4, !dbg !138
  %.fca.0.221.load681 = load i8, ptr %.fca.0.221.gep, align 1, !dbg !138
  %.fca.0.222.load684 = load i8, ptr %.fca.0.222.gep, align 2, !dbg !138
  %.fca.0.223.load687 = load i8, ptr %.fca.0.223.gep, align 1, !dbg !138
  %.fca.0.224.load690 = load i8, ptr %.fca.0.224.gep, align 32, !dbg !138
  %.fca.0.225.load693 = load i8, ptr %.fca.0.225.gep, align 1, !dbg !138
  %.fca.0.226.load696 = load i8, ptr %.fca.0.226.gep, align 2, !dbg !138
  %.fca.0.227.load699 = load i8, ptr %.fca.0.227.gep, align 1, !dbg !138
  %.fca.0.228.load702 = load i8, ptr %.fca.0.228.gep, align 4, !dbg !138
  %.fca.0.229.load705 = load i8, ptr %.fca.0.229.gep, align 1, !dbg !138
  %.fca.0.230.load708 = load i8, ptr %.fca.0.230.gep, align 2, !dbg !138
  %.fca.0.231.load711 = load i8, ptr %.fca.0.231.gep, align 1, !dbg !138
  %.fca.0.232.load714 = load i8, ptr %.fca.0.232.gep, align 8, !dbg !138
  %.fca.0.233.load717 = load i8, ptr %.fca.0.233.gep, align 1, !dbg !138
  %.fca.0.234.load720 = load i8, ptr %.fca.0.234.gep, align 2, !dbg !138
  %.fca.0.235.load723 = load i8, ptr %.fca.0.235.gep, align 1, !dbg !138
  %.fca.0.236.load726 = load i8, ptr %.fca.0.236.gep, align 4, !dbg !138
  %.fca.0.237.load729 = load i8, ptr %.fca.0.237.gep, align 1, !dbg !138
  %.fca.0.238.load732 = load i8, ptr %.fca.0.238.gep, align 2, !dbg !138
  %.fca.0.239.load735 = load i8, ptr %.fca.0.239.gep, align 1, !dbg !138
  %.fca.0.240.load738 = load i8, ptr %.fca.0.240.gep, align 16, !dbg !138
  %.fca.0.241.load741 = load i8, ptr %.fca.0.241.gep, align 1, !dbg !138
  %.fca.0.242.load744 = load i8, ptr %.fca.0.242.gep, align 2, !dbg !138
  %.fca.0.243.load747 = load i8, ptr %.fca.0.243.gep, align 1, !dbg !138
  %.fca.0.244.load750 = load i8, ptr %.fca.0.244.gep, align 4, !dbg !138
  %.fca.0.245.load753 = load i8, ptr %.fca.0.245.gep, align 1, !dbg !138
  %.fca.0.246.load756 = load i8, ptr %.fca.0.246.gep, align 2, !dbg !138
  %.fca.0.247.load759 = load i8, ptr %.fca.0.247.gep, align 1, !dbg !138
  %.fca.0.248.load762 = load i8, ptr %.fca.0.248.gep, align 8, !dbg !138
  %.fca.0.249.load765 = load i8, ptr %.fca.0.249.gep, align 1, !dbg !138
  %.fca.0.250.load768 = load i8, ptr %.fca.0.250.gep, align 2, !dbg !138
  %.fca.0.251.load771 = load i8, ptr %.fca.0.251.gep, align 1, !dbg !138
  %.fca.0.252.load774 = load i8, ptr %.fca.0.252.gep, align 4, !dbg !138
  %.fca.0.253.load777 = load i8, ptr %.fca.0.253.gep, align 1, !dbg !138
  %.fca.0.254.load780 = load i8, ptr %.fca.0.254.gep, align 2, !dbg !138
  %.fca.0.255.load783 = load i8, ptr %.fca.0.255.gep, align 1, !dbg !138
  %.fca.1.load786 = load i64, ptr %.fca.1.gep, align 256, !dbg !138
  %.fca.2.load789 = load ptr, ptr %.fca.2.gep, align 8, !dbg !138
  store i8 %.fca.0.0.load18, ptr %2, align 256, !dbg !138
  %.repack801 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 1, !dbg !138
  store i8 %.fca.0.1.load21, ptr %.repack801, align 1, !dbg !138
  %.repack803 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 2, !dbg !138
  store i8 %.fca.0.2.load24, ptr %.repack803, align 2, !dbg !138
  %.repack805 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 3, !dbg !138
  store i8 %.fca.0.3.load27, ptr %.repack805, align 1, !dbg !138
  %.repack807 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 4, !dbg !138
  store i8 %.fca.0.4.load30, ptr %.repack807, align 4, !dbg !138
  %.repack809 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 5, !dbg !138
  store i8 %.fca.0.5.load33, ptr %.repack809, align 1, !dbg !138
  %.repack811 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 6, !dbg !138
  store i8 %.fca.0.6.load36, ptr %.repack811, align 2, !dbg !138
  %.repack813 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 7, !dbg !138
  store i8 %.fca.0.7.load39, ptr %.repack813, align 1, !dbg !138
  %.repack815 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 8, !dbg !138
  store i8 %.fca.0.8.load42, ptr %.repack815, align 8, !dbg !138
  %.repack817 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 9, !dbg !138
  store i8 %.fca.0.9.load45, ptr %.repack817, align 1, !dbg !138
  %.repack819 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 10, !dbg !138
  store i8 %.fca.0.10.load48, ptr %.repack819, align 2, !dbg !138
  %.repack821 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 11, !dbg !138
  store i8 %.fca.0.11.load51, ptr %.repack821, align 1, !dbg !138
  %.repack823 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 12, !dbg !138
  store i8 %.fca.0.12.load54, ptr %.repack823, align 4, !dbg !138
  %.repack825 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 13, !dbg !138
  store i8 %.fca.0.13.load57, ptr %.repack825, align 1, !dbg !138
  %.repack827 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 14, !dbg !138
  store i8 %.fca.0.14.load60, ptr %.repack827, align 2, !dbg !138
  %.repack829 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 15, !dbg !138
  store i8 %.fca.0.15.load63, ptr %.repack829, align 1, !dbg !138
  %.repack831 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 16, !dbg !138
  store i8 %.fca.0.16.load66, ptr %.repack831, align 16, !dbg !138
  %.repack833 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 17, !dbg !138
  store i8 %.fca.0.17.load69, ptr %.repack833, align 1, !dbg !138
  %.repack835 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 18, !dbg !138
  store i8 %.fca.0.18.load72, ptr %.repack835, align 2, !dbg !138
  %.repack837 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 19, !dbg !138
  store i8 %.fca.0.19.load75, ptr %.repack837, align 1, !dbg !138
  %.repack839 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 20, !dbg !138
  store i8 %.fca.0.20.load78, ptr %.repack839, align 4, !dbg !138
  %.repack841 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 21, !dbg !138
  store i8 %.fca.0.21.load81, ptr %.repack841, align 1, !dbg !138
  %.repack843 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 22, !dbg !138
  store i8 %.fca.0.22.load84, ptr %.repack843, align 2, !dbg !138
  %.repack845 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 23, !dbg !138
  store i8 %.fca.0.23.load87, ptr %.repack845, align 1, !dbg !138
  %.repack847 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 24, !dbg !138
  store i8 %.fca.0.24.load90, ptr %.repack847, align 8, !dbg !138
  %.repack849 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 25, !dbg !138
  store i8 %.fca.0.25.load93, ptr %.repack849, align 1, !dbg !138
  %.repack851 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 26, !dbg !138
  store i8 %.fca.0.26.load96, ptr %.repack851, align 2, !dbg !138
  %.repack853 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 27, !dbg !138
  store i8 %.fca.0.27.load99, ptr %.repack853, align 1, !dbg !138
  %.repack855 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 28, !dbg !138
  store i8 %.fca.0.28.load102, ptr %.repack855, align 4, !dbg !138
  %.repack857 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 29, !dbg !138
  store i8 %.fca.0.29.load105, ptr %.repack857, align 1, !dbg !138
  %.repack859 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 30, !dbg !138
  store i8 %.fca.0.30.load108, ptr %.repack859, align 2, !dbg !138
  %.repack861 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 31, !dbg !138
  store i8 %.fca.0.31.load111, ptr %.repack861, align 1, !dbg !138
  %.repack863 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 32, !dbg !138
  store i8 %.fca.0.32.load114, ptr %.repack863, align 32, !dbg !138
  %.repack865 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 33, !dbg !138
  store i8 %.fca.0.33.load117, ptr %.repack865, align 1, !dbg !138
  %.repack867 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 34, !dbg !138
  store i8 %.fca.0.34.load120, ptr %.repack867, align 2, !dbg !138
  %.repack869 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 35, !dbg !138
  store i8 %.fca.0.35.load123, ptr %.repack869, align 1, !dbg !138
  %.repack871 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 36, !dbg !138
  store i8 %.fca.0.36.load126, ptr %.repack871, align 4, !dbg !138
  %.repack873 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 37, !dbg !138
  store i8 %.fca.0.37.load129, ptr %.repack873, align 1, !dbg !138
  %.repack875 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 38, !dbg !138
  store i8 %.fca.0.38.load132, ptr %.repack875, align 2, !dbg !138
  %.repack877 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 39, !dbg !138
  store i8 %.fca.0.39.load135, ptr %.repack877, align 1, !dbg !138
  %.repack879 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 40, !dbg !138
  store i8 %.fca.0.40.load138, ptr %.repack879, align 8, !dbg !138
  %.repack881 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 41, !dbg !138
  store i8 %.fca.0.41.load141, ptr %.repack881, align 1, !dbg !138
  %.repack883 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 42, !dbg !138
  store i8 %.fca.0.42.load144, ptr %.repack883, align 2, !dbg !138
  %.repack885 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 43, !dbg !138
  store i8 %.fca.0.43.load147, ptr %.repack885, align 1, !dbg !138
  %.repack887 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 44, !dbg !138
  store i8 %.fca.0.44.load150, ptr %.repack887, align 4, !dbg !138
  %.repack889 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 45, !dbg !138
  store i8 %.fca.0.45.load153, ptr %.repack889, align 1, !dbg !138
  %.repack891 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 46, !dbg !138
  store i8 %.fca.0.46.load156, ptr %.repack891, align 2, !dbg !138
  %.repack893 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 47, !dbg !138
  store i8 %.fca.0.47.load159, ptr %.repack893, align 1, !dbg !138
  %.repack895 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 48, !dbg !138
  store i8 %.fca.0.48.load162, ptr %.repack895, align 16, !dbg !138
  %.repack897 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 49, !dbg !138
  store i8 %.fca.0.49.load165, ptr %.repack897, align 1, !dbg !138
  %.repack899 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 50, !dbg !138
  store i8 %.fca.0.50.load168, ptr %.repack899, align 2, !dbg !138
  %.repack901 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 51, !dbg !138
  store i8 %.fca.0.51.load171, ptr %.repack901, align 1, !dbg !138
  %.repack903 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 52, !dbg !138
  store i8 %.fca.0.52.load174, ptr %.repack903, align 4, !dbg !138
  %.repack905 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 53, !dbg !138
  store i8 %.fca.0.53.load177, ptr %.repack905, align 1, !dbg !138
  %.repack907 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 54, !dbg !138
  store i8 %.fca.0.54.load180, ptr %.repack907, align 2, !dbg !138
  %.repack909 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 55, !dbg !138
  store i8 %.fca.0.55.load183, ptr %.repack909, align 1, !dbg !138
  %.repack911 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 56, !dbg !138
  store i8 %.fca.0.56.load186, ptr %.repack911, align 8, !dbg !138
  %.repack913 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 57, !dbg !138
  store i8 %.fca.0.57.load189, ptr %.repack913, align 1, !dbg !138
  %.repack915 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 58, !dbg !138
  store i8 %.fca.0.58.load192, ptr %.repack915, align 2, !dbg !138
  %.repack917 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 59, !dbg !138
  store i8 %.fca.0.59.load195, ptr %.repack917, align 1, !dbg !138
  %.repack919 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 60, !dbg !138
  store i8 %.fca.0.60.load198, ptr %.repack919, align 4, !dbg !138
  %.repack921 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 61, !dbg !138
  store i8 %.fca.0.61.load201, ptr %.repack921, align 1, !dbg !138
  %.repack923 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 62, !dbg !138
  store i8 %.fca.0.62.load204, ptr %.repack923, align 2, !dbg !138
  %.repack925 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 63, !dbg !138
  store i8 %.fca.0.63.load207, ptr %.repack925, align 1, !dbg !138
  %.repack927 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 64, !dbg !138
  store i8 %.fca.0.64.load210, ptr %.repack927, align 64, !dbg !138
  %.repack929 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 65, !dbg !138
  store i8 %.fca.0.65.load213, ptr %.repack929, align 1, !dbg !138
  %.repack931 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 66, !dbg !138
  store i8 %.fca.0.66.load216, ptr %.repack931, align 2, !dbg !138
  %.repack933 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 67, !dbg !138
  store i8 %.fca.0.67.load219, ptr %.repack933, align 1, !dbg !138
  %.repack935 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 68, !dbg !138
  store i8 %.fca.0.68.load222, ptr %.repack935, align 4, !dbg !138
  %.repack937 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 69, !dbg !138
  store i8 %.fca.0.69.load225, ptr %.repack937, align 1, !dbg !138
  %.repack939 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 70, !dbg !138
  store i8 %.fca.0.70.load228, ptr %.repack939, align 2, !dbg !138
  %.repack941 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 71, !dbg !138
  store i8 %.fca.0.71.load231, ptr %.repack941, align 1, !dbg !138
  %.repack943 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 72, !dbg !138
  store i8 %.fca.0.72.load234, ptr %.repack943, align 8, !dbg !138
  %.repack945 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 73, !dbg !138
  store i8 %.fca.0.73.load237, ptr %.repack945, align 1, !dbg !138
  %.repack947 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 74, !dbg !138
  store i8 %.fca.0.74.load240, ptr %.repack947, align 2, !dbg !138
  %.repack949 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 75, !dbg !138
  store i8 %.fca.0.75.load243, ptr %.repack949, align 1, !dbg !138
  %.repack951 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 76, !dbg !138
  store i8 %.fca.0.76.load246, ptr %.repack951, align 4, !dbg !138
  %.repack953 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 77, !dbg !138
  store i8 %.fca.0.77.load249, ptr %.repack953, align 1, !dbg !138
  %.repack955 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 78, !dbg !138
  store i8 %.fca.0.78.load252, ptr %.repack955, align 2, !dbg !138
  %.repack957 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 79, !dbg !138
  store i8 %.fca.0.79.load255, ptr %.repack957, align 1, !dbg !138
  %.repack959 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 80, !dbg !138
  store i8 %.fca.0.80.load258, ptr %.repack959, align 16, !dbg !138
  %.repack961 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 81, !dbg !138
  store i8 %.fca.0.81.load261, ptr %.repack961, align 1, !dbg !138
  %.repack963 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 82, !dbg !138
  store i8 %.fca.0.82.load264, ptr %.repack963, align 2, !dbg !138
  %.repack965 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 83, !dbg !138
  store i8 %.fca.0.83.load267, ptr %.repack965, align 1, !dbg !138
  %.repack967 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 84, !dbg !138
  store i8 %.fca.0.84.load270, ptr %.repack967, align 4, !dbg !138
  %.repack969 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 85, !dbg !138
  store i8 %.fca.0.85.load273, ptr %.repack969, align 1, !dbg !138
  %.repack971 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 86, !dbg !138
  store i8 %.fca.0.86.load276, ptr %.repack971, align 2, !dbg !138
  %.repack973 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 87, !dbg !138
  store i8 %.fca.0.87.load279, ptr %.repack973, align 1, !dbg !138
  %.repack975 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 88, !dbg !138
  store i8 %.fca.0.88.load282, ptr %.repack975, align 8, !dbg !138
  %.repack977 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 89, !dbg !138
  store i8 %.fca.0.89.load285, ptr %.repack977, align 1, !dbg !138
  %.repack979 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 90, !dbg !138
  store i8 %.fca.0.90.load288, ptr %.repack979, align 2, !dbg !138
  %.repack981 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 91, !dbg !138
  store i8 %.fca.0.91.load291, ptr %.repack981, align 1, !dbg !138
  %.repack983 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 92, !dbg !138
  store i8 %.fca.0.92.load294, ptr %.repack983, align 4, !dbg !138
  %.repack985 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 93, !dbg !138
  store i8 %.fca.0.93.load297, ptr %.repack985, align 1, !dbg !138
  %.repack987 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 94, !dbg !138
  store i8 %.fca.0.94.load300, ptr %.repack987, align 2, !dbg !138
  %.repack989 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 95, !dbg !138
  store i8 %.fca.0.95.load303, ptr %.repack989, align 1, !dbg !138
  %.repack991 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 96, !dbg !138
  store i8 %.fca.0.96.load306, ptr %.repack991, align 32, !dbg !138
  %.repack993 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 97, !dbg !138
  store i8 %.fca.0.97.load309, ptr %.repack993, align 1, !dbg !138
  %.repack995 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 98, !dbg !138
  store i8 %.fca.0.98.load312, ptr %.repack995, align 2, !dbg !138
  %.repack997 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 99, !dbg !138
  store i8 %.fca.0.99.load315, ptr %.repack997, align 1, !dbg !138
  %.repack999 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 100, !dbg !138
  store i8 %.fca.0.100.load318, ptr %.repack999, align 4, !dbg !138
  %.repack1001 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 101, !dbg !138
  store i8 %.fca.0.101.load321, ptr %.repack1001, align 1, !dbg !138
  %.repack1003 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 102, !dbg !138
  store i8 %.fca.0.102.load324, ptr %.repack1003, align 2, !dbg !138
  %.repack1005 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 103, !dbg !138
  store i8 %.fca.0.103.load327, ptr %.repack1005, align 1, !dbg !138
  %.repack1007 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 104, !dbg !138
  store i8 %.fca.0.104.load330, ptr %.repack1007, align 8, !dbg !138
  %.repack1009 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 105, !dbg !138
  store i8 %.fca.0.105.load333, ptr %.repack1009, align 1, !dbg !138
  %.repack1011 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 106, !dbg !138
  store i8 %.fca.0.106.load336, ptr %.repack1011, align 2, !dbg !138
  %.repack1013 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 107, !dbg !138
  store i8 %.fca.0.107.load339, ptr %.repack1013, align 1, !dbg !138
  %.repack1015 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 108, !dbg !138
  store i8 %.fca.0.108.load342, ptr %.repack1015, align 4, !dbg !138
  %.repack1017 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 109, !dbg !138
  store i8 %.fca.0.109.load345, ptr %.repack1017, align 1, !dbg !138
  %.repack1019 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 110, !dbg !138
  store i8 %.fca.0.110.load348, ptr %.repack1019, align 2, !dbg !138
  %.repack1021 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 111, !dbg !138
  store i8 %.fca.0.111.load351, ptr %.repack1021, align 1, !dbg !138
  %.repack1023 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 112, !dbg !138
  store i8 %.fca.0.112.load354, ptr %.repack1023, align 16, !dbg !138
  %.repack1025 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 113, !dbg !138
  store i8 %.fca.0.113.load357, ptr %.repack1025, align 1, !dbg !138
  %.repack1027 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 114, !dbg !138
  store i8 %.fca.0.114.load360, ptr %.repack1027, align 2, !dbg !138
  %.repack1029 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 115, !dbg !138
  store i8 %.fca.0.115.load363, ptr %.repack1029, align 1, !dbg !138
  %.repack1031 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 116, !dbg !138
  store i8 %.fca.0.116.load366, ptr %.repack1031, align 4, !dbg !138
  %.repack1033 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 117, !dbg !138
  store i8 %.fca.0.117.load369, ptr %.repack1033, align 1, !dbg !138
  %.repack1035 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 118, !dbg !138
  store i8 %.fca.0.118.load372, ptr %.repack1035, align 2, !dbg !138
  %.repack1037 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 119, !dbg !138
  store i8 %.fca.0.119.load375, ptr %.repack1037, align 1, !dbg !138
  %.repack1039 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 120, !dbg !138
  store i8 %.fca.0.120.load378, ptr %.repack1039, align 8, !dbg !138
  %.repack1041 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 121, !dbg !138
  store i8 %.fca.0.121.load381, ptr %.repack1041, align 1, !dbg !138
  %.repack1043 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 122, !dbg !138
  store i8 %.fca.0.122.load384, ptr %.repack1043, align 2, !dbg !138
  %.repack1045 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 123, !dbg !138
  store i8 %.fca.0.123.load387, ptr %.repack1045, align 1, !dbg !138
  %.repack1047 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 124, !dbg !138
  store i8 %.fca.0.124.load390, ptr %.repack1047, align 4, !dbg !138
  %.repack1049 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 125, !dbg !138
  store i8 %.fca.0.125.load393, ptr %.repack1049, align 1, !dbg !138
  %.repack1051 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 126, !dbg !138
  store i8 %.fca.0.126.load396, ptr %.repack1051, align 2, !dbg !138
  %.repack1053 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 127, !dbg !138
  store i8 %.fca.0.127.load399, ptr %.repack1053, align 1, !dbg !138
  %.repack1055 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 128, !dbg !138
  store i8 %.fca.0.128.load402, ptr %.repack1055, align 128, !dbg !138
  %.repack1057 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 129, !dbg !138
  store i8 %.fca.0.129.load405, ptr %.repack1057, align 1, !dbg !138
  %.repack1059 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 130, !dbg !138
  store i8 %.fca.0.130.load408, ptr %.repack1059, align 2, !dbg !138
  %.repack1061 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 131, !dbg !138
  store i8 %.fca.0.131.load411, ptr %.repack1061, align 1, !dbg !138
  %.repack1063 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 132, !dbg !138
  store i8 %.fca.0.132.load414, ptr %.repack1063, align 4, !dbg !138
  %.repack1065 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 133, !dbg !138
  store i8 %.fca.0.133.load417, ptr %.repack1065, align 1, !dbg !138
  %.repack1067 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 134, !dbg !138
  store i8 %.fca.0.134.load420, ptr %.repack1067, align 2, !dbg !138
  %.repack1069 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 135, !dbg !138
  store i8 %.fca.0.135.load423, ptr %.repack1069, align 1, !dbg !138
  %.repack1071 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 136, !dbg !138
  store i8 %.fca.0.136.load426, ptr %.repack1071, align 8, !dbg !138
  %.repack1073 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 137, !dbg !138
  store i8 %.fca.0.137.load429, ptr %.repack1073, align 1, !dbg !138
  %.repack1075 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 138, !dbg !138
  store i8 %.fca.0.138.load432, ptr %.repack1075, align 2, !dbg !138
  %.repack1077 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 139, !dbg !138
  store i8 %.fca.0.139.load435, ptr %.repack1077, align 1, !dbg !138
  %.repack1079 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 140, !dbg !138
  store i8 %.fca.0.140.load438, ptr %.repack1079, align 4, !dbg !138
  %.repack1081 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 141, !dbg !138
  store i8 %.fca.0.141.load441, ptr %.repack1081, align 1, !dbg !138
  %.repack1083 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 142, !dbg !138
  store i8 %.fca.0.142.load444, ptr %.repack1083, align 2, !dbg !138
  %.repack1085 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 143, !dbg !138
  store i8 %.fca.0.143.load447, ptr %.repack1085, align 1, !dbg !138
  %.repack1087 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 144, !dbg !138
  store i8 %.fca.0.144.load450, ptr %.repack1087, align 16, !dbg !138
  %.repack1089 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 145, !dbg !138
  store i8 %.fca.0.145.load453, ptr %.repack1089, align 1, !dbg !138
  %.repack1091 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 146, !dbg !138
  store i8 %.fca.0.146.load456, ptr %.repack1091, align 2, !dbg !138
  %.repack1093 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 147, !dbg !138
  store i8 %.fca.0.147.load459, ptr %.repack1093, align 1, !dbg !138
  %.repack1095 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 148, !dbg !138
  store i8 %.fca.0.148.load462, ptr %.repack1095, align 4, !dbg !138
  %.repack1097 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 149, !dbg !138
  store i8 %.fca.0.149.load465, ptr %.repack1097, align 1, !dbg !138
  %.repack1099 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 150, !dbg !138
  store i8 %.fca.0.150.load468, ptr %.repack1099, align 2, !dbg !138
  %.repack1101 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 151, !dbg !138
  store i8 %.fca.0.151.load471, ptr %.repack1101, align 1, !dbg !138
  %.repack1103 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 152, !dbg !138
  store i8 %.fca.0.152.load474, ptr %.repack1103, align 8, !dbg !138
  %.repack1105 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 153, !dbg !138
  store i8 %.fca.0.153.load477, ptr %.repack1105, align 1, !dbg !138
  %.repack1107 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 154, !dbg !138
  store i8 %.fca.0.154.load480, ptr %.repack1107, align 2, !dbg !138
  %.repack1109 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 155, !dbg !138
  store i8 %.fca.0.155.load483, ptr %.repack1109, align 1, !dbg !138
  %.repack1111 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 156, !dbg !138
  store i8 %.fca.0.156.load486, ptr %.repack1111, align 4, !dbg !138
  %.repack1113 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 157, !dbg !138
  store i8 %.fca.0.157.load489, ptr %.repack1113, align 1, !dbg !138
  %.repack1115 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 158, !dbg !138
  store i8 %.fca.0.158.load492, ptr %.repack1115, align 2, !dbg !138
  %.repack1117 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 159, !dbg !138
  store i8 %.fca.0.159.load495, ptr %.repack1117, align 1, !dbg !138
  %.repack1119 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 160, !dbg !138
  store i8 %.fca.0.160.load498, ptr %.repack1119, align 32, !dbg !138
  %.repack1121 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 161, !dbg !138
  store i8 %.fca.0.161.load501, ptr %.repack1121, align 1, !dbg !138
  %.repack1123 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 162, !dbg !138
  store i8 %.fca.0.162.load504, ptr %.repack1123, align 2, !dbg !138
  %.repack1125 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 163, !dbg !138
  store i8 %.fca.0.163.load507, ptr %.repack1125, align 1, !dbg !138
  %.repack1127 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 164, !dbg !138
  store i8 %.fca.0.164.load510, ptr %.repack1127, align 4, !dbg !138
  %.repack1129 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 165, !dbg !138
  store i8 %.fca.0.165.load513, ptr %.repack1129, align 1, !dbg !138
  %.repack1131 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 166, !dbg !138
  store i8 %.fca.0.166.load516, ptr %.repack1131, align 2, !dbg !138
  %.repack1133 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 167, !dbg !138
  store i8 %.fca.0.167.load519, ptr %.repack1133, align 1, !dbg !138
  %.repack1135 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 168, !dbg !138
  store i8 %.fca.0.168.load522, ptr %.repack1135, align 8, !dbg !138
  %.repack1137 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 169, !dbg !138
  store i8 %.fca.0.169.load525, ptr %.repack1137, align 1, !dbg !138
  %.repack1139 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 170, !dbg !138
  store i8 %.fca.0.170.load528, ptr %.repack1139, align 2, !dbg !138
  %.repack1141 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 171, !dbg !138
  store i8 %.fca.0.171.load531, ptr %.repack1141, align 1, !dbg !138
  %.repack1143 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 172, !dbg !138
  store i8 %.fca.0.172.load534, ptr %.repack1143, align 4, !dbg !138
  %.repack1145 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 173, !dbg !138
  store i8 %.fca.0.173.load537, ptr %.repack1145, align 1, !dbg !138
  %.repack1147 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 174, !dbg !138
  store i8 %.fca.0.174.load540, ptr %.repack1147, align 2, !dbg !138
  %.repack1149 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 175, !dbg !138
  store i8 %.fca.0.175.load543, ptr %.repack1149, align 1, !dbg !138
  %.repack1151 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 176, !dbg !138
  store i8 %.fca.0.176.load546, ptr %.repack1151, align 16, !dbg !138
  %.repack1153 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 177, !dbg !138
  store i8 %.fca.0.177.load549, ptr %.repack1153, align 1, !dbg !138
  %.repack1155 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 178, !dbg !138
  store i8 %.fca.0.178.load552, ptr %.repack1155, align 2, !dbg !138
  %.repack1157 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 179, !dbg !138
  store i8 %.fca.0.179.load555, ptr %.repack1157, align 1, !dbg !138
  %.repack1159 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 180, !dbg !138
  store i8 %.fca.0.180.load558, ptr %.repack1159, align 4, !dbg !138
  %.repack1161 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 181, !dbg !138
  store i8 %.fca.0.181.load561, ptr %.repack1161, align 1, !dbg !138
  %.repack1163 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 182, !dbg !138
  store i8 %.fca.0.182.load564, ptr %.repack1163, align 2, !dbg !138
  %.repack1165 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 183, !dbg !138
  store i8 %.fca.0.183.load567, ptr %.repack1165, align 1, !dbg !138
  %.repack1167 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 184, !dbg !138
  store i8 %.fca.0.184.load570, ptr %.repack1167, align 8, !dbg !138
  %.repack1169 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 185, !dbg !138
  store i8 %.fca.0.185.load573, ptr %.repack1169, align 1, !dbg !138
  %.repack1171 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 186, !dbg !138
  store i8 %.fca.0.186.load576, ptr %.repack1171, align 2, !dbg !138
  %.repack1173 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 187, !dbg !138
  store i8 %.fca.0.187.load579, ptr %.repack1173, align 1, !dbg !138
  %.repack1175 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 188, !dbg !138
  store i8 %.fca.0.188.load582, ptr %.repack1175, align 4, !dbg !138
  %.repack1177 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 189, !dbg !138
  store i8 %.fca.0.189.load585, ptr %.repack1177, align 1, !dbg !138
  %.repack1179 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 190, !dbg !138
  store i8 %.fca.0.190.load588, ptr %.repack1179, align 2, !dbg !138
  %.repack1181 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 191, !dbg !138
  store i8 %.fca.0.191.load591, ptr %.repack1181, align 1, !dbg !138
  %.repack1183 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 192, !dbg !138
  store i8 %.fca.0.192.load594, ptr %.repack1183, align 64, !dbg !138
  %.repack1185 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 193, !dbg !138
  store i8 %.fca.0.193.load597, ptr %.repack1185, align 1, !dbg !138
  %.repack1187 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 194, !dbg !138
  store i8 %.fca.0.194.load600, ptr %.repack1187, align 2, !dbg !138
  %.repack1189 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 195, !dbg !138
  store i8 %.fca.0.195.load603, ptr %.repack1189, align 1, !dbg !138
  %.repack1191 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 196, !dbg !138
  store i8 %.fca.0.196.load606, ptr %.repack1191, align 4, !dbg !138
  %.repack1193 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 197, !dbg !138
  store i8 %.fca.0.197.load609, ptr %.repack1193, align 1, !dbg !138
  %.repack1195 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 198, !dbg !138
  store i8 %.fca.0.198.load612, ptr %.repack1195, align 2, !dbg !138
  %.repack1197 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 199, !dbg !138
  store i8 %.fca.0.199.load615, ptr %.repack1197, align 1, !dbg !138
  %.repack1199 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 200, !dbg !138
  store i8 %.fca.0.200.load618, ptr %.repack1199, align 8, !dbg !138
  %.repack1201 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 201, !dbg !138
  store i8 %.fca.0.201.load621, ptr %.repack1201, align 1, !dbg !138
  %.repack1203 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 202, !dbg !138
  store i8 %.fca.0.202.load624, ptr %.repack1203, align 2, !dbg !138
  %.repack1205 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 203, !dbg !138
  store i8 %.fca.0.203.load627, ptr %.repack1205, align 1, !dbg !138
  %.repack1207 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 204, !dbg !138
  store i8 %.fca.0.204.load630, ptr %.repack1207, align 4, !dbg !138
  %.repack1209 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 205, !dbg !138
  store i8 %.fca.0.205.load633, ptr %.repack1209, align 1, !dbg !138
  %.repack1211 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 206, !dbg !138
  store i8 %.fca.0.206.load636, ptr %.repack1211, align 2, !dbg !138
  %.repack1213 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 207, !dbg !138
  store i8 %.fca.0.207.load639, ptr %.repack1213, align 1, !dbg !138
  %.repack1215 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 208, !dbg !138
  store i8 %.fca.0.208.load642, ptr %.repack1215, align 16, !dbg !138
  %.repack1217 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 209, !dbg !138
  store i8 %.fca.0.209.load645, ptr %.repack1217, align 1, !dbg !138
  %.repack1219 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 210, !dbg !138
  store i8 %.fca.0.210.load648, ptr %.repack1219, align 2, !dbg !138
  %.repack1221 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 211, !dbg !138
  store i8 %.fca.0.211.load651, ptr %.repack1221, align 1, !dbg !138
  %.repack1223 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 212, !dbg !138
  store i8 %.fca.0.212.load654, ptr %.repack1223, align 4, !dbg !138
  %.repack1225 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 213, !dbg !138
  store i8 %.fca.0.213.load657, ptr %.repack1225, align 1, !dbg !138
  %.repack1227 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 214, !dbg !138
  store i8 %.fca.0.214.load660, ptr %.repack1227, align 2, !dbg !138
  %.repack1229 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 215, !dbg !138
  store i8 %.fca.0.215.load663, ptr %.repack1229, align 1, !dbg !138
  %.repack1231 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 216, !dbg !138
  store i8 %.fca.0.216.load666, ptr %.repack1231, align 8, !dbg !138
  %.repack1233 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 217, !dbg !138
  store i8 %.fca.0.217.load669, ptr %.repack1233, align 1, !dbg !138
  %.repack1235 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 218, !dbg !138
  store i8 %.fca.0.218.load672, ptr %.repack1235, align 2, !dbg !138
  %.repack1237 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 219, !dbg !138
  store i8 %.fca.0.219.load675, ptr %.repack1237, align 1, !dbg !138
  %.repack1239 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 220, !dbg !138
  store i8 %.fca.0.220.load678, ptr %.repack1239, align 4, !dbg !138
  %.repack1241 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 221, !dbg !138
  store i8 %.fca.0.221.load681, ptr %.repack1241, align 1, !dbg !138
  %.repack1243 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 222, !dbg !138
  store i8 %.fca.0.222.load684, ptr %.repack1243, align 2, !dbg !138
  %.repack1245 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 223, !dbg !138
  store i8 %.fca.0.223.load687, ptr %.repack1245, align 1, !dbg !138
  %.repack1247 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 224, !dbg !138
  store i8 %.fca.0.224.load690, ptr %.repack1247, align 32, !dbg !138
  %.repack1249 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 225, !dbg !138
  store i8 %.fca.0.225.load693, ptr %.repack1249, align 1, !dbg !138
  %.repack1251 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 226, !dbg !138
  store i8 %.fca.0.226.load696, ptr %.repack1251, align 2, !dbg !138
  %.repack1253 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 227, !dbg !138
  store i8 %.fca.0.227.load699, ptr %.repack1253, align 1, !dbg !138
  %.repack1255 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 228, !dbg !138
  store i8 %.fca.0.228.load702, ptr %.repack1255, align 4, !dbg !138
  %.repack1257 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 229, !dbg !138
  store i8 %.fca.0.229.load705, ptr %.repack1257, align 1, !dbg !138
  %.repack1259 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 230, !dbg !138
  store i8 %.fca.0.230.load708, ptr %.repack1259, align 2, !dbg !138
  %.repack1261 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 231, !dbg !138
  store i8 %.fca.0.231.load711, ptr %.repack1261, align 1, !dbg !138
  %.repack1263 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 232, !dbg !138
  store i8 %.fca.0.232.load714, ptr %.repack1263, align 8, !dbg !138
  %.repack1265 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 233, !dbg !138
  store i8 %.fca.0.233.load717, ptr %.repack1265, align 1, !dbg !138
  %.repack1267 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 234, !dbg !138
  store i8 %.fca.0.234.load720, ptr %.repack1267, align 2, !dbg !138
  %.repack1269 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 235, !dbg !138
  store i8 %.fca.0.235.load723, ptr %.repack1269, align 1, !dbg !138
  %.repack1271 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 236, !dbg !138
  store i8 %.fca.0.236.load726, ptr %.repack1271, align 4, !dbg !138
  %.repack1273 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 237, !dbg !138
  store i8 %.fca.0.237.load729, ptr %.repack1273, align 1, !dbg !138
  %.repack1275 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 238, !dbg !138
  store i8 %.fca.0.238.load732, ptr %.repack1275, align 2, !dbg !138
  %.repack1277 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 239, !dbg !138
  store i8 %.fca.0.239.load735, ptr %.repack1277, align 1, !dbg !138
  %.repack1279 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 240, !dbg !138
  store i8 %.fca.0.240.load738, ptr %.repack1279, align 16, !dbg !138
  %.repack1281 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 241, !dbg !138
  store i8 %.fca.0.241.load741, ptr %.repack1281, align 1, !dbg !138
  %.repack1283 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 242, !dbg !138
  store i8 %.fca.0.242.load744, ptr %.repack1283, align 2, !dbg !138
  %.repack1285 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 243, !dbg !138
  store i8 %.fca.0.243.load747, ptr %.repack1285, align 1, !dbg !138
  %.repack1287 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 244, !dbg !138
  store i8 %.fca.0.244.load750, ptr %.repack1287, align 4, !dbg !138
  %.repack1289 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 245, !dbg !138
  store i8 %.fca.0.245.load753, ptr %.repack1289, align 1, !dbg !138
  %.repack1291 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 246, !dbg !138
  store i8 %.fca.0.246.load756, ptr %.repack1291, align 2, !dbg !138
  %.repack1293 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 247, !dbg !138
  store i8 %.fca.0.247.load759, ptr %.repack1293, align 1, !dbg !138
  %.repack1295 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 248, !dbg !138
  store i8 %.fca.0.248.load762, ptr %.repack1295, align 8, !dbg !138
  %.repack1297 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 249, !dbg !138
  store i8 %.fca.0.249.load765, ptr %.repack1297, align 1, !dbg !138
  %.repack1299 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 250, !dbg !138
  store i8 %.fca.0.250.load768, ptr %.repack1299, align 2, !dbg !138
  %.repack1301 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 251, !dbg !138
  store i8 %.fca.0.251.load771, ptr %.repack1301, align 1, !dbg !138
  %.repack1303 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 252, !dbg !138
  store i8 %.fca.0.252.load774, ptr %.repack1303, align 4, !dbg !138
  %.repack1305 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 253, !dbg !138
  store i8 %.fca.0.253.load777, ptr %.repack1305, align 1, !dbg !138
  %.repack1307 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 254, !dbg !138
  store i8 %.fca.0.254.load780, ptr %.repack1307, align 2, !dbg !138
  %.repack1309 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 255, !dbg !138
  store i8 %.fca.0.255.load783, ptr %.repack1309, align 1, !dbg !138
  %.repack797 = getelementptr inbounds %String_Builder, ptr %2, i64 0, i32 1, !dbg !138
  store i64 %.fca.1.load786, ptr %.repack797, align 256, !dbg !138
  %.repack799 = getelementptr inbounds %String_Builder, ptr %2, i64 0, i32 2, !dbg !138
  store ptr %.fca.2.load789, ptr %.repack799, align 8, !dbg !138
  ret void, !dbg !138

if.true:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !131, metadata !DIExpression()), !dbg !126
  %3 = add i64 %times.01313, 1, !dbg !139
  call void @llvm.dbg.value(metadata i64 %3, metadata !130, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !140
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !140
  %4 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !142
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !140
  call void @llvm.dbg.value(metadata ptr %4, metadata !58, metadata !DIExpression()) #17, !dbg !140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %4, i8 0, i64 272, i1 false) #17, !dbg !143
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %current.01314, i64 0, i32 2, !dbg !144
  store ptr %4, ptr %"struct member ptr13", align 8, !dbg !144
  call void @llvm.dbg.value(metadata ptr %4, metadata !129, metadata !DIExpression()), !dbg !126
  br label %if.aftr, !dbg !133

if.aftr:                                          ; preds = %for.body, %if.true
  %times.1 = phi i64 [ %3, %if.true ], [ %times.01313, %for.body ], !dbg !126
  %current.1 = phi ptr [ %4, %if.true ], [ %current.01314, %for.body ], !dbg !126
  %i.1 = phi i64 [ 0, %if.true ], [ %i.01315, %for.body ], !dbg !126
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !131, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata ptr %current.1, metadata !129, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %times.1, metadata !130, metadata !DIExpression()), !dbg !126
  %5 = add i64 %i.1, 1, !dbg !133
  call void @llvm.dbg.value(metadata i64 %5, metadata !131, metadata !DIExpression()), !dbg !126
  %6 = shl i64 %times.1, 8, !dbg !132
  %7 = add i64 %5, %6, !dbg !132
  %elem_ptr = getelementptr i8, ptr %text, i64 %7, !dbg !132
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !132
  %.not = icmp eq i8 %indexed_val, 0, !dbg !132
  br i1 %.not, label %for.aftr, label %for.body, !dbg !132
}

; Function Attrs: nofree norecurse nosync nounwind readonly
define i8 @compare(ptr nocapture readnone %__apoc_internal_context, %string %str1, %string %str2) local_unnamed_addr #4 !dbg !145 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !149
  call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !149
  %str1.fca.0.extract = extractvalue %string %str1, 0
  call void @llvm.dbg.value(metadata ptr %str1.fca.0.extract, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !149
  %str1.fca.1.extract = extractvalue %string %str1, 1
  call void @llvm.dbg.value(metadata i64 %str1.fca.1.extract, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !149
  call void @llvm.dbg.value(metadata ptr null, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !149
  call void @llvm.dbg.value(metadata i64 0, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !149
  %str2.fca.0.extract = extractvalue %string %str2, 0
  call void @llvm.dbg.value(metadata ptr %str2.fca.0.extract, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !149
  %str2.fca.1.extract = extractvalue %string %str2, 1
  call void @llvm.dbg.value(metadata i64 %str2.fca.1.extract, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !149
  %.not = icmp eq i64 %str1.fca.1.extract, %str2.fca.1.extract, !dbg !151
  br i1 %.not, label %for.cond.preheader, label %common.ret, !dbg !152

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()), !dbg !149
  %0 = icmp sgt i64 %str1.fca.1.extract, 0, !dbg !152
  br i1 %0, label %for.body.preheader, label %common.ret, !dbg !152

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !154

common.ret:                                       ; preds = %for.cond, %for.body, %for.cond.preheader, %entry
  %common.ret.op = phi i8 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i8 %common.ret.op, !dbg !149

for.cond:                                         ; preds = %for.body
  %1 = add nuw nsw i64 %i.020, 1, !dbg !154
  call void @llvm.dbg.value(metadata i64 %1, metadata !153, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %i.020, metadata !153, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !149
  %2 = icmp slt i64 %1, %str1.fca.1.extract, !dbg !152
  br i1 %2, label %for.body, label %common.ret, !dbg !152

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.020 = phi i64 [ %1, %for.cond ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.020, metadata !153, metadata !DIExpression()), !dbg !149
  %elem_ptr = getelementptr i8, ptr %str1.fca.0.extract, i64 %i.020, !dbg !155
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !155
  %elem_ptr11 = getelementptr i8, ptr %str2.fca.0.extract, i64 %i.020, !dbg !155
  %indexed_val12 = load i8, ptr %elem_ptr11, align 1, !dbg !155
  %.not19 = icmp eq i8 %indexed_val, %indexed_val12, !dbg !155
  call void @llvm.dbg.value(metadata i64 %i.020, metadata !153, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !149
  br i1 %.not19, label %for.cond, label %common.ret, !dbg !154
}

; Function Attrs: nofree nounwind
define void @to_string(ptr nocapture readonly %__apoc_internal_context, ptr nocapture readonly %text) local_unnamed_addr #3 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata ptr %text, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata ptr %text, metadata !159, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !163
  br label %for.cond.i, !dbg !166

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond.i ], [ -1, %entry ], !dbg !166
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !163
  %uglygep = getelementptr i8, ptr %text, i64 %lsr.iv, !dbg !166
  %uglygep14 = getelementptr i8, ptr %uglygep, i64 1, !dbg !166
  %indexed_val.i = load i8, ptr %uglygep14, align 1, !dbg !166
  %.not.i = icmp eq i8 %indexed_val.i, 0, !dbg !166
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !163
  %lsr.iv.next = add i64 %lsr.iv, 1, !dbg !166
  br i1 %.not.i, label %len.exit, label %for.cond.i, !dbg !166

len.exit:                                         ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !167, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata i64 undef, metadata !167, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !168
  call void @llvm.dbg.value(metadata i64 undef, metadata !55, metadata !DIExpression()) #17, !dbg !168
  %0 = call ptr @malloc(i64 %lsr.iv.next) #17, !dbg !170
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !168
  call void @llvm.dbg.value(metadata ptr %0, metadata !58, metadata !DIExpression()) #17, !dbg !168
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %lsr.iv.next, i1 false) #17, !dbg !171
  call void @llvm.dbg.value(metadata ptr null, metadata !172, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata ptr %0, metadata !172, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr %0, metadata !101, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr %text, metadata !103, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 undef, metadata !104, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr %0, metadata !105, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr %text, metadata !106, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !173
  %1 = icmp sgt i64 %lsr.iv.next, 0, !dbg !175
  br i1 %1, label %for.body.i.preheader, label %copy.exit, !dbg !175

for.body.i.preheader:                             ; preds = %len.exit
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %text, i64 %lsr.iv.next, i1 false), !dbg !176
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !173
  br label %copy.exit, !dbg !177

copy.exit:                                        ; preds = %for.body.i.preheader, %len.exit
  call void @llvm.dbg.value(metadata ptr null, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !158
  call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !158
  call void @llvm.dbg.value(metadata ptr %0, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !158
  call void @llvm.dbg.value(metadata i64 undef, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !158
  %2 = load ptr, ptr %__apoc_internal_context, align 8, !dbg !177
  store ptr %0, ptr %2, align 8, !dbg !177
  %.repack10 = getelementptr inbounds %string, ptr %2, i64 0, i32 1, !dbg !177
  store i64 %lsr.iv.next, ptr %.repack10, align 8, !dbg !177
  ret void, !dbg !177
}

; Function Attrs: nofree nounwind
define void @terminate_string(ptr nocapture readonly %__apoc_internal_context, %string %str) local_unnamed_addr #3 !dbg !179 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !182, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !183
  call void @llvm.dbg.value(metadata i64 0, metadata !182, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !183
  %str.fca.0.extract = extractvalue %string %str, 0
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract, metadata !182, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !183
  %str.fca.1.extract = extractvalue %string %str, 1
  call void @llvm.dbg.value(metadata i64 %str.fca.1.extract, metadata !182, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !183
  call void @llvm.dbg.value(metadata ptr null, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !183
  call void @llvm.dbg.value(metadata i64 0, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !183
  %0 = add i64 %str.fca.1.extract, 1, !dbg !185
  call void @llvm.dbg.value(metadata i64 %0, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !183
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !186
  call void @llvm.dbg.value(metadata i64 %0, metadata !55, metadata !DIExpression()) #17, !dbg !186
  %1 = call ptr @malloc(i64 %0) #17, !dbg !188
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !186
  call void @llvm.dbg.value(metadata ptr %1, metadata !58, metadata !DIExpression()) #17, !dbg !186
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %0, i1 false) #17, !dbg !189
  call void @llvm.dbg.value(metadata ptr %1, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !183
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata ptr %1, metadata !101, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract, metadata !103, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 %str.fca.1.extract, metadata !104, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata ptr %1, metadata !105, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract, metadata !106, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !190
  %2 = icmp sgt i64 %str.fca.1.extract, 0, !dbg !192
  br i1 %2, label %for.body.i.preheader, label %copy.exit, !dbg !192

for.body.i.preheader:                             ; preds = %entry
  %3 = ptrtoint ptr %1 to i64, !dbg !186
  %str.fca.0.extract23 = ptrtoint ptr %str.fca.0.extract to i64, !dbg !183
  %min.iters.check = icmp ult i64 %str.fca.1.extract, 4, !dbg !192
  %4 = sub i64 %3, %str.fca.0.extract23, !dbg !192
  %diff.check = icmp ult i64 %4, 4, !dbg !192
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check, !dbg !192
  br i1 %or.cond, label %for.body.i.preheader24, label %vector.ph, !dbg !192

vector.ph:                                        ; preds = %for.body.i.preheader
  %n.vec = and i64 %str.fca.1.extract, -4, !dbg !192
  br label %vector.body, !dbg !192

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !193
  %5 = getelementptr i8, ptr %str.fca.0.extract, i64 %index, !dbg !193
  %wide.load = load <4 x i8>, ptr %5, align 1, !dbg !193
  %6 = getelementptr i8, ptr %1, i64 %index, !dbg !193
  store <4 x i8> %wide.load, ptr %6, align 1, !dbg !193
  %index.next = add nuw i64 %index, 4, !dbg !193
  %7 = icmp eq i64 %n.vec, %index.next, !dbg !193
  br i1 %7, label %middle.block, label %vector.body, !dbg !193, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %str.fca.1.extract, %n.vec, !dbg !192
  br i1 %cmp.n, label %copy.exit, label %for.body.i.preheader24, !dbg !192

for.body.i.preheader24:                           ; preds = %for.body.i.preheader, %middle.block
  %i.010.i.ph = phi i64 [ 0, %for.body.i.preheader ], [ %n.vec, %middle.block ]
  br label %for.body.i, !dbg !192

for.body.i:                                       ; preds = %for.body.i.preheader24, %for.body.i
  %i.010.i = phi i64 [ %8, %for.body.i ], [ %i.010.i.ph, %for.body.i.preheader24 ]
  call void @llvm.dbg.value(metadata i64 %i.010.i, metadata !107, metadata !DIExpression()), !dbg !190
  %elem_ptr.i = getelementptr i8, ptr %str.fca.0.extract, i64 %i.010.i, !dbg !193
  %indexed_val.i = load i8, ptr %elem_ptr.i, align 1, !dbg !193
  %elem_ptr6.i = getelementptr i8, ptr %1, i64 %i.010.i, !dbg !193
  store i8 %indexed_val.i, ptr %elem_ptr6.i, align 1, !dbg !193
  %8 = add nuw nsw i64 %i.010.i, 1, !dbg !193
  call void @llvm.dbg.value(metadata i64 %8, metadata !107, metadata !DIExpression()), !dbg !190
  %9 = icmp slt i64 %8, %str.fca.1.extract, !dbg !192
  br i1 %9, label %for.body.i, label %copy.exit, !dbg !192, !llvm.loop !195

copy.exit:                                        ; preds = %for.body.i, %middle.block, %entry
  %elem_ptr = getelementptr i8, ptr %1, i64 %0, !dbg !196
  store i8 0, ptr %elem_ptr, align 1, !dbg !196
  %10 = load ptr, ptr %__apoc_internal_context, align 8, !dbg !197
  store ptr %1, ptr %10, align 8, !dbg !197
  %.repack21 = getelementptr inbounds %string, ptr %10, i64 0, i32 1, !dbg !197
  store i64 %0, ptr %.repack21, align 8, !dbg !197
  ret void, !dbg !197
}

; Function Attrs: nofree nounwind
define void @build_unsigned_int(ptr nocapture readnone %__apoc_internal_context, i64 %num, i64 %num_size, ptr %builder) local_unnamed_addr #3 !dbg !198 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 %num, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 0, metadata !203, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 %num_size, metadata !203, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata ptr null, metadata !204, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata ptr %builder, metadata !204, metadata !DIExpression()), !dbg !202
  %.not = icmp eq i64 %num_size, 0, !dbg !205
  br i1 %.not, label %if.aftr, label %if.true, !dbg !206

if.true:                                          ; preds = %entry
  %num.frozen = freeze i64 %num
  %0 = udiv i64 %num.frozen, 10, !dbg !207
  %1 = mul i64 %0, 10
  %.decomposed = sub i64 %num.frozen, %1
  call void @llvm.dbg.value(metadata i64 0, metadata !208, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.value(metadata i64 %.decomposed, metadata !208, metadata !DIExpression(DW_OP_constu, 48, DW_OP_or, DW_OP_stack_value)), !dbg !202
  %2 = add i64 %num_size, -1, !dbg !207
  call void @build_unsigned_int(ptr poison, i64 %0, i64 %2, ptr %builder), !dbg !207
  %3 = trunc i64 %.decomposed to i8, !dbg !209
  %cast = or i8 %3, 48, !dbg !209
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !214
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !214
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !214
  call void @llvm.dbg.value(metadata i8 %cast, metadata !216, metadata !DIExpression()) #17, !dbg !214
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !214
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !214
  %4 = icmp ne ptr %builder, null, !dbg !218
  %"struct member ptr26.i" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 1, !dbg !218
  %selected27.i = load i64, ptr %"struct member ptr26.i", align 8, !dbg !218
  %5 = icmp eq i64 %selected27.i, 256, !dbg !218
  %"&&28.i" = and i1 %4, %5, !dbg !218
  br i1 %"&&28.i", label %for.body.i.preheader, label %"overload[x]=.10.exit", !dbg !218

for.body.i.preheader:                             ; preds = %if.true
  br label %for.body.i, !dbg !219

for.body.i:                                       ; preds = %for.body.i.preheader, %if.aftr12.i
  %"struct member ptr30.i" = phi ptr [ %"struct member ptr.i", %if.aftr12.i ], [ %"struct member ptr26.i", %for.body.i.preheader ]
  %to_put.029.i = phi ptr [ %to_put.1.i, %if.aftr12.i ], [ %builder, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i, metadata !217, metadata !DIExpression()) #17, !dbg !214
  %"struct member ptr4.i" = getelementptr inbounds %String_Builder, ptr %to_put.029.i, i64 0, i32 2, !dbg !220
  %selected5.i = load ptr, ptr %"struct member ptr4.i", align 8, !dbg !220
  %6 = icmp eq ptr %selected5.i, null, !dbg !220
  br i1 %6, label %if.true.i, label %if.aftr.i, !dbg !219

if.true.i:                                        ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !221
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !221
  %7 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !223
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !221
  call void @llvm.dbg.value(metadata ptr %7, metadata !58, metadata !DIExpression()) #17, !dbg !221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %7, i8 0, i64 272, i1 false) #17, !dbg !224
  %sunkaddr = getelementptr inbounds i8, ptr %to_put.029.i, i64 264, !dbg !225
  store ptr %7, ptr %sunkaddr, align 8, !dbg !225
  br label %if.aftr.i, !dbg !225

if.aftr.i:                                        ; preds = %if.true.i, %for.body.i
  %selected10.i = load i64, ptr %"struct member ptr30.i", align 8, !dbg !226
  %8 = icmp eq i64 %selected10.i, 256, !dbg !226
  br i1 %8, label %if.true11.i, label %if.aftr12.i, !dbg !219

if.true11.i:                                      ; preds = %if.aftr.i
  %sunkaddr9 = getelementptr inbounds i8, ptr %to_put.029.i, i64 264, !dbg !219
  %selected15.i = load ptr, ptr %sunkaddr9, align 8, !dbg !219
  call void @llvm.dbg.value(metadata ptr %selected15.i, metadata !217, metadata !DIExpression()) #17, !dbg !214
  br label %if.aftr12.i, !dbg !219

if.aftr12.i:                                      ; preds = %if.true11.i, %if.aftr.i
  %to_put.1.i = phi ptr [ %selected15.i, %if.true11.i ], [ %to_put.029.i, %if.aftr.i ], !dbg !214
  call void @llvm.dbg.value(metadata ptr %to_put.1.i, metadata !217, metadata !DIExpression()) #17, !dbg !214
  %9 = icmp ne ptr %to_put.1.i, null, !dbg !218
  %"struct member ptr.i" = getelementptr inbounds %String_Builder, ptr %to_put.1.i, i64 0, i32 1, !dbg !218
  %selected.i = load i64, ptr %"struct member ptr.i", align 8, !dbg !218
  %10 = icmp eq i64 %selected.i, 256, !dbg !218
  %"&&.i" = and i1 %9, %10, !dbg !218
  br i1 %"&&.i", label %for.body.i, label %"overload[x]=.10.exit", !dbg !218

"overload[x]=.10.exit":                           ; preds = %if.aftr12.i, %if.true
  %to_put.0.lcssa.i = phi ptr [ %builder, %if.true ], [ %to_put.1.i, %if.aftr12.i ], !dbg !214
  %selected.lcssa.i = phi i64 [ %selected27.i, %if.true ], [ %selected.i, %if.aftr12.i ], !dbg !218
  %elem_ptr.i = getelementptr [256 x i8], ptr %to_put.0.lcssa.i, i64 0, i64 %selected.lcssa.i, !dbg !227
  store i8 %cast, ptr %elem_ptr.i, align 1, !dbg !227
  %sunkaddr10 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i, i64 256, !dbg !228
  %selected23.i = load i64, ptr %sunkaddr10, align 8, !dbg !228
  %11 = add i64 %selected23.i, 1, !dbg !228
  store i64 %11, ptr %sunkaddr10, align 8, !dbg !228
  br label %if.aftr, !dbg !209

if.aftr:                                          ; preds = %entry, %"overload[x]=.10.exit"
  ret void, !dbg !206
}

; Function Attrs: nofree nounwind
define void @int_to_str(ptr nocapture readnone %__apoc_internal_context, i64 %num, ptr %builder) local_unnamed_addr #3 !dbg !229 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i64 %num, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata ptr null, metadata !234, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata ptr %builder, metadata !234, metadata !DIExpression()), !dbg !233
  %0 = icmp eq i64 %num, 0, !dbg !235
  br i1 %0, label %if.true, label %for.body.preheader, !dbg !236

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !236

common.ret:                                       ; preds = %if.aftr5, %"overload[x]=.10.exit"
  ret void, !dbg !233

if.true:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !237
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !237
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !237
  call void @llvm.dbg.value(metadata i8 48, metadata !216, metadata !DIExpression()) #17, !dbg !237
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !237
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !237
  %1 = icmp ne ptr %builder, null, !dbg !239
  %"struct member ptr26.i" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 1, !dbg !239
  %selected27.i = load i64, ptr %"struct member ptr26.i", align 8, !dbg !239
  %2 = icmp eq i64 %selected27.i, 256, !dbg !239
  %"&&28.i" = and i1 %1, %2, !dbg !239
  br i1 %"&&28.i", label %for.body.i.preheader, label %"overload[x]=.10.exit", !dbg !239

for.body.i.preheader:                             ; preds = %if.true
  br label %for.body.i, !dbg !240

for.body.i:                                       ; preds = %for.body.i.preheader, %if.aftr12.i
  %"struct member ptr30.i" = phi ptr [ %"struct member ptr.i", %if.aftr12.i ], [ %"struct member ptr26.i", %for.body.i.preheader ]
  %to_put.029.i = phi ptr [ %to_put.1.i, %if.aftr12.i ], [ %builder, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i, metadata !217, metadata !DIExpression()) #17, !dbg !237
  %"struct member ptr4.i" = getelementptr inbounds %String_Builder, ptr %to_put.029.i, i64 0, i32 2, !dbg !241
  %selected5.i = load ptr, ptr %"struct member ptr4.i", align 8, !dbg !241
  %3 = icmp eq ptr %selected5.i, null, !dbg !241
  br i1 %3, label %if.true.i, label %if.aftr.i, !dbg !240

if.true.i:                                        ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !242
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !242
  %4 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !244
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !242
  call void @llvm.dbg.value(metadata ptr %4, metadata !58, metadata !DIExpression()) #17, !dbg !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %4, i8 0, i64 272, i1 false) #17, !dbg !245
  %sunkaddr = getelementptr inbounds i8, ptr %to_put.029.i, i64 264, !dbg !246
  store ptr %4, ptr %sunkaddr, align 8, !dbg !246
  br label %if.aftr.i, !dbg !246

if.aftr.i:                                        ; preds = %if.true.i, %for.body.i
  %selected10.i = load i64, ptr %"struct member ptr30.i", align 8, !dbg !247
  %5 = icmp eq i64 %selected10.i, 256, !dbg !247
  br i1 %5, label %if.true11.i, label %if.aftr12.i, !dbg !240

if.true11.i:                                      ; preds = %if.aftr.i
  %sunkaddr45 = getelementptr inbounds i8, ptr %to_put.029.i, i64 264, !dbg !240
  %selected15.i = load ptr, ptr %sunkaddr45, align 8, !dbg !240
  call void @llvm.dbg.value(metadata ptr %selected15.i, metadata !217, metadata !DIExpression()) #17, !dbg !237
  br label %if.aftr12.i, !dbg !240

if.aftr12.i:                                      ; preds = %if.true11.i, %if.aftr.i
  %to_put.1.i = phi ptr [ %selected15.i, %if.true11.i ], [ %to_put.029.i, %if.aftr.i ], !dbg !237
  call void @llvm.dbg.value(metadata ptr %to_put.1.i, metadata !217, metadata !DIExpression()) #17, !dbg !237
  %6 = icmp ne ptr %to_put.1.i, null, !dbg !239
  %"struct member ptr.i" = getelementptr inbounds %String_Builder, ptr %to_put.1.i, i64 0, i32 1, !dbg !239
  %selected.i = load i64, ptr %"struct member ptr.i", align 8, !dbg !239
  %7 = icmp eq i64 %selected.i, 256, !dbg !239
  %"&&.i" = and i1 %6, %7, !dbg !239
  br i1 %"&&.i", label %for.body.i, label %"overload[x]=.10.exit", !dbg !239

"overload[x]=.10.exit":                           ; preds = %if.aftr12.i, %if.true
  %to_put.0.lcssa.i = phi ptr [ %builder, %if.true ], [ %to_put.1.i, %if.aftr12.i ], !dbg !237
  %selected.lcssa.i = phi i64 [ %selected27.i, %if.true ], [ %selected.i, %if.aftr12.i ], !dbg !239
  %elem_ptr.i = getelementptr [256 x i8], ptr %to_put.0.lcssa.i, i64 0, i64 %selected.lcssa.i, !dbg !248
  store i8 48, ptr %elem_ptr.i, align 1, !dbg !248
  %sunkaddr46 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i, i64 256, !dbg !249
  %selected23.i = load i64, ptr %sunkaddr46, align 8, !dbg !249
  %8 = add i64 %selected23.i, 1, !dbg !249
  store i64 %8, ptr %sunkaddr46, align 8, !dbg !249
  br label %common.ret

for.body:                                         ; preds = %for.body.preheader, %for.body
  %lsr.iv50 = phi i64 [ 0, %for.body.preheader ], [ %lsr.iv.next51, %for.body ]
  %div_copy.043 = phi i64 [ %9, %for.body ], [ %num, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %lsr.iv50, metadata !250, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !233
  call void @llvm.dbg.value(metadata i64 %div_copy.043, metadata !251, metadata !DIExpression()), !dbg !233
  %9 = sdiv i64 %div_copy.043, 10, !dbg !252
  call void @llvm.dbg.value(metadata i64 %9, metadata !251, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i64 %lsr.iv50, metadata !250, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !233
  %div_copy.043.off = add i64 %div_copy.043, 9, !dbg !236
  %10 = icmp ult i64 %div_copy.043.off, 19, !dbg !236
  %lsr.iv.next51 = add i64 %lsr.iv50, 1, !dbg !236
  br i1 %10, label %for.aftr, label %for.body, !dbg !236

for.aftr:                                         ; preds = %for.body
  %11 = icmp slt i64 %num, 0, !dbg !253
  %12 = add i64 %lsr.iv.next51, 1, !dbg !254
  br i1 %11, label %if.true4, label %if.aftr5, !dbg !254

if.true4:                                         ; preds = %for.aftr
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !255
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !255
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !255
  call void @llvm.dbg.value(metadata i8 45, metadata !216, metadata !DIExpression()) #17, !dbg !255
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !255
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !255
  %13 = icmp ne ptr %builder, null, !dbg !257
  %"struct member ptr26.i18" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 1, !dbg !257
  %selected27.i19 = load i64, ptr %"struct member ptr26.i18", align 8, !dbg !257
  %14 = icmp eq i64 %selected27.i19, 256, !dbg !257
  %"&&28.i20" = and i1 %13, %14, !dbg !257
  br i1 %"&&28.i20", label %for.body.i25.preheader, label %"overload[x]=.10.exit41", !dbg !257

for.body.i25.preheader:                           ; preds = %if.true4
  br label %for.body.i25, !dbg !258

for.body.i25:                                     ; preds = %for.body.i25.preheader, %if.aftr12.i40
  %"struct member ptr30.i21" = phi ptr [ %"struct member ptr.i37", %if.aftr12.i40 ], [ %"struct member ptr26.i18", %for.body.i25.preheader ]
  %to_put.029.i22 = phi ptr [ %to_put.1.i36, %if.aftr12.i40 ], [ %builder, %for.body.i25.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i22, metadata !217, metadata !DIExpression()) #17, !dbg !255
  %"struct member ptr4.i23" = getelementptr inbounds %String_Builder, ptr %to_put.029.i22, i64 0, i32 2, !dbg !259
  %selected5.i24 = load ptr, ptr %"struct member ptr4.i23", align 8, !dbg !259
  %15 = icmp eq ptr %selected5.i24, null, !dbg !259
  br i1 %15, label %if.true.i31, label %if.aftr.i33, !dbg !258

if.true.i31:                                      ; preds = %for.body.i25
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !260
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !260
  %16 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !262
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !260
  call void @llvm.dbg.value(metadata ptr %16, metadata !58, metadata !DIExpression()) #17, !dbg !260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %16, i8 0, i64 272, i1 false) #17, !dbg !263
  %sunkaddr47 = getelementptr inbounds i8, ptr %to_put.029.i22, i64 264, !dbg !264
  store ptr %16, ptr %sunkaddr47, align 8, !dbg !264
  br label %if.aftr.i33, !dbg !264

if.aftr.i33:                                      ; preds = %if.true.i31, %for.body.i25
  %selected10.i32 = load i64, ptr %"struct member ptr30.i21", align 8, !dbg !265
  %17 = icmp eq i64 %selected10.i32, 256, !dbg !265
  br i1 %17, label %if.true11.i35, label %if.aftr12.i40, !dbg !258

if.true11.i35:                                    ; preds = %if.aftr.i33
  %sunkaddr48 = getelementptr inbounds i8, ptr %to_put.029.i22, i64 264, !dbg !258
  %selected15.i34 = load ptr, ptr %sunkaddr48, align 8, !dbg !258
  call void @llvm.dbg.value(metadata ptr %selected15.i34, metadata !217, metadata !DIExpression()) #17, !dbg !255
  br label %if.aftr12.i40, !dbg !258

if.aftr12.i40:                                    ; preds = %if.true11.i35, %if.aftr.i33
  %to_put.1.i36 = phi ptr [ %selected15.i34, %if.true11.i35 ], [ %to_put.029.i22, %if.aftr.i33 ], !dbg !255
  call void @llvm.dbg.value(metadata ptr %to_put.1.i36, metadata !217, metadata !DIExpression()) #17, !dbg !255
  %18 = icmp ne ptr %to_put.1.i36, null, !dbg !257
  %"struct member ptr.i37" = getelementptr inbounds %String_Builder, ptr %to_put.1.i36, i64 0, i32 1, !dbg !257
  %selected.i38 = load i64, ptr %"struct member ptr.i37", align 8, !dbg !257
  %19 = icmp eq i64 %selected.i38, 256, !dbg !257
  %"&&.i39" = and i1 %18, %19, !dbg !257
  br i1 %"&&.i39", label %for.body.i25, label %"overload[x]=.10.exit41", !dbg !257

"overload[x]=.10.exit41":                         ; preds = %if.aftr12.i40, %if.true4
  %to_put.0.lcssa.i26 = phi ptr [ %builder, %if.true4 ], [ %to_put.1.i36, %if.aftr12.i40 ], !dbg !255
  %selected.lcssa.i28 = phi i64 [ %selected27.i19, %if.true4 ], [ %selected.i38, %if.aftr12.i40 ], !dbg !257
  %elem_ptr.i29 = getelementptr [256 x i8], ptr %to_put.0.lcssa.i26, i64 0, i64 %selected.lcssa.i28, !dbg !266
  store i8 45, ptr %elem_ptr.i29, align 1, !dbg !266
  %sunkaddr49 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i26, i64 256, !dbg !267
  %selected23.i30 = load i64, ptr %sunkaddr49, align 8, !dbg !267
  %20 = add i64 %selected23.i30, 1, !dbg !267
  store i64 %20, ptr %sunkaddr49, align 8, !dbg !267
  %21 = sub i64 0, %num, !dbg !268
  call void @llvm.dbg.value(metadata i64 %21, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i64 undef, metadata !250, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !233
  br label %if.aftr5, !dbg !269

if.aftr5:                                         ; preds = %for.aftr, %"overload[x]=.10.exit41"
  %num2.0 = phi i64 [ %21, %"overload[x]=.10.exit41" ], [ %num, %for.aftr ]
  %num_size.1 = phi i64 [ %12, %"overload[x]=.10.exit41" ], [ %lsr.iv.next51, %for.aftr ], !dbg !233
  call void @llvm.dbg.value(metadata i64 %num_size.1, metadata !250, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i64 %num2.0, metadata !232, metadata !DIExpression()), !dbg !233
  call void @build_unsigned_int(ptr poison, i64 %num2.0, i64 %num_size.1, ptr %builder), !dbg !270
  br label %common.ret
}

; Function Attrs: nofree nounwind
define void @float_to_str(ptr nocapture readnone %__apoc_internal_context, double %num, ptr %builder) local_unnamed_addr #3 !dbg !271 {
entry:
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %num, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr null, metadata !276, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr %builder, metadata !276, metadata !DIExpression()), !dbg !275
  %0 = fcmp ult double %num, 0.000000e+00, !dbg !277
  br i1 %0, label %if.true, label %if.aftr, !dbg !278

if.true:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !279
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !279
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !279
  call void @llvm.dbg.value(metadata i8 45, metadata !216, metadata !DIExpression()) #17, !dbg !279
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !279
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !279
  %1 = icmp ne ptr %builder, null, !dbg !281
  %"struct member ptr26.i" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 1, !dbg !281
  %selected27.i = load i64, ptr %"struct member ptr26.i", align 8, !dbg !281
  %2 = icmp eq i64 %selected27.i, 256, !dbg !281
  %"&&28.i" = and i1 %1, %2, !dbg !281
  br i1 %"&&28.i", label %for.body.i.preheader, label %"overload[x]=.10.exit", !dbg !281

for.body.i.preheader:                             ; preds = %if.true
  br label %for.body.i, !dbg !282

for.body.i:                                       ; preds = %for.body.i.preheader, %if.aftr12.i
  %"struct member ptr30.i" = phi ptr [ %"struct member ptr.i", %if.aftr12.i ], [ %"struct member ptr26.i", %for.body.i.preheader ]
  %to_put.029.i = phi ptr [ %to_put.1.i, %if.aftr12.i ], [ %builder, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i, metadata !217, metadata !DIExpression()) #17, !dbg !279
  %"struct member ptr4.i" = getelementptr inbounds %String_Builder, ptr %to_put.029.i, i64 0, i32 2, !dbg !283
  %selected5.i = load ptr, ptr %"struct member ptr4.i", align 8, !dbg !283
  %3 = icmp eq ptr %selected5.i, null, !dbg !283
  br i1 %3, label %if.true.i, label %if.aftr.i, !dbg !282

if.true.i:                                        ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !284
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !284
  %4 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !286
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !284
  call void @llvm.dbg.value(metadata ptr %4, metadata !58, metadata !DIExpression()) #17, !dbg !284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %4, i8 0, i64 272, i1 false) #17, !dbg !287
  %sunkaddr = getelementptr inbounds i8, ptr %to_put.029.i, i64 264, !dbg !288
  store ptr %4, ptr %sunkaddr, align 8, !dbg !288
  br label %if.aftr.i, !dbg !288

if.aftr.i:                                        ; preds = %if.true.i, %for.body.i
  %selected10.i = load i64, ptr %"struct member ptr30.i", align 8, !dbg !289
  %5 = icmp eq i64 %selected10.i, 256, !dbg !289
  br i1 %5, label %if.true11.i, label %if.aftr12.i, !dbg !282

if.true11.i:                                      ; preds = %if.aftr.i
  %sunkaddr119 = getelementptr inbounds i8, ptr %to_put.029.i, i64 264, !dbg !282
  %selected15.i = load ptr, ptr %sunkaddr119, align 8, !dbg !282
  call void @llvm.dbg.value(metadata ptr %selected15.i, metadata !217, metadata !DIExpression()) #17, !dbg !279
  br label %if.aftr12.i, !dbg !282

if.aftr12.i:                                      ; preds = %if.true11.i, %if.aftr.i
  %to_put.1.i = phi ptr [ %selected15.i, %if.true11.i ], [ %to_put.029.i, %if.aftr.i ], !dbg !279
  call void @llvm.dbg.value(metadata ptr %to_put.1.i, metadata !217, metadata !DIExpression()) #17, !dbg !279
  %6 = icmp ne ptr %to_put.1.i, null, !dbg !281
  %"struct member ptr.i" = getelementptr inbounds %String_Builder, ptr %to_put.1.i, i64 0, i32 1, !dbg !281
  %selected.i = load i64, ptr %"struct member ptr.i", align 8, !dbg !281
  %7 = icmp eq i64 %selected.i, 256, !dbg !281
  %"&&.i" = and i1 %6, %7, !dbg !281
  br i1 %"&&.i", label %for.body.i, label %"overload[x]=.10.exit", !dbg !281

"overload[x]=.10.exit":                           ; preds = %if.aftr12.i, %if.true
  %to_put.0.lcssa.i = phi ptr [ %builder, %if.true ], [ %to_put.1.i, %if.aftr12.i ], !dbg !279
  %selected.lcssa.i = phi i64 [ %selected27.i, %if.true ], [ %selected.i, %if.aftr12.i ], !dbg !281
  %elem_ptr.i = getelementptr [256 x i8], ptr %to_put.0.lcssa.i, i64 0, i64 %selected.lcssa.i, !dbg !290
  store i8 45, ptr %elem_ptr.i, align 1, !dbg !290
  %sunkaddr120 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i, i64 256, !dbg !291
  %selected23.i = load i64, ptr %sunkaddr120, align 8, !dbg !291
  %8 = add i64 %selected23.i, 1, !dbg !291
  store i64 %8, ptr %sunkaddr120, align 8, !dbg !291
  %9 = fneg double %num, !dbg !292
  call void @llvm.dbg.value(metadata double %9, metadata !274, metadata !DIExpression()), !dbg !275
  br label %if.aftr, !dbg !292

if.aftr:                                          ; preds = %entry, %"overload[x]=.10.exit"
  %num2.0 = phi double [ %9, %"overload[x]=.10.exit" ], [ %num, %entry ]
  call void @llvm.dbg.value(metadata double %num2.0, metadata !274, metadata !DIExpression()), !dbg !275
  %cast = fptoui double %num2.0 to i64, !dbg !293
  call void @llvm.dbg.value(metadata i64 0, metadata !294, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 %cast, metadata !294, metadata !DIExpression()), !dbg !275
  %cast4 = uitofp i64 %cast to double, !dbg !295
  %10 = fsub double %num2.0, %cast4, !dbg !295
  call void @llvm.dbg.value(metadata double %10, metadata !274, metadata !DIExpression()), !dbg !275
  %11 = icmp eq i64 %cast, 0, !dbg !296
  br i1 %11, label %if.true5, label %if.else, !dbg !278

if.true5:                                         ; preds = %if.aftr
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !297
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !297
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !297
  call void @llvm.dbg.value(metadata i8 48, metadata !216, metadata !DIExpression()) #17, !dbg !297
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !297
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !297
  %12 = icmp ne ptr %builder, null, !dbg !299
  %"struct member ptr26.i41" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 1, !dbg !299
  %selected27.i42 = load i64, ptr %"struct member ptr26.i41", align 8, !dbg !299
  %13 = icmp eq i64 %selected27.i42, 256, !dbg !299
  %"&&28.i43" = and i1 %12, %13, !dbg !299
  br i1 %"&&28.i43", label %for.body.i48.preheader, label %"overload[x]=.10.exit64", !dbg !299

for.body.i48.preheader:                           ; preds = %if.true5
  br label %for.body.i48, !dbg !300

for.body.i48:                                     ; preds = %for.body.i48.preheader, %if.aftr12.i63
  %"struct member ptr30.i44" = phi ptr [ %"struct member ptr.i60", %if.aftr12.i63 ], [ %"struct member ptr26.i41", %for.body.i48.preheader ]
  %to_put.029.i45 = phi ptr [ %to_put.1.i59, %if.aftr12.i63 ], [ %builder, %for.body.i48.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i45, metadata !217, metadata !DIExpression()) #17, !dbg !297
  %"struct member ptr4.i46" = getelementptr inbounds %String_Builder, ptr %to_put.029.i45, i64 0, i32 2, !dbg !301
  %selected5.i47 = load ptr, ptr %"struct member ptr4.i46", align 8, !dbg !301
  %14 = icmp eq ptr %selected5.i47, null, !dbg !301
  br i1 %14, label %if.true.i54, label %if.aftr.i56, !dbg !300

if.true.i54:                                      ; preds = %for.body.i48
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !302
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !302
  %15 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !304
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !302
  call void @llvm.dbg.value(metadata ptr %15, metadata !58, metadata !DIExpression()) #17, !dbg !302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %15, i8 0, i64 272, i1 false) #17, !dbg !305
  %sunkaddr121 = getelementptr inbounds i8, ptr %to_put.029.i45, i64 264, !dbg !306
  store ptr %15, ptr %sunkaddr121, align 8, !dbg !306
  br label %if.aftr.i56, !dbg !306

if.aftr.i56:                                      ; preds = %if.true.i54, %for.body.i48
  %selected10.i55 = load i64, ptr %"struct member ptr30.i44", align 8, !dbg !307
  %16 = icmp eq i64 %selected10.i55, 256, !dbg !307
  br i1 %16, label %if.true11.i58, label %if.aftr12.i63, !dbg !300

if.true11.i58:                                    ; preds = %if.aftr.i56
  %sunkaddr122 = getelementptr inbounds i8, ptr %to_put.029.i45, i64 264, !dbg !300
  %selected15.i57 = load ptr, ptr %sunkaddr122, align 8, !dbg !300
  call void @llvm.dbg.value(metadata ptr %selected15.i57, metadata !217, metadata !DIExpression()) #17, !dbg !297
  br label %if.aftr12.i63, !dbg !300

if.aftr12.i63:                                    ; preds = %if.true11.i58, %if.aftr.i56
  %to_put.1.i59 = phi ptr [ %selected15.i57, %if.true11.i58 ], [ %to_put.029.i45, %if.aftr.i56 ], !dbg !297
  call void @llvm.dbg.value(metadata ptr %to_put.1.i59, metadata !217, metadata !DIExpression()) #17, !dbg !297
  %17 = icmp ne ptr %to_put.1.i59, null, !dbg !299
  %"struct member ptr.i60" = getelementptr inbounds %String_Builder, ptr %to_put.1.i59, i64 0, i32 1, !dbg !299
  %selected.i61 = load i64, ptr %"struct member ptr.i60", align 8, !dbg !299
  %18 = icmp eq i64 %selected.i61, 256, !dbg !299
  %"&&.i62" = and i1 %17, %18, !dbg !299
  br i1 %"&&.i62", label %for.body.i48, label %"overload[x]=.10.exit64", !dbg !299

"overload[x]=.10.exit64":                         ; preds = %if.aftr12.i63, %if.true5
  %to_put.0.lcssa.i49 = phi ptr [ %builder, %if.true5 ], [ %to_put.1.i59, %if.aftr12.i63 ], !dbg !297
  %selected.lcssa.i51 = phi i64 [ %selected27.i42, %if.true5 ], [ %selected.i61, %if.aftr12.i63 ], !dbg !299
  %elem_ptr.i52 = getelementptr [256 x i8], ptr %to_put.0.lcssa.i49, i64 0, i64 %selected.lcssa.i51, !dbg !308
  store i8 48, ptr %elem_ptr.i52, align 1, !dbg !308
  %sunkaddr123 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i49, i64 256, !dbg !309
  %selected23.i53 = load i64, ptr %sunkaddr123, align 8, !dbg !309
  %19 = add i64 %selected23.i53, 1, !dbg !309
  store i64 %19, ptr %sunkaddr123, align 8, !dbg !309
  br label %if.aftr6, !dbg !310

if.aftr6:                                         ; preds = %if.else, %"overload[x]=.10.exit64"
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !311
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !311
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !311
  call void @llvm.dbg.value(metadata i8 46, metadata !216, metadata !DIExpression()) #17, !dbg !311
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !311
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !311
  %20 = icmp ne ptr %builder, null, !dbg !313
  %"struct member ptr26.i65" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 1, !dbg !313
  %selected27.i66 = load i64, ptr %"struct member ptr26.i65", align 8, !dbg !313
  %21 = icmp eq i64 %selected27.i66, 256, !dbg !313
  %"&&28.i67" = and i1 %20, %21, !dbg !313
  br i1 %"&&28.i67", label %for.body.i72.preheader, label %"overload[x]=.10.exit88", !dbg !313

for.body.i72.preheader:                           ; preds = %if.aftr6
  br label %for.body.i72, !dbg !314

for.body.i72:                                     ; preds = %for.body.i72.preheader, %if.aftr12.i87
  %"struct member ptr30.i68" = phi ptr [ %"struct member ptr.i84", %if.aftr12.i87 ], [ %"struct member ptr26.i65", %for.body.i72.preheader ]
  %to_put.029.i69 = phi ptr [ %to_put.1.i83, %if.aftr12.i87 ], [ %builder, %for.body.i72.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i69, metadata !217, metadata !DIExpression()) #17, !dbg !311
  %"struct member ptr4.i70" = getelementptr inbounds %String_Builder, ptr %to_put.029.i69, i64 0, i32 2, !dbg !315
  %selected5.i71 = load ptr, ptr %"struct member ptr4.i70", align 8, !dbg !315
  %22 = icmp eq ptr %selected5.i71, null, !dbg !315
  br i1 %22, label %if.true.i78, label %if.aftr.i80, !dbg !314

if.true.i78:                                      ; preds = %for.body.i72
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !316
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !316
  %23 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !318
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !316
  call void @llvm.dbg.value(metadata ptr %23, metadata !58, metadata !DIExpression()) #17, !dbg !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %23, i8 0, i64 272, i1 false) #17, !dbg !319
  %sunkaddr124 = getelementptr inbounds i8, ptr %to_put.029.i69, i64 264, !dbg !320
  store ptr %23, ptr %sunkaddr124, align 8, !dbg !320
  br label %if.aftr.i80, !dbg !320

if.aftr.i80:                                      ; preds = %if.true.i78, %for.body.i72
  %selected10.i79 = load i64, ptr %"struct member ptr30.i68", align 8, !dbg !321
  %24 = icmp eq i64 %selected10.i79, 256, !dbg !321
  br i1 %24, label %if.true11.i82, label %if.aftr12.i87, !dbg !314

if.true11.i82:                                    ; preds = %if.aftr.i80
  %sunkaddr125 = getelementptr inbounds i8, ptr %to_put.029.i69, i64 264, !dbg !314
  %selected15.i81 = load ptr, ptr %sunkaddr125, align 8, !dbg !314
  call void @llvm.dbg.value(metadata ptr %selected15.i81, metadata !217, metadata !DIExpression()) #17, !dbg !311
  br label %if.aftr12.i87, !dbg !314

if.aftr12.i87:                                    ; preds = %if.true11.i82, %if.aftr.i80
  %to_put.1.i83 = phi ptr [ %selected15.i81, %if.true11.i82 ], [ %to_put.029.i69, %if.aftr.i80 ], !dbg !311
  call void @llvm.dbg.value(metadata ptr %to_put.1.i83, metadata !217, metadata !DIExpression()) #17, !dbg !311
  %25 = icmp ne ptr %to_put.1.i83, null, !dbg !313
  %"struct member ptr.i84" = getelementptr inbounds %String_Builder, ptr %to_put.1.i83, i64 0, i32 1, !dbg !313
  %selected.i85 = load i64, ptr %"struct member ptr.i84", align 8, !dbg !313
  %26 = icmp eq i64 %selected.i85, 256, !dbg !313
  %"&&.i86" = and i1 %25, %26, !dbg !313
  br i1 %"&&.i86", label %for.body.i72, label %"overload[x]=.10.exit88", !dbg !313

"overload[x]=.10.exit88":                         ; preds = %if.aftr12.i87, %if.aftr6
  %to_put.0.lcssa.i73 = phi ptr [ %builder, %if.aftr6 ], [ %to_put.1.i83, %if.aftr12.i87 ], !dbg !311
  %selected.lcssa.i75 = phi i64 [ %selected27.i66, %if.aftr6 ], [ %selected.i85, %if.aftr12.i87 ], !dbg !313
  %elem_ptr.i76 = getelementptr [256 x i8], ptr %to_put.0.lcssa.i73, i64 0, i64 %selected.lcssa.i75, !dbg !322
  store i8 46, ptr %elem_ptr.i76, align 1, !dbg !322
  %sunkaddr126 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i73, i64 256, !dbg !323
  %selected23.i77 = load i64, ptr %sunkaddr126, align 8, !dbg !323
  %27 = add i64 %selected23.i77, 1, !dbg !323
  store i64 %27, ptr %sunkaddr126, align 8, !dbg !323
  call void @llvm.dbg.value(metadata i64 0, metadata !324, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 0, metadata !324, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata double %10, metadata !274, metadata !DIExpression()), !dbg !275
  %cast12113 = fptoui double %10 to i64, !dbg !278
  %cast13114 = uitofp i64 %cast12113 to double, !dbg !278
  %28 = fcmp une double %10, %cast13114, !dbg !278
  br i1 %28, label %for.body.preheader, label %for.cond17.preheader, !dbg !278

for.body.preheader:                               ; preds = %"overload[x]=.10.exit88"
  br label %for.body, !dbg !278

if.else:                                          ; preds = %if.aftr
  call void @int_to_str(ptr poison, i64 %cast, ptr %builder), !dbg !325
  br label %if.aftr6, !dbg !325

for.cond17.preheader:                             ; preds = %for.body, %"overload[x]=.10.exit88"
  %zeroes_to_append.0.lcssa = phi i64 [ 0, %"overload[x]=.10.exit88" ], [ %spec.select, %for.body ], !dbg !275
  %num2.1.lcssa = phi double [ %10, %"overload[x]=.10.exit88" ], [ %30, %for.body ], !dbg !275
  call void @llvm.dbg.value(metadata i64 0, metadata !326, metadata !DIExpression()), !dbg !275
  %29 = icmp sgt i64 %zeroes_to_append.0.lcssa, 0, !dbg !327
  br i1 %29, label %for.body18.preheader, label %for.aftr19, !dbg !327

for.body18.preheader:                             ; preds = %for.cond17.preheader
  br label %for.body18, !dbg !328

for.body:                                         ; preds = %for.body.preheader, %for.body
  %num2.1116 = phi double [ %30, %for.body ], [ %10, %for.body.preheader ]
  %zeroes_to_append.0115 = phi i64 [ %spec.select, %for.body ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata double %num2.1116, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata i64 %zeroes_to_append.0115, metadata !324, metadata !DIExpression()), !dbg !275
  %30 = fmul double %num2.1116, 1.000000e+01, !dbg !330
  call void @llvm.dbg.value(metadata double %30, metadata !274, metadata !DIExpression()), !dbg !275
  %cast14 = fptoui double %30 to i64, !dbg !331
  %31 = icmp eq i64 %cast14, 0, !dbg !331
  %32 = zext i1 %31 to i64, !dbg !332
  %spec.select = add i64 %zeroes_to_append.0115, %32, !dbg !332
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !324, metadata !DIExpression()), !dbg !275
  %cast12 = fptoui double %30 to i64, !dbg !278
  %cast13 = uitofp i64 %cast12 to double, !dbg !278
  %33 = fcmp une double %30, %cast13, !dbg !278
  br i1 %33, label %for.body, label %for.cond17.preheader, !dbg !278

for.body18:                                       ; preds = %for.body18.preheader, %"overload[x]=.10.exit112"
  %i.0118 = phi i64 [ %42, %"overload[x]=.10.exit112" ], [ 0, %for.body18.preheader ]
  %34 = icmp ne ptr %builder, null, !dbg !313
  call void @llvm.dbg.value(metadata i64 %i.0118, metadata !326, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !333
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !333
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !333
  call void @llvm.dbg.value(metadata i8 48, metadata !216, metadata !DIExpression()) #17, !dbg !333
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !333
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !333
  %sunkaddr127 = getelementptr inbounds i8, ptr %builder, i64 256, !dbg !328
  %selected27.i90 = load i64, ptr %sunkaddr127, align 8, !dbg !328
  %35 = icmp eq i64 %selected27.i90, 256, !dbg !328
  %"&&28.i91" = and i1 %34, %35, !dbg !328
  br i1 %"&&28.i91", label %for.body.i96.preheader, label %"overload[x]=.10.exit112", !dbg !328

for.body.i96.preheader:                           ; preds = %for.body18
  br label %for.body.i96, !dbg !334

for.body.i96:                                     ; preds = %for.body.i96.preheader, %if.aftr12.i111
  %"struct member ptr30.i92" = phi ptr [ %"struct member ptr.i108", %if.aftr12.i111 ], [ %"struct member ptr26.i65", %for.body.i96.preheader ]
  %to_put.029.i93 = phi ptr [ %to_put.1.i107, %if.aftr12.i111 ], [ %builder, %for.body.i96.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i93, metadata !217, metadata !DIExpression()) #17, !dbg !333
  %"struct member ptr4.i94" = getelementptr inbounds %String_Builder, ptr %to_put.029.i93, i64 0, i32 2, !dbg !335
  %selected5.i95 = load ptr, ptr %"struct member ptr4.i94", align 8, !dbg !335
  %36 = icmp eq ptr %selected5.i95, null, !dbg !335
  br i1 %36, label %if.true.i102, label %if.aftr.i104, !dbg !334

if.true.i102:                                     ; preds = %for.body.i96
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !336
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !336
  %37 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !338
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !336
  call void @llvm.dbg.value(metadata ptr %37, metadata !58, metadata !DIExpression()) #17, !dbg !336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %37, i8 0, i64 272, i1 false) #17, !dbg !339
  %sunkaddr128 = getelementptr inbounds i8, ptr %to_put.029.i93, i64 264, !dbg !340
  store ptr %37, ptr %sunkaddr128, align 8, !dbg !340
  br label %if.aftr.i104, !dbg !340

if.aftr.i104:                                     ; preds = %if.true.i102, %for.body.i96
  %selected10.i103 = load i64, ptr %"struct member ptr30.i92", align 8, !dbg !341
  %38 = icmp eq i64 %selected10.i103, 256, !dbg !341
  br i1 %38, label %if.true11.i106, label %if.aftr12.i111, !dbg !334

if.true11.i106:                                   ; preds = %if.aftr.i104
  %sunkaddr129 = getelementptr inbounds i8, ptr %to_put.029.i93, i64 264, !dbg !334
  %selected15.i105 = load ptr, ptr %sunkaddr129, align 8, !dbg !334
  call void @llvm.dbg.value(metadata ptr %selected15.i105, metadata !217, metadata !DIExpression()) #17, !dbg !333
  br label %if.aftr12.i111, !dbg !334

if.aftr12.i111:                                   ; preds = %if.true11.i106, %if.aftr.i104
  %to_put.1.i107 = phi ptr [ %selected15.i105, %if.true11.i106 ], [ %to_put.029.i93, %if.aftr.i104 ], !dbg !333
  call void @llvm.dbg.value(metadata ptr %to_put.1.i107, metadata !217, metadata !DIExpression()) #17, !dbg !333
  %39 = icmp ne ptr %to_put.1.i107, null, !dbg !328
  %"struct member ptr.i108" = getelementptr inbounds %String_Builder, ptr %to_put.1.i107, i64 0, i32 1, !dbg !328
  %selected.i109 = load i64, ptr %"struct member ptr.i108", align 8, !dbg !328
  %40 = icmp eq i64 %selected.i109, 256, !dbg !328
  %"&&.i110" = and i1 %39, %40, !dbg !328
  br i1 %"&&.i110", label %for.body.i96, label %"overload[x]=.10.exit112", !dbg !328

"overload[x]=.10.exit112":                        ; preds = %if.aftr12.i111, %for.body18
  %to_put.0.lcssa.i97 = phi ptr [ %builder, %for.body18 ], [ %to_put.1.i107, %if.aftr12.i111 ], !dbg !333
  %selected.lcssa.i99 = phi i64 [ %selected27.i90, %for.body18 ], [ %selected.i109, %if.aftr12.i111 ], !dbg !328
  %elem_ptr.i100 = getelementptr [256 x i8], ptr %to_put.0.lcssa.i97, i64 0, i64 %selected.lcssa.i99, !dbg !342
  store i8 48, ptr %elem_ptr.i100, align 1, !dbg !342
  %sunkaddr130 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i97, i64 256, !dbg !343
  %selected23.i101 = load i64, ptr %sunkaddr130, align 8, !dbg !343
  %41 = add i64 %selected23.i101, 1, !dbg !343
  store i64 %41, ptr %sunkaddr130, align 8, !dbg !343
  %42 = add nuw nsw i64 %i.0118, 1, !dbg !344
  call void @llvm.dbg.value(metadata i64 %42, metadata !326, metadata !DIExpression()), !dbg !275
  %43 = icmp slt i64 %42, %zeroes_to_append.0.lcssa, !dbg !327
  br i1 %43, label %for.body18, label %for.aftr19, !dbg !327

for.aftr19:                                       ; preds = %"overload[x]=.10.exit112", %for.cond17.preheader
  %cast23 = fptosi double %num2.1.lcssa to i64, !dbg !345
  call void @int_to_str(ptr poison, i64 %cast23, ptr %builder), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: nofree nounwind
define void @parse_format(ptr nocapture readonly %__apoc_internal_context, %string %format, ptr nocapture readonly %list) local_unnamed_addr #3 !dbg !347 {
entry:
  %builder = alloca %String_Builder, align 256
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  call void @llvm.dbg.value(metadata ptr null, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  call void @llvm.dbg.value(metadata i64 0, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  call void @llvm.dbg.value(metadata ptr undef, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  %format.fca.1.extract = extractvalue %string %format, 1
  call void @llvm.dbg.value(metadata i64 %format.fca.1.extract, metadata !409, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  call void @llvm.dbg.value(metadata ptr null, metadata !411, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata ptr %list, metadata !411, metadata !DIExpression()), !dbg !410
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 256 dereferenceable(272) %builder, i8 0, i64 272, i1 false), !dbg !412
  store ptr %builder, ptr %__apoc_internal_context4, align 8, !dbg !412
  call void @init_builder(ptr nonnull %__apoc_internal_context4, ptr nonnull @1), !dbg !412
  call void @llvm.dbg.declare(metadata ptr %builder, metadata !413, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i64 0, metadata !414, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i64 0, metadata !414, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i64 0, metadata !415, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i64 0, metadata !415, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata ptr poison, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  call void @llvm.dbg.value(metadata ptr poison, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  %0 = icmp sgt i64 %format.fca.1.extract, 0, !dbg !417
  br i1 %0, label %for.body.lr.ph, label %for.aftr, !dbg !417

for.body.lr.ph:                                   ; preds = %entry
  %str.fca.0.extract.i = extractvalue %string %format, 0
  %"struct member ptr26.i3997" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 1
  %"struct member ptr26.i3971" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 1
  br label %for.body, !dbg !417

for.body:                                         ; preds = %for.body.lr.ph, %if.aftr
  %list_index.04028 = phi i64 [ 0, %for.body.lr.ph ], [ %list_index.1, %if.aftr ]
  %i.04027 = phi i64 [ 0, %for.body.lr.ph ], [ %34, %if.aftr ]
  call void @llvm.dbg.value(metadata i64 %list_index.04028, metadata !414, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i64 %i.04027, metadata !415, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata ptr null, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !422
  call void @llvm.dbg.value(metadata i64 0, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !422
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract.i, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !422
  call void @llvm.dbg.value(metadata i64 undef, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !422
  call void @llvm.dbg.value(metadata i64 0, metadata !424, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i64 %i.04027, metadata !424, metadata !DIExpression()), !dbg !422
  %elem_ptr.i = getelementptr i8, ptr %str.fca.0.extract.i, i64 %i.04027, !dbg !425
  %indexed_val.i = load i8, ptr %elem_ptr.i, align 1, !dbg !425
  %1 = icmp eq i8 %indexed_val.i, 37, !dbg !426
  br i1 %1, label %if.true, label %if.else58, !dbg !427

for.aftr:                                         ; preds = %if.aftr, %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !428
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !428
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !428
  call void @llvm.dbg.value(metadata i8 10, metadata !216, metadata !DIExpression()) #17, !dbg !428
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !428
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !428
  %"struct member ptr26.i" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 1, !dbg !430
  %selected27.i = load i64, ptr %"struct member ptr26.i", align 256, !dbg !430
  %2 = icmp eq i64 %selected27.i, 256, !dbg !430
  br i1 %2, label %for.body.i.preheader, label %"overload[x]=.10.exit", !dbg !430

for.body.i.preheader:                             ; preds = %for.aftr
  br label %for.body.i, !dbg !431

for.body.i:                                       ; preds = %for.body.i.preheader, %if.aftr12.i
  %"struct member ptr30.i" = phi ptr [ %"struct member ptr.i", %if.aftr12.i ], [ %"struct member ptr26.i", %for.body.i.preheader ]
  %to_put.029.i = phi ptr [ %to_put.1.i, %if.aftr12.i ], [ %builder, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i, metadata !217, metadata !DIExpression()) #17, !dbg !428
  %"struct member ptr4.i" = getelementptr inbounds %String_Builder, ptr %to_put.029.i, i64 0, i32 2, !dbg !432
  %selected5.i = load ptr, ptr %"struct member ptr4.i", align 8, !dbg !432
  %3 = icmp eq ptr %selected5.i, null, !dbg !432
  br i1 %3, label %if.true.i, label %if.aftr.i, !dbg !431

if.true.i:                                        ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !433
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !433
  %4 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !435
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !433
  call void @llvm.dbg.value(metadata ptr %4, metadata !58, metadata !DIExpression()) #17, !dbg !433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %4, i8 0, i64 272, i1 false) #17, !dbg !436
  %sunkaddr = getelementptr inbounds i8, ptr %to_put.029.i, i64 264, !dbg !437
  store ptr %4, ptr %sunkaddr, align 8, !dbg !437
  br label %if.aftr.i, !dbg !437

if.aftr.i:                                        ; preds = %if.true.i, %for.body.i
  %selected10.i = load i64, ptr %"struct member ptr30.i", align 8, !dbg !438
  %5 = icmp eq i64 %selected10.i, 256, !dbg !438
  br i1 %5, label %if.true11.i, label %if.aftr12.i, !dbg !431

if.true11.i:                                      ; preds = %if.aftr.i
  %sunkaddr4053 = getelementptr inbounds i8, ptr %to_put.029.i, i64 264, !dbg !431
  %selected15.i = load ptr, ptr %sunkaddr4053, align 8, !dbg !431
  call void @llvm.dbg.value(metadata ptr %selected15.i, metadata !217, metadata !DIExpression()) #17, !dbg !428
  br label %if.aftr12.i, !dbg !431

if.aftr12.i:                                      ; preds = %if.true11.i, %if.aftr.i
  %to_put.1.i = phi ptr [ %selected15.i, %if.true11.i ], [ %to_put.029.i, %if.aftr.i ], !dbg !428
  call void @llvm.dbg.value(metadata ptr %to_put.1.i, metadata !217, metadata !DIExpression()) #17, !dbg !428
  %6 = icmp ne ptr %to_put.1.i, null, !dbg !430
  %"struct member ptr.i" = getelementptr inbounds %String_Builder, ptr %to_put.1.i, i64 0, i32 1, !dbg !430
  %selected.i = load i64, ptr %"struct member ptr.i", align 8, !dbg !430
  %7 = icmp eq i64 %selected.i, 256, !dbg !430
  %"&&.i" = and i1 %6, %7, !dbg !430
  br i1 %"&&.i", label %for.body.i, label %"overload[x]=.10.exit", !dbg !430

"overload[x]=.10.exit":                           ; preds = %if.aftr12.i, %for.aftr
  %to_put.0.lcssa.i = phi ptr [ %builder, %for.aftr ], [ %to_put.1.i, %if.aftr12.i ], !dbg !428
  %selected.lcssa.i = phi i64 [ %selected27.i, %for.aftr ], [ %selected.i, %if.aftr12.i ], !dbg !430
  %elem_ptr.i3967 = getelementptr [256 x i8], ptr %to_put.0.lcssa.i, i64 0, i64 %selected.lcssa.i, !dbg !439
  store i8 10, ptr %elem_ptr.i3967, align 1, !dbg !439
  %sunkaddr4054 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i, i64 256, !dbg !440
  %selected23.i = load i64, ptr %sunkaddr4054, align 8, !dbg !440
  %8 = add i64 %selected23.i, 1, !dbg !440
  store i64 %8, ptr %sunkaddr4054, align 8, !dbg !440
  call void @llvm.dbg.value(metadata ptr null, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  call void @llvm.dbg.value(metadata i64 0, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  call void @llvm.dbg.value(metadata ptr null, metadata !74, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata ptr %builder, metadata !74, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata ptr null, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !82, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !82, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata ptr null, metadata !83, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata ptr %builder, metadata !83, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 poison, metadata !84, metadata !DIExpression()) #17, !dbg !442
  %"struct member ptr79.i" = getelementptr inbounds %String_Builder, ptr %builder, i64 0, i32 2, !dbg !444
  %selected80.i = load ptr, ptr %"struct member ptr79.i", align 8, !dbg !444
  %.not81.i = icmp eq ptr %selected80.i, null, !dbg !444
  br i1 %.not81.i, label %for.aftr.i, label %for.body.i4024.preheader, !dbg !444

for.body.i4024.preheader:                         ; preds = %"overload[x]=.10.exit"
  br label %for.body.i4024, !dbg !444

for.body.i4024:                                   ; preds = %for.body.i4024.preheader, %for.body.i4024
  %selected84.i = phi ptr [ %selected.i4023, %for.body.i4024 ], [ %selected80.i, %for.body.i4024.preheader ]
  %out_len.083.i = phi i64 [ %9, %for.body.i4024 ], [ 0, %for.body.i4024.preheader ]
  %current.082.i = phi ptr [ %selected84.i, %for.body.i4024 ], [ %builder, %for.body.i4024.preheader ]
  call void @llvm.dbg.value(metadata i64 %out_len.083.i, metadata !82, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata ptr %current.082.i, metadata !83, metadata !DIExpression()) #17, !dbg !442
  %"struct member ptr4.i4020" = getelementptr inbounds %String_Builder, ptr %current.082.i, i64 0, i32 1, !dbg !445
  %selected5.i4021 = load i64, ptr %"struct member ptr4.i4020", align 8, !dbg !445
  %9 = add i64 %selected5.i4021, %out_len.083.i, !dbg !445
  call void @llvm.dbg.value(metadata i64 %9, metadata !82, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata ptr %selected84.i, metadata !83, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 poison, metadata !84, metadata !DIExpression()) #17, !dbg !442
  %"struct member ptr.i4022" = getelementptr inbounds %String_Builder, ptr %selected84.i, i64 0, i32 2, !dbg !444
  %selected.i4023 = load ptr, ptr %"struct member ptr.i4022", align 8, !dbg !444
  %.not.i = icmp eq ptr %selected.i4023, null, !dbg !444
  br i1 %.not.i, label %for.aftr.i, label %for.body.i4024, !dbg !444

for.aftr.i:                                       ; preds = %for.body.i4024, %"overload[x]=.10.exit"
  %current.0.lcssa.i = phi ptr [ %builder, %"overload[x]=.10.exit" ], [ %selected84.i, %for.body.i4024 ], !dbg !442
  %out_len.0.lcssa.i = phi i64 [ 0, %"overload[x]=.10.exit" ], [ %9, %for.body.i4024 ], !dbg !442
  %"struct member ptr10.i" = getelementptr inbounds %String_Builder, ptr %current.0.lcssa.i, i64 0, i32 1, !dbg !446
  %selected11.i = load i64, ptr %"struct member ptr10.i", align 8, !dbg !446
  %10 = add i64 %selected11.i, %out_len.0.lcssa.i, !dbg !446
  call void @llvm.dbg.value(metadata i64 %10, metadata !82, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !447
  call void @llvm.dbg.value(metadata i64 %10, metadata !55, metadata !DIExpression()) #17, !dbg !447
  %11 = call ptr @malloc(i64 %10) #17, !dbg !449
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !447
  call void @llvm.dbg.value(metadata ptr %11, metadata !58, metadata !DIExpression()) #17, !dbg !447
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false) #17, !dbg !450
  call void @llvm.dbg.value(metadata ptr %11, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 %10, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !92, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !92, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !93, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 0, metadata !93, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 poison, metadata !93, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata ptr %current.0.lcssa.i, metadata !83, metadata !DIExpression()) #17, !dbg !442
  %"struct member ptr2086.i" = getelementptr inbounds %String_Builder, ptr %current.0.lcssa.i, i64 0, i32 2, !dbg !451
  %selected2187.i = load ptr, ptr %"struct member ptr2086.i", align 8, !dbg !451
  %.not7088.i = icmp eq ptr %selected2187.i, null, !dbg !451
  br i1 %.not7088.i, label %for.aftr18.i, label %for.body17.i.preheader, !dbg !451

for.body17.i.preheader:                           ; preds = %for.aftr.i
  br label %for.body17.i, !dbg !452

for.body17.i:                                     ; preds = %for.body17.i.preheader, %copy.exit.i
  %lsr.iv = phi ptr [ %11, %for.body17.i.preheader ], [ %uglygep, %copy.exit.i ]
  %"struct member ptr2091.i" = phi ptr [ %"struct member ptr20.i", %copy.exit.i ], [ %"struct member ptr2086.i", %for.body17.i.preheader ]
  %current.190.i = phi ptr [ %selected40.i, %copy.exit.i ], [ %current.0.lcssa.i, %for.body17.i.preheader ]
  %times.089.i = phi i64 [ %21, %copy.exit.i ], [ 0, %for.body17.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %current.190.i, metadata !83, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 %times.089.i, metadata !92, metadata !DIExpression()) #17, !dbg !442
  %"struct member ptr36.i" = getelementptr inbounds %String_Builder, ptr %current.190.i, i64 0, i32 1, !dbg !454
  %selected37.i = load i64, ptr %"struct member ptr36.i", align 8, !dbg !454
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()) #17, !dbg !455
  call void @llvm.dbg.value(metadata !DIArgList(ptr %11, i64 %times.089.i), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #17, !dbg !455
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()) #17, !dbg !455
  call void @llvm.dbg.value(metadata ptr %current.190.i, metadata !103, metadata !DIExpression()) #17, !dbg !455
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()) #17, !dbg !455
  call void @llvm.dbg.value(metadata i64 %selected37.i, metadata !104, metadata !DIExpression()) #17, !dbg !455
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()) #17, !dbg !455
  call void @llvm.dbg.value(metadata !DIArgList(ptr %11, i64 %times.089.i), metadata !105, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #17, !dbg !455
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()) #17, !dbg !455
  call void @llvm.dbg.value(metadata ptr %current.190.i, metadata !106, metadata !DIExpression()) #17, !dbg !455
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()) #17, !dbg !455
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()) #17, !dbg !455
  %12 = icmp sgt i64 %selected37.i, 0, !dbg !452
  br i1 %12, label %for.body.i.i.preheader, label %copy.exit.i, !dbg !452

for.body.i.i.preheader:                           ; preds = %for.body17.i
  %13 = ptrtoint ptr %11 to i64, !dbg !447
  %14 = shl i64 %times.089.i, 8, !dbg !454
  %15 = add i64 %14, %13, !dbg !454
  %current.190.i4031 = ptrtoint ptr %current.190.i to i64, !dbg !442
  %min.iters.check = icmp ult i64 %selected37.i, 4, !dbg !452
  %16 = sub i64 %15, %current.190.i4031, !dbg !452
  %diff.check = icmp ult i64 %16, 4, !dbg !452
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check, !dbg !452
  br i1 %or.cond, label %for.body.i.i.preheader4048, label %vector.ph, !dbg !452

vector.ph:                                        ; preds = %for.body.i.i.preheader
  %n.vec = and i64 %selected37.i, -4, !dbg !452
  br label %vector.body, !dbg !452

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !456
  %17 = getelementptr i8, ptr %current.190.i, i64 %index, !dbg !456
  %wide.load = load <4 x i8>, ptr %17, align 1, !dbg !456
  %uglygep4051 = getelementptr i8, ptr %lsr.iv, i64 %index, !dbg !456
  store <4 x i8> %wide.load, ptr %uglygep4051, align 1, !dbg !456
  %index.next = add nuw i64 %index, 4, !dbg !456
  %18 = icmp eq i64 %n.vec, %index.next, !dbg !456
  br i1 %18, label %middle.block, label %vector.body, !dbg !456, !llvm.loop !457

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %selected37.i, %n.vec, !dbg !452
  br i1 %cmp.n, label %copy.exit.i, label %for.body.i.i.preheader4048, !dbg !452

for.body.i.i.preheader4048:                       ; preds = %for.body.i.i.preheader, %middle.block
  %i.010.i.i.ph = phi i64 [ 0, %for.body.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %for.body.i.i, !dbg !452

for.body.i.i:                                     ; preds = %for.body.i.i.preheader4048, %for.body.i.i
  %i.010.i.i = phi i64 [ %19, %for.body.i.i ], [ %i.010.i.i.ph, %for.body.i.i.preheader4048 ]
  call void @llvm.dbg.value(metadata i64 %i.010.i.i, metadata !107, metadata !DIExpression()) #17, !dbg !455
  %elem_ptr.i.i = getelementptr i8, ptr %current.190.i, i64 %i.010.i.i, !dbg !456
  %indexed_val.i.i = load i8, ptr %elem_ptr.i.i, align 1, !dbg !456
  %uglygep4052 = getelementptr i8, ptr %lsr.iv, i64 %i.010.i.i, !dbg !456
  store i8 %indexed_val.i.i, ptr %uglygep4052, align 1, !dbg !456
  %19 = add nuw nsw i64 %i.010.i.i, 1, !dbg !456
  call void @llvm.dbg.value(metadata i64 %19, metadata !107, metadata !DIExpression()) #17, !dbg !455
  %20 = icmp slt i64 %19, %selected37.i, !dbg !452
  br i1 %20, label %for.body.i.i, label %copy.exit.i, !dbg !452, !llvm.loop !458

copy.exit.i:                                      ; preds = %for.body.i.i, %middle.block, %for.body17.i
  %selected40.i = load ptr, ptr %"struct member ptr2091.i", align 8, !dbg !459
  call void @llvm.dbg.value(metadata ptr %selected40.i, metadata !83, metadata !DIExpression()) #17, !dbg !442
  %21 = add i64 %times.089.i, 1, !dbg !460
  call void @llvm.dbg.value(metadata i64 poison, metadata !93, metadata !DIExpression()) #17, !dbg !442
  call void @llvm.dbg.value(metadata i64 %21, metadata !92, metadata !DIExpression()) #17, !dbg !442
  %"struct member ptr20.i" = getelementptr inbounds %String_Builder, ptr %selected40.i, i64 0, i32 2, !dbg !451
  %selected21.i = load ptr, ptr %"struct member ptr20.i", align 8, !dbg !451
  %.not70.i = icmp eq ptr %selected21.i, null, !dbg !451
  %uglygep = getelementptr i8, ptr %lsr.iv, i64 256, !dbg !451
  br i1 %.not70.i, label %for.aftr18.loopexit.i, label %for.body17.i, !dbg !451

for.aftr18.loopexit.i:                            ; preds = %copy.exit.i
  %phi.bo.i = shl i64 %21, 8, !dbg !461
  br label %for.aftr18.i, !dbg !461

for.aftr18.i:                                     ; preds = %for.aftr18.loopexit.i, %for.aftr.i
  %times.0.lcssa.i = phi i64 [ 0, %for.aftr.i ], [ %phi.bo.i, %for.aftr18.loopexit.i ]
  %current.1.lcssa.i = phi ptr [ %current.0.lcssa.i, %for.aftr.i ], [ %selected40.i, %for.aftr18.loopexit.i ], !dbg !442
  %elem_ptr44.i = getelementptr i8, ptr %11, i64 %times.0.lcssa.i, !dbg !461
  %"struct member ptr57.i" = getelementptr inbounds %String_Builder, ptr %current.1.lcssa.i, i64 0, i32 1, !dbg !461
  %selected58.i = load i64, ptr %"struct member ptr57.i", align 8, !dbg !461
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata ptr %elem_ptr44.i, metadata !101, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata ptr %current.1.lcssa.i, metadata !103, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata i64 %selected58.i, metadata !104, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata ptr %elem_ptr44.i, metadata !105, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata ptr %current.1.lcssa.i, metadata !106, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()) #17, !dbg !462
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()) #17, !dbg !462
  %22 = icmp sgt i64 %selected58.i, 0, !dbg !464
  br i1 %22, label %for.body.i77.i.preheader, label %builder_to_string.exit, !dbg !464

for.body.i77.i.preheader:                         ; preds = %for.aftr18.i
  %min.iters.check4037 = icmp ult i64 %selected58.i, 8, !dbg !464
  br i1 %min.iters.check4037, label %for.body.i77.i.preheader4047, label %vector.memcheck4032, !dbg !464

vector.memcheck4032:                              ; preds = %for.body.i77.i.preheader
  %23 = ptrtoint ptr %current.1.lcssa.i to i64, !dbg !461
  %24 = ptrtoint ptr %11 to i64, !dbg !447
  %25 = add i64 %times.0.lcssa.i, %24, !dbg !464
  %26 = sub i64 %25, %23, !dbg !464
  %diff.check4034 = icmp ult i64 %26, 4, !dbg !464
  br i1 %diff.check4034, label %for.body.i77.i.preheader4047, label %vector.ph4038, !dbg !464

vector.ph4038:                                    ; preds = %vector.memcheck4032
  %n.vec4040 = and i64 %selected58.i, -4, !dbg !464
  br label %vector.body4043, !dbg !464

vector.body4043:                                  ; preds = %vector.body4043, %vector.ph4038
  %index4044 = phi i64 [ 0, %vector.ph4038 ], [ %index.next4046, %vector.body4043 ], !dbg !465
  %27 = getelementptr i8, ptr %current.1.lcssa.i, i64 %index4044, !dbg !465
  %wide.load4045 = load <4 x i8>, ptr %27, align 1, !dbg !465
  %28 = getelementptr i8, ptr %elem_ptr44.i, i64 %index4044, !dbg !465
  store <4 x i8> %wide.load4045, ptr %28, align 1, !dbg !465
  %index.next4046 = add nuw i64 %index4044, 4, !dbg !465
  %29 = icmp eq i64 %n.vec4040, %index.next4046, !dbg !465
  br i1 %29, label %middle.block4035, label %vector.body4043, !dbg !465, !llvm.loop !466

middle.block4035:                                 ; preds = %vector.body4043
  %cmp.n4042 = icmp eq i64 %selected58.i, %n.vec4040, !dbg !464
  br i1 %cmp.n4042, label %builder_to_string.exit, label %for.body.i77.i.preheader4047, !dbg !464

for.body.i77.i.preheader4047:                     ; preds = %vector.memcheck4032, %for.body.i77.i.preheader, %middle.block4035
  %i.010.i73.i.ph = phi i64 [ 0, %vector.memcheck4032 ], [ 0, %for.body.i77.i.preheader ], [ %n.vec4040, %middle.block4035 ]
  br label %for.body.i77.i, !dbg !464

for.body.i77.i:                                   ; preds = %for.body.i77.i.preheader4047, %for.body.i77.i
  %i.010.i73.i = phi i64 [ %30, %for.body.i77.i ], [ %i.010.i73.i.ph, %for.body.i77.i.preheader4047 ]
  call void @llvm.dbg.value(metadata i64 %i.010.i73.i, metadata !107, metadata !DIExpression()) #17, !dbg !462
  %elem_ptr.i74.i = getelementptr i8, ptr %current.1.lcssa.i, i64 %i.010.i73.i, !dbg !465
  %indexed_val.i75.i = load i8, ptr %elem_ptr.i74.i, align 1, !dbg !465
  %elem_ptr6.i76.i = getelementptr i8, ptr %elem_ptr44.i, i64 %i.010.i73.i, !dbg !465
  store i8 %indexed_val.i75.i, ptr %elem_ptr6.i76.i, align 1, !dbg !465
  %30 = add nuw nsw i64 %i.010.i73.i, 1, !dbg !465
  call void @llvm.dbg.value(metadata i64 %30, metadata !107, metadata !DIExpression()) #17, !dbg !462
  %31 = icmp slt i64 %30, %selected58.i, !dbg !464
  br i1 %31, label %for.body.i77.i, label %builder_to_string.exit, !dbg !464, !llvm.loop !467

builder_to_string.exit:                           ; preds = %for.body.i77.i, %middle.block4035, %for.aftr18.i
  call void @llvm.dbg.value(metadata !DIArgList(i64 %10, i64 undef), metadata !82, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #17, !dbg !442
  call void @llvm.dbg.value(metadata ptr %11, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  call void @llvm.dbg.value(metadata i64 %10, metadata !441, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  %32 = load ptr, ptr %__apoc_internal_context, align 8, !dbg !468
  store ptr %11, ptr %32, align 8, !dbg !468
  %.repack3962 = getelementptr inbounds %string, ptr %32, i64 0, i32 1, !dbg !468
  store i64 %10, ptr %.repack3962, align 8, !dbg !468
  ret void, !dbg !468

if.true:                                          ; preds = %for.body
  %elem_ptr = getelementptr %Any, ptr %list, i64 %list_index.04028, !dbg !469
  %indexed_val.unpack = load ptr, ptr %elem_ptr, align 8, !dbg !469
  %indexed_val.elt3964 = getelementptr %Any, ptr %list, i64 %list_index.04028, i32 1, !dbg !469
  %indexed_val.unpack3965 = load ptr, ptr %indexed_val.elt3964, align 8, !dbg !469
  call void @llvm.dbg.value(metadata ptr null, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  call void @llvm.dbg.value(metadata ptr null, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  call void @llvm.dbg.value(metadata ptr %indexed_val.unpack, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  call void @llvm.dbg.value(metadata ptr %indexed_val.unpack3965, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  %33 = add i64 %list_index.04028, 1, !dbg !470
  call void @llvm.dbg.value(metadata i64 %33, metadata !414, metadata !DIExpression()), !dbg !410
  %selected6 = load i32, ptr %indexed_val.unpack, align 4, !dbg !471
  call void @llvm.dbg.value(metadata i32 0, metadata !472, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i32 %selected6, metadata !472, metadata !DIExpression()), !dbg !410
  switch i32 %selected6, label %if.else57 [
    i32 3, label %if.true7
    i32 4, label %if.true37
  ], !dbg !473

if.aftr:                                          ; preds = %if.aftr47, %"overload[x]=.10.exit3993", %if.aftr15, %"overload[x]=.10.exit4019"
  %list_index.1 = phi i64 [ %33, %if.aftr15 ], [ %33, %if.aftr47 ], [ %33, %"overload[x]=.10.exit3993" ], [ %list_index.04028, %"overload[x]=.10.exit4019" ], !dbg !410
  call void @llvm.dbg.value(metadata i64 %list_index.1, metadata !414, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata ptr undef, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  call void @llvm.dbg.value(metadata ptr undef, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  %34 = add nuw nsw i64 %i.04027, 1, !dbg !427
  call void @llvm.dbg.value(metadata i64 %34, metadata !415, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata ptr poison, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  call void @llvm.dbg.value(metadata ptr poison, metadata !416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  %35 = icmp slt i64 %34, %format.fca.1.extract, !dbg !417
  br i1 %35, label %for.body, label %for.aftr, !dbg !417

if.true7:                                         ; preds = %if.true
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i64 0, metadata !474, metadata !DIExpression()), !dbg !410
  %"struct member ptr12" = getelementptr inbounds %Type_Primitive.2, ptr %indexed_val.unpack, i64 0, i32 1, !dbg !475
  %selected13 = load i32, ptr %"struct member ptr12", align 4, !dbg !475
  call void @llvm.dbg.value(metadata i32 0, metadata !476, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i32 %selected13, metadata !476, metadata !DIExpression()), !dbg !410
  %36 = and i32 %selected13, -5, !dbg !477
  switch i32 %36, label %if.else31 [
    i32 1, label %if.true14
    i32 2, label %if.true18
    i32 3, label %if.true25
  ], !dbg !478

if.true14:                                        ; preds = %if.true7
  %derefrenced = load i8, ptr %indexed_val.unpack3965, align 1, !dbg !479
  %cast = sext i8 %derefrenced to i64, !dbg !479
  call void @llvm.dbg.value(metadata i64 %cast, metadata !474, metadata !DIExpression()), !dbg !410
  br label %if.aftr15, !dbg !479

if.aftr15:                                        ; preds = %if.true25, %if.else31, %if.true18, %if.true14
  %to_parse.0 = phi i64 [ %cast, %if.true14 ], [ %cast23, %if.true18 ], [ %cast30, %if.true25 ], [ %derefrenced34, %if.else31 ], !dbg !410
  call void @llvm.dbg.value(metadata i64 %to_parse.0, metadata !474, metadata !DIExpression()), !dbg !410
  call void @int_to_str(ptr poison, i64 %to_parse.0, ptr nonnull %builder), !dbg !478
  br label %if.aftr, !dbg !478

if.true18:                                        ; preds = %if.true7
  %derefrenced22 = load i16, ptr %indexed_val.unpack3965, align 2, !dbg !480
  %cast23 = sext i16 %derefrenced22 to i64, !dbg !480
  call void @llvm.dbg.value(metadata i64 %cast23, metadata !474, metadata !DIExpression()), !dbg !410
  br label %if.aftr15, !dbg !480

if.true25:                                        ; preds = %if.true7
  %derefrenced29 = load i32, ptr %indexed_val.unpack3965, align 4, !dbg !481
  %cast30 = sext i32 %derefrenced29 to i64, !dbg !481
  call void @llvm.dbg.value(metadata i64 %cast30, metadata !474, metadata !DIExpression()), !dbg !410
  br label %if.aftr15, !dbg !481

if.else31:                                        ; preds = %if.true7
  %derefrenced34 = load i64, ptr %indexed_val.unpack3965, align 8, !dbg !482
  call void @llvm.dbg.value(metadata i64 %derefrenced34, metadata !474, metadata !DIExpression()), !dbg !410
  br label %if.aftr15, !dbg !482

if.true37:                                        ; preds = %if.true
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !483, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !483, metadata !DIExpression()), !dbg !410
  %"struct member ptr43" = getelementptr inbounds %Type_Primitive.2, ptr %indexed_val.unpack, i64 0, i32 1, !dbg !484
  %selected44 = load i32, ptr %"struct member ptr43", align 4, !dbg !484
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata i32 %selected44, metadata !485, metadata !DIExpression()), !dbg !410
  %37 = icmp eq i32 %selected44, 9, !dbg !486
  br i1 %37, label %if.true46, label %if.else52, !dbg !487

if.true46:                                        ; preds = %if.true37
  %derefrenced50 = load float, ptr %indexed_val.unpack3965, align 4, !dbg !488
  %cast51 = fpext float %derefrenced50 to double, !dbg !488
  call void @llvm.dbg.value(metadata double %cast51, metadata !483, metadata !DIExpression()), !dbg !410
  br label %if.aftr47, !dbg !488

if.aftr47:                                        ; preds = %if.else52, %if.true46
  %to_parse39.0 = phi double [ %cast51, %if.true46 ], [ %derefrenced55, %if.else52 ], !dbg !410
  call void @llvm.dbg.value(metadata double %to_parse39.0, metadata !483, metadata !DIExpression()), !dbg !410
  call void @float_to_str(ptr poison, double %to_parse39.0, ptr nonnull %builder), !dbg !487
  br label %if.aftr, !dbg !487

if.else52:                                        ; preds = %if.true37
  %derefrenced55 = load double, ptr %indexed_val.unpack3965, align 8, !dbg !489
  call void @llvm.dbg.value(metadata double %derefrenced55, metadata !483, metadata !DIExpression()), !dbg !410
  br label %if.aftr47, !dbg !489

if.else57:                                        ; preds = %if.true
  call void @llvm.dbg.value(metadata ptr null, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !490
  call void @llvm.dbg.value(metadata i64 0, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !490
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract.i, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !490
  call void @llvm.dbg.value(metadata i64 undef, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !490
  call void @llvm.dbg.value(metadata i64 0, metadata !424, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i64 %i.04027, metadata !424, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !492
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !492
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !492
  call void @llvm.dbg.value(metadata i8 %indexed_val.i, metadata !216, metadata !DIExpression()) #17, !dbg !492
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !492
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !492
  %sunkaddr4055 = getelementptr inbounds i8, ptr %builder, i64 256, !dbg !494
  %selected27.i3972 = load i64, ptr %sunkaddr4055, align 256, !dbg !494
  %38 = icmp eq i64 %selected27.i3972, 256, !dbg !494
  br i1 %38, label %for.body.i3977.preheader, label %"overload[x]=.10.exit3993", !dbg !494

for.body.i3977.preheader:                         ; preds = %if.else57
  br label %for.body.i3977, !dbg !495

for.body.i3977:                                   ; preds = %for.body.i3977.preheader, %if.aftr12.i3992
  %"struct member ptr30.i3973" = phi ptr [ %"struct member ptr.i3989", %if.aftr12.i3992 ], [ %"struct member ptr26.i3971", %for.body.i3977.preheader ]
  %to_put.029.i3974 = phi ptr [ %to_put.1.i3988, %if.aftr12.i3992 ], [ %builder, %for.body.i3977.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i3974, metadata !217, metadata !DIExpression()) #17, !dbg !492
  %"struct member ptr4.i3975" = getelementptr inbounds %String_Builder, ptr %to_put.029.i3974, i64 0, i32 2, !dbg !496
  %selected5.i3976 = load ptr, ptr %"struct member ptr4.i3975", align 8, !dbg !496
  %39 = icmp eq ptr %selected5.i3976, null, !dbg !496
  br i1 %39, label %if.true.i3983, label %if.aftr.i3985, !dbg !495

if.true.i3983:                                    ; preds = %for.body.i3977
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !497
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !497
  %40 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !499
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !497
  call void @llvm.dbg.value(metadata ptr %40, metadata !58, metadata !DIExpression()) #17, !dbg !497
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %40, i8 0, i64 272, i1 false) #17, !dbg !500
  %sunkaddr4056 = getelementptr inbounds i8, ptr %to_put.029.i3974, i64 264, !dbg !501
  store ptr %40, ptr %sunkaddr4056, align 8, !dbg !501
  br label %if.aftr.i3985, !dbg !501

if.aftr.i3985:                                    ; preds = %if.true.i3983, %for.body.i3977
  %selected10.i3984 = load i64, ptr %"struct member ptr30.i3973", align 8, !dbg !502
  %41 = icmp eq i64 %selected10.i3984, 256, !dbg !502
  br i1 %41, label %if.true11.i3987, label %if.aftr12.i3992, !dbg !495

if.true11.i3987:                                  ; preds = %if.aftr.i3985
  %sunkaddr4057 = getelementptr inbounds i8, ptr %to_put.029.i3974, i64 264, !dbg !495
  %selected15.i3986 = load ptr, ptr %sunkaddr4057, align 8, !dbg !495
  call void @llvm.dbg.value(metadata ptr %selected15.i3986, metadata !217, metadata !DIExpression()) #17, !dbg !492
  br label %if.aftr12.i3992, !dbg !495

if.aftr12.i3992:                                  ; preds = %if.true11.i3987, %if.aftr.i3985
  %to_put.1.i3988 = phi ptr [ %selected15.i3986, %if.true11.i3987 ], [ %to_put.029.i3974, %if.aftr.i3985 ], !dbg !492
  call void @llvm.dbg.value(metadata ptr %to_put.1.i3988, metadata !217, metadata !DIExpression()) #17, !dbg !492
  %42 = icmp ne ptr %to_put.1.i3988, null, !dbg !494
  %"struct member ptr.i3989" = getelementptr inbounds %String_Builder, ptr %to_put.1.i3988, i64 0, i32 1, !dbg !494
  %selected.i3990 = load i64, ptr %"struct member ptr.i3989", align 8, !dbg !494
  %43 = icmp eq i64 %selected.i3990, 256, !dbg !494
  %"&&.i3991" = and i1 %42, %43, !dbg !494
  br i1 %"&&.i3991", label %for.body.i3977, label %"overload[x]=.10.exit3993", !dbg !494

"overload[x]=.10.exit3993":                       ; preds = %if.aftr12.i3992, %if.else57
  %to_put.0.lcssa.i3978 = phi ptr [ %builder, %if.else57 ], [ %to_put.1.i3988, %if.aftr12.i3992 ], !dbg !492
  %selected.lcssa.i3980 = phi i64 [ %selected27.i3972, %if.else57 ], [ %selected.i3990, %if.aftr12.i3992 ], !dbg !494
  %elem_ptr.i3981 = getelementptr [256 x i8], ptr %to_put.0.lcssa.i3978, i64 0, i64 %selected.lcssa.i3980, !dbg !503
  store i8 %indexed_val.i, ptr %elem_ptr.i3981, align 1, !dbg !503
  %sunkaddr4058 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i3978, i64 256, !dbg !504
  %selected23.i3982 = load i64, ptr %sunkaddr4058, align 8, !dbg !504
  %44 = add i64 %selected23.i3982, 1, !dbg !504
  store i64 %44, ptr %sunkaddr4058, align 8, !dbg !504
  br label %if.aftr, !dbg !473

if.else58:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr null, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !505
  call void @llvm.dbg.value(metadata i64 0, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !505
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract.i, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !505
  call void @llvm.dbg.value(metadata i64 undef, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !505
  call void @llvm.dbg.value(metadata i64 0, metadata !424, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata i64 %i.04027, metadata !424, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()) #17, !dbg !507
  call void @llvm.dbg.value(metadata ptr %builder, metadata !210, metadata !DIExpression()) #17, !dbg !507
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()) #17, !dbg !507
  call void @llvm.dbg.value(metadata i8 %indexed_val.i, metadata !216, metadata !DIExpression()) #17, !dbg !507
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()) #17, !dbg !507
  call void @llvm.dbg.value(metadata ptr %builder, metadata !217, metadata !DIExpression()) #17, !dbg !507
  %sunkaddr4059 = getelementptr inbounds i8, ptr %builder, i64 256, !dbg !509
  %selected27.i3998 = load i64, ptr %sunkaddr4059, align 256, !dbg !509
  %45 = icmp eq i64 %selected27.i3998, 256, !dbg !509
  br i1 %45, label %for.body.i4003.preheader, label %"overload[x]=.10.exit4019", !dbg !509

for.body.i4003.preheader:                         ; preds = %if.else58
  br label %for.body.i4003, !dbg !510

for.body.i4003:                                   ; preds = %for.body.i4003.preheader, %if.aftr12.i4018
  %"struct member ptr30.i3999" = phi ptr [ %"struct member ptr.i4015", %if.aftr12.i4018 ], [ %"struct member ptr26.i3997", %for.body.i4003.preheader ]
  %to_put.029.i4000 = phi ptr [ %to_put.1.i4014, %if.aftr12.i4018 ], [ %builder, %for.body.i4003.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029.i4000, metadata !217, metadata !DIExpression()) #17, !dbg !507
  %"struct member ptr4.i4001" = getelementptr inbounds %String_Builder, ptr %to_put.029.i4000, i64 0, i32 2, !dbg !511
  %selected5.i4002 = load ptr, ptr %"struct member ptr4.i4001", align 8, !dbg !511
  %46 = icmp eq ptr %selected5.i4002, null, !dbg !511
  br i1 %46, label %if.true.i4009, label %if.aftr.i4011, !dbg !510

if.true.i4009:                                    ; preds = %for.body.i4003
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !512
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !512
  %47 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !514
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !512
  call void @llvm.dbg.value(metadata ptr %47, metadata !58, metadata !DIExpression()) #17, !dbg !512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %47, i8 0, i64 272, i1 false) #17, !dbg !515
  %sunkaddr4060 = getelementptr inbounds i8, ptr %to_put.029.i4000, i64 264, !dbg !516
  store ptr %47, ptr %sunkaddr4060, align 8, !dbg !516
  br label %if.aftr.i4011, !dbg !516

if.aftr.i4011:                                    ; preds = %if.true.i4009, %for.body.i4003
  %selected10.i4010 = load i64, ptr %"struct member ptr30.i3999", align 8, !dbg !517
  %48 = icmp eq i64 %selected10.i4010, 256, !dbg !517
  br i1 %48, label %if.true11.i4013, label %if.aftr12.i4018, !dbg !510

if.true11.i4013:                                  ; preds = %if.aftr.i4011
  %sunkaddr4061 = getelementptr inbounds i8, ptr %to_put.029.i4000, i64 264, !dbg !510
  %selected15.i4012 = load ptr, ptr %sunkaddr4061, align 8, !dbg !510
  call void @llvm.dbg.value(metadata ptr %selected15.i4012, metadata !217, metadata !DIExpression()) #17, !dbg !507
  br label %if.aftr12.i4018, !dbg !510

if.aftr12.i4018:                                  ; preds = %if.true11.i4013, %if.aftr.i4011
  %to_put.1.i4014 = phi ptr [ %selected15.i4012, %if.true11.i4013 ], [ %to_put.029.i4000, %if.aftr.i4011 ], !dbg !507
  call void @llvm.dbg.value(metadata ptr %to_put.1.i4014, metadata !217, metadata !DIExpression()) #17, !dbg !507
  %49 = icmp ne ptr %to_put.1.i4014, null, !dbg !509
  %"struct member ptr.i4015" = getelementptr inbounds %String_Builder, ptr %to_put.1.i4014, i64 0, i32 1, !dbg !509
  %selected.i4016 = load i64, ptr %"struct member ptr.i4015", align 8, !dbg !509
  %50 = icmp eq i64 %selected.i4016, 256, !dbg !509
  %"&&.i4017" = and i1 %49, %50, !dbg !509
  br i1 %"&&.i4017", label %for.body.i4003, label %"overload[x]=.10.exit4019", !dbg !509

"overload[x]=.10.exit4019":                       ; preds = %if.aftr12.i4018, %if.else58
  %to_put.0.lcssa.i4004 = phi ptr [ %builder, %if.else58 ], [ %to_put.1.i4014, %if.aftr12.i4018 ], !dbg !507
  %selected.lcssa.i4006 = phi i64 [ %selected27.i3998, %if.else58 ], [ %selected.i4016, %if.aftr12.i4018 ], !dbg !509
  %elem_ptr.i4007 = getelementptr [256 x i8], ptr %to_put.0.lcssa.i4004, i64 0, i64 %selected.lcssa.i4006, !dbg !518
  store i8 %indexed_val.i, ptr %elem_ptr.i4007, align 1, !dbg !518
  %sunkaddr4062 = getelementptr inbounds i8, ptr %to_put.0.lcssa.i4004, i64 256, !dbg !519
  %selected23.i4008 = load i64, ptr %sunkaddr4062, align 8, !dbg !519
  %51 = add i64 %selected23.i4008, 1, !dbg !519
  store i64 %51, ptr %sunkaddr4062, align 8, !dbg !519
  br label %if.aftr, !dbg !427
}

define void @"print!@* u8!@-"(ptr nocapture readnone %__apoc_internal_context, ptr nocapture readonly %format, ...) local_unnamed_addr !dbg !520 {
entry:
  %written.i = alloca i32, align 8
  %out = alloca %string, align 8
  %__apoc_internal_context4 = alloca %__Internal_Context, align 8
  %list = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %format, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata ptr null, metadata !523, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !522
  call void @llvm.dbg.value(metadata i64 0, metadata !523, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !522
  call void @llvm.dbg.value(metadata ptr null, metadata !157, metadata !DIExpression()) #17, !dbg !524
  call void @llvm.dbg.value(metadata ptr %format, metadata !157, metadata !DIExpression()) #17, !dbg !524
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()) #17, !dbg !526
  call void @llvm.dbg.value(metadata ptr %format, metadata !159, metadata !DIExpression()) #17, !dbg !526
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()) #17, !dbg !526
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()) #17, !dbg !526
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()) #17, !dbg !526
  br label %for.cond.i.i, !dbg !528

for.cond.i.i:                                     ; preds = %for.cond.i.i, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond.i.i ], [ -1, %entry ], !dbg !528
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #17, !dbg !526
  %uglygep = getelementptr i8, ptr %format, i64 %lsr.iv, !dbg !528
  %uglygep10 = getelementptr i8, ptr %uglygep, i64 1, !dbg !528
  %indexed_val.i.i = load i8, ptr %uglygep10, align 1, !dbg !528
  %.not.i.i = icmp eq i8 %indexed_val.i.i, 0, !dbg !528
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)) #17, !dbg !526
  %lsr.iv.next = add i64 %lsr.iv, 1, !dbg !528
  br i1 %.not.i.i, label %len.exit.i, label %for.cond.i.i, !dbg !528

len.exit.i:                                       ; preds = %for.cond.i.i
  call void @llvm.dbg.value(metadata i64 0, metadata !167, metadata !DIExpression()) #17, !dbg !524
  call void @llvm.dbg.value(metadata i64 undef, metadata !167, metadata !DIExpression()) #17, !dbg !524
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !529
  call void @llvm.dbg.value(metadata i64 undef, metadata !55, metadata !DIExpression()) #17, !dbg !529
  %0 = call ptr @malloc(i64 %lsr.iv.next) #17, !dbg !531
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !529
  call void @llvm.dbg.value(metadata ptr %0, metadata !58, metadata !DIExpression()) #17, !dbg !529
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %lsr.iv.next, i1 false) #17, !dbg !532
  call void @llvm.dbg.value(metadata ptr null, metadata !172, metadata !DIExpression()) #17, !dbg !524
  call void @llvm.dbg.value(metadata ptr %0, metadata !172, metadata !DIExpression()) #17, !dbg !524
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata ptr %0, metadata !101, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata ptr %format, metadata !103, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata i64 undef, metadata !104, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata ptr %0, metadata !105, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata ptr %format, metadata !106, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()) #17, !dbg !533
  %1 = icmp sgt i64 %lsr.iv.next, 0, !dbg !535
  br i1 %1, label %for.body.i.preheader.i, label %to_string.exit, !dbg !535

for.body.i.preheader.i:                           ; preds = %len.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %format, i64 %lsr.iv.next, i1 false) #17, !dbg !536
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression()) #17, !dbg !533
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #17, !dbg !533
  br label %to_string.exit, !dbg !537

to_string.exit:                                   ; preds = %len.exit.i, %for.body.i.preheader.i
  call void @llvm.dbg.value(metadata ptr null, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !524
  call void @llvm.dbg.value(metadata i64 0, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !524
  call void @llvm.dbg.value(metadata ptr %0, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #17, !dbg !524
  call void @llvm.dbg.value(metadata i64 undef, metadata !178, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #17, !dbg !524
  call void @llvm.dbg.value(metadata ptr %0, metadata !523, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !522
  call void @llvm.dbg.value(metadata i64 undef, metadata !523, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !522
  call void @llvm.dbg.value(metadata i64 0, metadata !538, metadata !DIExpression()), !dbg !522
  store i64 0, ptr %list, align 8, !dbg !539
  call void @llvm.dbg.value(metadata ptr %list, metadata !538, metadata !DIExpression(DW_OP_deref)), !dbg !522
  call void @llvm.va_start(ptr nonnull %list), !dbg !540
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %out, i8 0, i64 16, i1 false), !dbg !541
  store ptr %out, ptr %__apoc_internal_context4, align 8, !dbg !541
  %.fca.0.insert = insertvalue %string poison, ptr %0, 0, !dbg !541
  %.fca.1.insert = insertvalue %string %.fca.0.insert, i64 %lsr.iv.next, 1, !dbg !541
  %2 = load ptr, ptr %list, align 8, !dbg !541
  call void @llvm.dbg.value(metadata ptr %2, metadata !538, metadata !DIExpression()), !dbg !522
  call void @parse_format(ptr nonnull %__apoc_internal_context4, %string %.fca.1.insert, ptr %2), !dbg !541
  call void @llvm.dbg.declare(metadata ptr %out, metadata !542, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata ptr %list, metadata !538, metadata !DIExpression(DW_OP_deref)), !dbg !522
  call void @llvm.va_end(ptr %list), !dbg !543
  %3 = call ptr @GetStdHandle(i32 -11), !dbg !544
  call void @llvm.dbg.value(metadata ptr %3, metadata !549, metadata !DIExpression()), !dbg !522
  %selected = load ptr, ptr %out, align 8, !dbg !550
  %"struct member ptr8" = getelementptr inbounds %string, ptr %out, i64 0, i32 1, !dbg !550
  %selected9 = load i64, ptr %"struct member ptr8", align 8, !dbg !550
  %cast = trunc i64 %selected9 to i32, !dbg !550
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written.i), !dbg !551
  call void @llvm.dbg.value(metadata ptr %3, metadata !557, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata ptr %selected, metadata !558, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32 %cast, metadata !559, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32 0, metadata !560, metadata !DIExpression()), !dbg !551
  store i32 0, ptr %written.i, align 8, !dbg !561
  call void @llvm.dbg.value(metadata i64 0, metadata !560, metadata !DIExpression()), !dbg !551
  store i64 0, ptr %written.i, align 8, !dbg !561
  call void @llvm.dbg.value(metadata ptr %written.i, metadata !560, metadata !DIExpression(DW_OP_deref)), !dbg !551
  %4 = call i8 @WriteFile(ptr %3, ptr %selected, i32 %cast, ptr nonnull %written.i, ptr null), !dbg !562
  call void @llvm.dbg.value(metadata i32 undef, metadata !560, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i8 0, metadata !563, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i1 undef, metadata !563, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i8 undef, metadata !563, metadata !DIExpression()), !dbg !551
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i), !dbg !564
  ret void, !dbg !565
}

define void @"print!@string!@-"(ptr nocapture readnone %__apoc_internal_context, %string %format, ...) local_unnamed_addr !dbg !566 {
entry:
  %written.i = alloca i32, align 8
  %out = alloca %string, align 8
  %__apoc_internal_context3 = alloca %__Internal_Context, align 8
  %list = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr null, metadata !567, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !568
  call void @llvm.dbg.value(metadata i64 0, metadata !567, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !568
  call void @llvm.dbg.value(metadata ptr undef, metadata !567, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !568
  call void @llvm.dbg.value(metadata i64 undef, metadata !567, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !568
  call void @llvm.dbg.value(metadata i64 0, metadata !569, metadata !DIExpression()), !dbg !568
  store i64 0, ptr %list, align 8, !dbg !570
  call void @llvm.dbg.value(metadata ptr %list, metadata !569, metadata !DIExpression(DW_OP_deref)), !dbg !568
  call void @llvm.va_start(ptr nonnull %list), !dbg !571
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %out, i8 0, i64 16, i1 false), !dbg !572
  store ptr %out, ptr %__apoc_internal_context3, align 8, !dbg !572
  %0 = load ptr, ptr %list, align 8, !dbg !572
  call void @llvm.dbg.value(metadata ptr %0, metadata !569, metadata !DIExpression()), !dbg !568
  call void @parse_format(ptr nonnull %__apoc_internal_context3, %string %format, ptr %0), !dbg !572
  call void @llvm.dbg.declare(metadata ptr %out, metadata !573, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata ptr %list, metadata !569, metadata !DIExpression(DW_OP_deref)), !dbg !568
  call void @llvm.va_end(ptr %list), !dbg !574
  %1 = call ptr @GetStdHandle(i32 -11), !dbg !575
  call void @llvm.dbg.value(metadata ptr %1, metadata !577, metadata !DIExpression()), !dbg !568
  %selected = load ptr, ptr %out, align 8, !dbg !578
  %"struct member ptr6" = getelementptr inbounds %string, ptr %out, i64 0, i32 1, !dbg !578
  %selected7 = load i64, ptr %"struct member ptr6", align 8, !dbg !578
  %cast = trunc i64 %selected7 to i32, !dbg !578
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written.i), !dbg !579
  call void @llvm.dbg.value(metadata ptr %1, metadata !557, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata ptr %selected, metadata !558, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i32 %cast, metadata !559, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i32 0, metadata !560, metadata !DIExpression()), !dbg !579
  store i32 0, ptr %written.i, align 8, !dbg !581
  call void @llvm.dbg.value(metadata i64 0, metadata !560, metadata !DIExpression()), !dbg !579
  store i64 0, ptr %written.i, align 8, !dbg !581
  call void @llvm.dbg.value(metadata ptr %written.i, metadata !560, metadata !DIExpression(DW_OP_deref)), !dbg !579
  %2 = call i8 @WriteFile(ptr %1, ptr %selected, i32 %cast, ptr nonnull %written.i, ptr null), !dbg !582
  call void @llvm.dbg.value(metadata i32 undef, metadata !560, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i8 0, metadata !563, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i1 undef, metadata !563, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i8 undef, metadata !563, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i), !dbg !583
  ret void, !dbg !584
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind
define void @copy(ptr nocapture readnone %__apoc_internal_context, ptr nocapture writeonly %dst, ptr nocapture readonly %src, i64 %size) local_unnamed_addr #5 !dbg !96 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata ptr %dst, metadata !101, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata ptr %src, metadata !103, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i64 %size, metadata !104, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata ptr %dst, metadata !105, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata ptr %src, metadata !106, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !585
  %0 = icmp sgt i64 %size, 0, !dbg !586
  br i1 %0, label %for.body.preheader, label %for.aftr, !dbg !586

for.body.preheader:                               ; preds = %entry
  %dst11 = ptrtoint ptr %dst to i64, !dbg !586
  %src12 = ptrtoint ptr %src to i64, !dbg !586
  %min.iters.check = icmp ult i64 %size, 4, !dbg !586
  %1 = sub i64 %dst11, %src12, !dbg !586
  %diff.check = icmp ult i64 %1, 4, !dbg !586
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check, !dbg !586
  br i1 %or.cond, label %for.body.preheader13, label %vector.ph, !dbg !586

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %size, -4, !dbg !586
  br label %vector.body, !dbg !586

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !587
  %2 = getelementptr i8, ptr %src, i64 %index, !dbg !587
  %wide.load = load <4 x i8>, ptr %2, align 1, !dbg !587
  %3 = getelementptr i8, ptr %dst, i64 %index, !dbg !587
  store <4 x i8> %wide.load, ptr %3, align 1, !dbg !587
  %index.next = add nuw i64 %index, 4, !dbg !587
  %4 = icmp eq i64 %n.vec, %index.next, !dbg !587
  br i1 %4, label %middle.block, label %vector.body, !dbg !587, !llvm.loop !588

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %size, !dbg !586
  br i1 %cmp.n, label %for.aftr, label %for.body.preheader13, !dbg !586

for.body.preheader13:                             ; preds = %for.body.preheader, %middle.block
  %i.010.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body, !dbg !586

for.body:                                         ; preds = %for.body.preheader13, %for.body
  %i.010 = phi i64 [ %5, %for.body ], [ %i.010.ph, %for.body.preheader13 ]
  call void @llvm.dbg.value(metadata i64 %i.010, metadata !107, metadata !DIExpression()), !dbg !585
  %elem_ptr = getelementptr i8, ptr %src, i64 %i.010, !dbg !587
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !587
  %elem_ptr6 = getelementptr i8, ptr %dst, i64 %i.010, !dbg !587
  store i8 %indexed_val, ptr %elem_ptr6, align 1, !dbg !587
  %5 = add nuw nsw i64 %i.010, 1, !dbg !587
  call void @llvm.dbg.value(metadata i64 %5, metadata !107, metadata !DIExpression()), !dbg !585
  %6 = icmp slt i64 %5, %size, !dbg !586
  br i1 %6, label %for.body, label %for.aftr, !dbg !586, !llvm.loop !589

for.aftr:                                         ; preds = %for.body, %middle.block, %entry
  ret void, !dbg !590
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly
define i64 @len(ptr nocapture readnone %__apoc_internal_context, ptr nocapture readonly %text) local_unnamed_addr #6 !dbg !160 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata ptr %text, metadata !159, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !591
  br label %for.cond, !dbg !592

for.cond:                                         ; preds = %for.cond, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond ], [ -1, %entry ], !dbg !592
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !591
  %uglygep = getelementptr i8, ptr %text, i64 %lsr.iv, !dbg !592
  %uglygep5 = getelementptr i8, ptr %uglygep, i64 1, !dbg !592
  %indexed_val = load i8, ptr %uglygep5, align 1, !dbg !592
  %.not = icmp eq i8 %indexed_val, 0, !dbg !592
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !591
  %lsr.iv.next = add i64 %lsr.iv, 1, !dbg !592
  br i1 %.not, label %for.aftr, label %for.cond, !dbg !592

for.aftr:                                         ; preds = %for.cond
  ret i64 %lsr.iv.next, !dbg !593
}

declare ptr @CreateFileA(ptr, i64, i32, ptr, i64, i64, ptr) local_unnamed_addr

declare i8 @WriteFile(ptr, ptr, i32, ptr, ptr) local_unnamed_addr

declare ptr @GetStdHandle(i32) local_unnamed_addr

define ptr @open_file(ptr nocapture readnone %__apoc_internal_context, ptr %f_name, i64 %access) local_unnamed_addr !dbg !594 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !597, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata ptr %f_name, metadata !597, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 0, metadata !599, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 %access, metadata !599, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 0, metadata !600, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 0, metadata !600, metadata !DIExpression()), !dbg !598
  %0 = and i64 %access, 1, !dbg !601
  %.not = icmp eq i64 %0, 0, !dbg !601
  call void @llvm.dbg.value(metadata i64 undef, metadata !600, metadata !DIExpression()), !dbg !598
  %win_access.1 = select i1 %.not, i64 0, i64 1180063, !dbg !602
  call void @llvm.dbg.value(metadata i64 %win_access.1, metadata !600, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 %win_access.1, metadata !600, metadata !DIExpression()), !dbg !598
  %1 = call ptr @CreateFileA(ptr %f_name, i64 %win_access.1, i32 0, ptr null, i64 4, i64 32, ptr null), !dbg !603
  call void @llvm.dbg.value(metadata ptr null, metadata !604, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata ptr %1, metadata !604, metadata !DIExpression()), !dbg !598
  ret ptr %1, !dbg !602
}

define i8 @write_file(ptr nocapture readnone %__apoc_internal_context, ptr %file, ptr %data, i32 %size) local_unnamed_addr !dbg !552 {
entry:
  %result = alloca i8, align 1
  %written = alloca i32, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !557, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata ptr %data, metadata !558, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i32 %size, metadata !559, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i32 0, metadata !560, metadata !DIExpression()), !dbg !605
  store i32 0, ptr %written, align 8, !dbg !606
  call void @llvm.dbg.value(metadata i64 0, metadata !560, metadata !DIExpression()), !dbg !605
  store i64 0, ptr %written, align 8, !dbg !606
  call void @llvm.dbg.value(metadata ptr %written, metadata !560, metadata !DIExpression(DW_OP_deref)), !dbg !605
  %0 = call i8 @WriteFile(ptr %file, ptr %data, i32 %size, ptr nonnull %written, ptr null), !dbg !607
  %1 = load i32, ptr %written, align 8, !dbg !608
  call void @llvm.dbg.value(metadata i32 %1, metadata !560, metadata !DIExpression()), !dbg !605
  %2 = icmp eq i32 %1, %size, !dbg !608
  call void @llvm.dbg.value(metadata i8 0, metadata !563, metadata !DIExpression()), !dbg !605
  store i8 0, ptr %result, align 1, !dbg !608
  call void @llvm.dbg.value(metadata i1 %2, metadata !563, metadata !DIExpression()), !dbg !605
  store i1 %2, ptr %result, align 1, !dbg !608
  %result.0.result.0.result.0. = load i8, ptr %result, align 1, !dbg !609
  call void @llvm.dbg.value(metadata i8 %result.0.result.0.result.0., metadata !563, metadata !DIExpression()), !dbg !605
  ret i8 %result.0.result.0.result.0., !dbg !609
}

define ptr @get_stdout(ptr nocapture readnone %__apoc_internal_context) local_unnamed_addr !dbg !545 {
entry:
  %0 = call ptr @GetStdHandle(i32 -11), !dbg !610
  ret ptr %0, !dbg !610
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly willreturn
define i8 @"overload[]"(%string %str, i64 %index) local_unnamed_addr #7 !dbg !419 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !611
  call void @llvm.dbg.value(metadata i64 0, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !611
  %str.fca.0.extract = extractvalue %string %str, 0
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !611
  call void @llvm.dbg.value(metadata i64 undef, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !611
  call void @llvm.dbg.value(metadata i64 0, metadata !424, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i64 %index, metadata !424, metadata !DIExpression()), !dbg !611
  %elem_ptr = getelementptr i8, ptr %str.fca.0.extract, i64 %index, !dbg !612
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !612
  ret i8 %indexed_val, !dbg !612
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

; Function Attrs: alwaysinline nofree nounwind
define %string @"overload+\BD\935[\E7\B1"(%string %str, ptr nocapture readonly %text) local_unnamed_addr #10 !dbg !613 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !616, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !617
  call void @llvm.dbg.value(metadata i64 0, metadata !616, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !617
  %str.fca.0.extract = extractvalue %string %str, 0
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract, metadata !616, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !617
  call void @llvm.dbg.value(metadata ptr null, metadata !618, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata ptr %text, metadata !618, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata ptr null, metadata !619, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !617
  call void @llvm.dbg.value(metadata i64 0, metadata !619, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !617
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata ptr %text, metadata !159, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !620
  br label %for.cond.i, !dbg !622

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond.i ], [ -1, %entry ], !dbg !622
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !620
  %uglygep = getelementptr i8, ptr %text, i64 %lsr.iv, !dbg !622
  %uglygep40 = getelementptr i8, ptr %uglygep, i64 1, !dbg !622
  %indexed_val.i = load i8, ptr %uglygep40, align 1, !dbg !622
  %.not.i = icmp eq i8 %indexed_val.i, 0, !dbg !622
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !620
  %lsr.iv.next = add i64 %lsr.iv, 1, !dbg !622
  br i1 %.not.i, label %len.exit, label %for.cond.i, !dbg !622

len.exit:                                         ; preds = %for.cond.i
  %str.fca.1.extract = extractvalue %string %str, 1
  call void @llvm.dbg.value(metadata i64 %str.fca.1.extract, metadata !616, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !617
  call void @llvm.dbg.value(metadata i64 0, metadata !623, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i64 undef, metadata !623, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %str.fca.1.extract), metadata !619, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !617
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !624
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %str.fca.1.extract), metadata !55, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #17, !dbg !624
  %0 = add i64 %str.fca.1.extract, %lsr.iv.next, !dbg !626
  %1 = add i64 %str.fca.1.extract, %lsr.iv.next, !dbg !626
  %2 = add i64 %str.fca.1.extract, %lsr.iv.next, !dbg !626
  %3 = call ptr @malloc(i64 %1) #17, !dbg !626
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !624
  call void @llvm.dbg.value(metadata ptr %3, metadata !58, metadata !DIExpression()) #17, !dbg !624
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %2, i1 false) #17, !dbg !627
  call void @llvm.dbg.value(metadata ptr %3, metadata !619, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !617
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata ptr %3, metadata !101, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract, metadata !103, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i64 %str.fca.1.extract, metadata !104, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata ptr %3, metadata !105, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract, metadata !106, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !628
  %4 = icmp sgt i64 %str.fca.1.extract, 0, !dbg !630
  br i1 %4, label %for.body.i.preheader, label %copy.exit, !dbg !630

for.body.i.preheader:                             ; preds = %len.exit
  %5 = ptrtoint ptr %str.fca.0.extract to i64, !dbg !617
  %6 = ptrtoint ptr %3 to i64, !dbg !624
  %min.iters.check = icmp ult i64 %str.fca.1.extract, 4, !dbg !630
  %7 = sub i64 %6, %5, !dbg !630
  %diff.check = icmp ult i64 %7, 4, !dbg !630
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check, !dbg !630
  br i1 %or.cond, label %for.body.i.preheader39, label %vector.ph, !dbg !630

vector.ph:                                        ; preds = %for.body.i.preheader
  %n.vec = and i64 %str.fca.1.extract, -4, !dbg !630
  br label %vector.body, !dbg !630

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !631
  %8 = getelementptr i8, ptr %str.fca.0.extract, i64 %index, !dbg !631
  %wide.load = load <4 x i8>, ptr %8, align 1, !dbg !631
  %9 = getelementptr i8, ptr %3, i64 %index, !dbg !631
  store <4 x i8> %wide.load, ptr %9, align 1, !dbg !631
  %index.next = add nuw i64 %index, 4, !dbg !631
  %10 = icmp eq i64 %n.vec, %index.next, !dbg !631
  br i1 %10, label %middle.block, label %vector.body, !dbg !631, !llvm.loop !632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %str.fca.1.extract, %n.vec, !dbg !630
  br i1 %cmp.n, label %copy.exit, label %for.body.i.preheader39, !dbg !630

for.body.i.preheader39:                           ; preds = %for.body.i.preheader, %middle.block
  %i.010.i.ph = phi i64 [ 0, %for.body.i.preheader ], [ %n.vec, %middle.block ]
  br label %for.body.i, !dbg !630

for.body.i:                                       ; preds = %for.body.i.preheader39, %for.body.i
  %i.010.i = phi i64 [ %11, %for.body.i ], [ %i.010.i.ph, %for.body.i.preheader39 ]
  call void @llvm.dbg.value(metadata i64 %i.010.i, metadata !107, metadata !DIExpression()), !dbg !628
  %elem_ptr.i30 = getelementptr i8, ptr %str.fca.0.extract, i64 %i.010.i, !dbg !631
  %indexed_val.i31 = load i8, ptr %elem_ptr.i30, align 1, !dbg !631
  %elem_ptr6.i = getelementptr i8, ptr %3, i64 %i.010.i, !dbg !631
  store i8 %indexed_val.i31, ptr %elem_ptr6.i, align 1, !dbg !631
  %11 = add nuw nsw i64 %i.010.i, 1, !dbg !631
  call void @llvm.dbg.value(metadata i64 %11, metadata !107, metadata !DIExpression()), !dbg !628
  %12 = icmp slt i64 %11, %str.fca.1.extract, !dbg !630
  br i1 %12, label %for.body.i, label %copy.exit, !dbg !630, !llvm.loop !633

copy.exit:                                        ; preds = %for.body.i, %middle.block, %len.exit
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %str.fca.1.extract), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !634
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata ptr %text, metadata !103, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 undef, metadata !104, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %str.fca.1.extract), metadata !105, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !634
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata ptr %text, metadata !106, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !634
  %13 = icmp sgt i64 %lsr.iv.next, 0, !dbg !636
  br i1 %13, label %for.body.i36.preheader, label %copy.exit37, !dbg !636

for.body.i36.preheader:                           ; preds = %copy.exit
  %elem_ptr = getelementptr i8, ptr %3, i64 %str.fca.1.extract, !dbg !637
  call void @llvm.dbg.value(metadata ptr %elem_ptr, metadata !101, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata ptr %elem_ptr, metadata !105, metadata !DIExpression()), !dbg !634
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %elem_ptr, ptr align 1 %text, i64 %lsr.iv.next, i1 false), !dbg !638
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 undef, metadata !107, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !634
  br label %copy.exit37, !dbg !639

copy.exit37:                                      ; preds = %for.body.i36.preheader, %copy.exit
  %.fca.0.insert = insertvalue %string poison, ptr %3, 0, !dbg !639
  %.fca.1.insert = insertvalue %string %.fca.0.insert, i64 %0, 1, !dbg !639
  ret %string %.fca.1.insert, !dbg !639
}

; Function Attrs: alwaysinline nofree nosync nounwind
define void @"overload[x]="(ptr nocapture %str, ptr nocapture readonly %text) local_unnamed_addr #11 !dbg !640 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !643, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr %str, metadata !643, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr null, metadata !645, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr %text, metadata !645, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata ptr %text, metadata !159, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !646
  br label %for.cond.i, !dbg !648

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %lsr.iv43 = phi i64 [ %lsr.iv.next, %for.cond.i ], [ -1, %entry ], !dbg !648
  call void @llvm.dbg.value(metadata i64 %lsr.iv43, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !646
  %uglygep44 = getelementptr i8, ptr %text, i64 %lsr.iv43, !dbg !648
  %uglygep45 = getelementptr i8, ptr %uglygep44, i64 1, !dbg !648
  %indexed_val.i = load i8, ptr %uglygep45, align 1, !dbg !648
  %.not.i = icmp eq i8 %indexed_val.i, 0, !dbg !648
  call void @llvm.dbg.value(metadata i64 %lsr.iv43, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !646
  %lsr.iv.next = add i64 %lsr.iv43, 1, !dbg !648
  br i1 %.not.i, label %len.exit, label %for.cond.i, !dbg !648

len.exit:                                         ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !649, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i64 undef, metadata !649, metadata !DIExpression()), !dbg !644
  %0 = sdiv i64 %lsr.iv.next, 256, !dbg !650
  call void @llvm.dbg.value(metadata i64 0, metadata !651, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i64 %0, metadata !651, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr null, metadata !652, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr %str, metadata !652, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i64 0, metadata !653, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i64 0, metadata !653, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i64 undef, metadata !649, metadata !DIExpression()), !dbg !644
  %1 = icmp sgt i64 %lsr.iv.next, -256, !dbg !654
  br i1 %1, label %for.body.preheader, label %for.aftr, !dbg !654

for.body.preheader:                               ; preds = %len.exit
  br label %for.body, !dbg !655

for.body:                                         ; preds = %for.body.preheader, %copy.exit
  %lsr.iv = phi ptr [ %text, %for.body.preheader ], [ %uglygep, %copy.exit ]
  %i.035 = phi i64 [ %18, %copy.exit ], [ 0, %for.body.preheader ]
  %text_len.034 = phi i64 [ %17, %copy.exit ], [ %lsr.iv.next, %for.body.preheader ]
  %current.033 = phi ptr [ %selected23, %copy.exit ], [ %str, %for.body.preheader ]
  %smin46 = call i64 @llvm.smin.i64(i64 %text_len.034, i64 256), !dbg !648
  %smax47 = call i64 @llvm.smax.i64(i64 %smin46, i64 1), !dbg !648
  %2 = lshr i64 %smax47, 2, !dbg !648
  %3 = shl nuw nsw i64 %2, 2, !dbg !648
  %4 = ptrtoint ptr %text to i64, !dbg !648
  %smin = call i64 @llvm.smin.i64(i64 %text_len.034, i64 256), !dbg !644
  %smax = call i64 @llvm.smax.i64(i64 %smin, i64 1), !dbg !644
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !653, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i64 %text_len.034, metadata !649, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata ptr %current.033, metadata !652, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i64 0, metadata !657, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.value(metadata i64 %text_len.034, metadata !657, metadata !DIExpression()), !dbg !644
  %5 = shl nuw i64 %i.035, 8, !dbg !658
  %6 = add i64 %5, %4, !dbg !658
  %7 = call i64 @llvm.smin.i64(i64 %text_len.034, i64 256), !dbg !658
  call void @llvm.dbg.value(metadata i64 %7, metadata !657, metadata !DIExpression()), !dbg !644
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %current.033, i64 0, i32 1, !dbg !659
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !659
  %elem_ptr = getelementptr [256 x i8], ptr %current.033, i64 0, i64 %selected, !dbg !659
  call void @llvm.dbg.value(metadata ptr null, metadata !101, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata ptr %elem_ptr, metadata !101, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata !DIArgList(ptr %text, i64 %i.035), metadata !103, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !660
  call void @llvm.dbg.value(metadata i64 0, metadata !104, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i64 %7, metadata !104, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata ptr %elem_ptr, metadata !105, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata ptr null, metadata !106, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata !DIArgList(ptr %text, i64 %i.035), metadata !106, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !660
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !660
  %8 = icmp sgt i64 %text_len.034, 0, !dbg !655
  br i1 %8, label %for.body.i.preheader, label %copy.exit, !dbg !655

for.body.i.preheader:                             ; preds = %for.body
  %min.iters.check = icmp ult i64 %smax, 8, !dbg !655
  br i1 %min.iters.check, label %for.body.i.preheader38, label %vector.memcheck, !dbg !655

vector.memcheck:                                  ; preds = %for.body.i.preheader
  %9 = ptrtoint ptr %current.033 to i64, !dbg !644
  %10 = add i64 %selected, %9, !dbg !655
  %11 = sub i64 %10, %6, !dbg !655
  %diff.check = icmp ult i64 %11, 4, !dbg !655
  br i1 %diff.check, label %for.body.i.preheader38, label %vector.ph, !dbg !655

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %smax, 9223372036854775804, !dbg !655
  br label %vector.body, !dbg !655

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !661
  %uglygep39 = getelementptr i8, ptr %lsr.iv, i64 %index, !dbg !661
  %wide.load = load <4 x i8>, ptr %uglygep39, align 1, !dbg !661
  %12 = getelementptr i8, ptr %elem_ptr, i64 %index, !dbg !661
  store <4 x i8> %wide.load, ptr %12, align 1, !dbg !661
  %index.next = add nuw i64 %index, 4, !dbg !661
  %13 = icmp eq i64 %3, %index.next, !dbg !661
  br i1 %13, label %middle.block, label %vector.body, !dbg !661, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax, %n.vec, !dbg !655
  br i1 %cmp.n, label %copy.exit, label %for.body.i.preheader38, !dbg !655

for.body.i.preheader38:                           ; preds = %vector.memcheck, %for.body.i.preheader, %middle.block
  %i.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.i.preheader ], [ %n.vec, %middle.block ]
  br label %for.body.i, !dbg !655

for.body.i:                                       ; preds = %for.body.i.preheader38, %for.body.i
  %i.010.i = phi i64 [ %14, %for.body.i ], [ %i.010.i.ph, %for.body.i.preheader38 ]
  call void @llvm.dbg.value(metadata i64 %i.010.i, metadata !107, metadata !DIExpression()), !dbg !660
  %uglygep42 = getelementptr i8, ptr %lsr.iv, i64 %i.010.i, !dbg !661
  %indexed_val.i32 = load i8, ptr %uglygep42, align 1, !dbg !661
  %elem_ptr6.i = getelementptr i8, ptr %elem_ptr, i64 %i.010.i, !dbg !661
  store i8 %indexed_val.i32, ptr %elem_ptr6.i, align 1, !dbg !661
  %14 = add nuw nsw i64 %i.010.i, 1, !dbg !661
  call void @llvm.dbg.value(metadata i64 %14, metadata !107, metadata !DIExpression()), !dbg !660
  %15 = icmp slt i64 %14, %7, !dbg !655
  br i1 %15, label %for.body.i, label %copy.exit, !dbg !655, !llvm.loop !663

copy.exit:                                        ; preds = %for.body.i, %middle.block, %for.body
  %sunkaddr = getelementptr inbounds i8, ptr %current.033, i64 256, !dbg !664
  %selected18 = load i64, ptr %sunkaddr, align 8, !dbg !664
  %16 = add i64 %selected18, %7, !dbg !664
  store i64 %16, ptr %sunkaddr, align 8, !dbg !664
  %17 = add i64 %text_len.034, -256, !dbg !665
  call void @llvm.dbg.value(metadata i64 %17, metadata !649, metadata !DIExpression()), !dbg !644
  %"struct member ptr22" = getelementptr inbounds %String_Builder, ptr %current.033, i64 0, i32 2, !dbg !658
  %selected23 = load ptr, ptr %"struct member ptr22", align 8, !dbg !658
  call void @llvm.dbg.value(metadata ptr %selected23, metadata !652, metadata !DIExpression()), !dbg !644
  %18 = add nuw nsw i64 %i.035, 1, !dbg !658
  call void @llvm.dbg.value(metadata i64 %18, metadata !653, metadata !DIExpression()), !dbg !644
  %uglygep = getelementptr i8, ptr %lsr.iv, i64 256, !dbg !654
  %19 = icmp slt i64 %i.035, %0, !dbg !654
  br i1 %19, label %for.body, label %for.aftr, !dbg !654

for.aftr:                                         ; preds = %copy.exit, %len.exit
  ret void, !dbg !666
}

; Function Attrs: alwaysinline nofree nounwind
define void @"overload[x]=.10"(ptr %str, i8 %c) local_unnamed_addr #10 !dbg !211 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !210, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata ptr %str, metadata !210, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8 0, metadata !216, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i8 %c, metadata !216, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata ptr null, metadata !217, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata ptr %str, metadata !217, metadata !DIExpression()), !dbg !667
  %0 = icmp ne ptr %str, null, !dbg !668
  %"struct member ptr26" = getelementptr inbounds %String_Builder, ptr %str, i64 0, i32 1, !dbg !668
  %selected27 = load i64, ptr %"struct member ptr26", align 8, !dbg !668
  %1 = icmp eq i64 %selected27, 256, !dbg !668
  %"&&28" = and i1 %0, %1, !dbg !668
  br i1 %"&&28", label %for.body.preheader, label %for.aftr, !dbg !668

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !669

for.body:                                         ; preds = %for.body.preheader, %if.aftr12
  %"struct member ptr30" = phi ptr [ %"struct member ptr", %if.aftr12 ], [ %"struct member ptr26", %for.body.preheader ]
  %to_put.029 = phi ptr [ %to_put.1, %if.aftr12 ], [ %str, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %to_put.029, metadata !217, metadata !DIExpression()), !dbg !667
  %"struct member ptr4" = getelementptr inbounds %String_Builder, ptr %to_put.029, i64 0, i32 2, !dbg !670
  %selected5 = load ptr, ptr %"struct member ptr4", align 8, !dbg !670
  %2 = icmp eq ptr %selected5, null, !dbg !670
  br i1 %2, label %if.true, label %if.aftr, !dbg !669

for.aftr:                                         ; preds = %if.aftr12, %entry
  %to_put.0.lcssa = phi ptr [ %str, %entry ], [ %to_put.1, %if.aftr12 ], !dbg !667
  %selected.lcssa = phi i64 [ %selected27, %entry ], [ %selected, %if.aftr12 ], !dbg !668
  %elem_ptr = getelementptr [256 x i8], ptr %to_put.0.lcssa, i64 0, i64 %selected.lcssa, !dbg !671
  store i8 %c, ptr %elem_ptr, align 1, !dbg !671
  %sunkaddr = getelementptr inbounds i8, ptr %to_put.0.lcssa, i64 256, !dbg !672
  %selected23 = load i64, ptr %sunkaddr, align 8, !dbg !672
  %3 = add i64 %selected23, 1, !dbg !672
  store i64 %3, ptr %sunkaddr, align 8, !dbg !672
  ret void, !dbg !673

if.true:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !55, metadata !DIExpression()) #17, !dbg !674
  call void @llvm.dbg.value(metadata i64 272, metadata !55, metadata !DIExpression()) #17, !dbg !674
  %4 = call dereferenceable_or_null(272) ptr @malloc(i64 272) #17, !dbg !676
  call void @llvm.dbg.value(metadata ptr null, metadata !58, metadata !DIExpression()) #17, !dbg !674
  call void @llvm.dbg.value(metadata ptr %4, metadata !58, metadata !DIExpression()) #17, !dbg !674
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %4, i8 0, i64 272, i1 false) #17, !dbg !677
  %sunkaddr41 = getelementptr inbounds i8, ptr %to_put.029, i64 264, !dbg !678
  store ptr %4, ptr %sunkaddr41, align 8, !dbg !678
  br label %if.aftr, !dbg !678

if.aftr:                                          ; preds = %for.body, %if.true
  %selected10 = load i64, ptr %"struct member ptr30", align 8, !dbg !679
  %5 = icmp eq i64 %selected10, 256, !dbg !679
  br i1 %5, label %if.true11, label %if.aftr12, !dbg !669

if.true11:                                        ; preds = %if.aftr
  %sunkaddr42 = getelementptr inbounds i8, ptr %to_put.029, i64 264, !dbg !669
  %selected15 = load ptr, ptr %sunkaddr42, align 8, !dbg !669
  call void @llvm.dbg.value(metadata ptr %selected15, metadata !217, metadata !DIExpression()), !dbg !667
  br label %if.aftr12, !dbg !669

if.aftr12:                                        ; preds = %if.aftr, %if.true11
  %to_put.1 = phi ptr [ %selected15, %if.true11 ], [ %to_put.029, %if.aftr ], !dbg !667
  call void @llvm.dbg.value(metadata ptr %to_put.1, metadata !217, metadata !DIExpression()), !dbg !667
  %6 = icmp ne ptr %to_put.1, null, !dbg !668
  %"struct member ptr" = getelementptr inbounds %String_Builder, ptr %to_put.1, i64 0, i32 1, !dbg !668
  %selected = load i64, ptr %"struct member ptr", align 8, !dbg !668
  %7 = icmp eq i64 %selected, 256, !dbg !668
  %"&&" = and i1 %6, %7, !dbg !668
  br i1 %"&&", label %for.body, label %for.aftr, !dbg !668
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind readonly
define i8 @overload(%string %str, ptr %text) local_unnamed_addr #12 !dbg !680 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !683, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !684
  call void @llvm.dbg.value(metadata i64 0, metadata !683, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !684
  call void @llvm.dbg.value(metadata ptr undef, metadata !683, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !684
  call void @llvm.dbg.value(metadata i64 undef, metadata !683, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !684
  call void @llvm.dbg.value(metadata ptr null, metadata !685, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata ptr %text, metadata !685, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata ptr null, metadata !686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !684
  call void @llvm.dbg.value(metadata i64 0, metadata !686, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !684
  call void @llvm.dbg.value(metadata ptr %text, metadata !686, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !684
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata ptr %text, metadata !159, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !687
  br label %for.cond.i, !dbg !689

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond.i ], [ -1, %entry ], !dbg !689
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !687
  %uglygep = getelementptr i8, ptr %text, i64 %lsr.iv, !dbg !689
  %uglygep11 = getelementptr i8, ptr %uglygep, i64 1, !dbg !689
  %indexed_val.i = load i8, ptr %uglygep11, align 1, !dbg !689
  %.not.i = icmp eq i8 %indexed_val.i, 0, !dbg !689
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !165, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !687
  %lsr.iv.next = add i64 %lsr.iv, 1, !dbg !689
  br i1 %.not.i, label %len.exit, label %for.cond.i, !dbg !689

len.exit:                                         ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !686, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !684
  call void @llvm.dbg.value(metadata ptr null, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !690
  call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !690
  %str1.fca.0.extract.i = extractvalue %string %str, 0
  call void @llvm.dbg.value(metadata ptr %str1.fca.0.extract.i, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !690
  %str1.fca.1.extract.i = extractvalue %string %str, 1
  call void @llvm.dbg.value(metadata i64 %str1.fca.1.extract.i, metadata !148, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !690
  call void @llvm.dbg.value(metadata ptr null, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !690
  call void @llvm.dbg.value(metadata i64 0, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !690
  call void @llvm.dbg.value(metadata ptr %text, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !690
  call void @llvm.dbg.value(metadata i64 undef, metadata !150, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !690
  %.not.i7 = icmp eq i64 %str1.fca.1.extract.i, %lsr.iv.next, !dbg !692
  br i1 %.not.i7, label %for.cond.preheader.i, label %compare.exit, !dbg !693

for.cond.preheader.i:                             ; preds = %len.exit
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()), !dbg !690
  %0 = icmp sgt i64 %str1.fca.1.extract.i, 0, !dbg !693
  br i1 %0, label %for.body.i.preheader, label %compare.exit, !dbg !693

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !694

for.cond.i8:                                      ; preds = %for.body.i
  %1 = add nuw nsw i64 %i.020.i, 1, !dbg !694
  call void @llvm.dbg.value(metadata i64 %1, metadata !153, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i64 %i.020.i, metadata !153, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !690
  %2 = icmp slt i64 %1, %str1.fca.1.extract.i, !dbg !693
  br i1 %2, label %for.body.i, label %compare.exit, !dbg !693

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i8
  %i.020.i = phi i64 [ %1, %for.cond.i8 ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.020.i, metadata !153, metadata !DIExpression()), !dbg !690
  %elem_ptr.i9 = getelementptr i8, ptr %str1.fca.0.extract.i, i64 %i.020.i, !dbg !695
  %indexed_val.i10 = load i8, ptr %elem_ptr.i9, align 1, !dbg !695
  %elem_ptr11.i = getelementptr i8, ptr %text, i64 %i.020.i, !dbg !695
  %indexed_val12.i = load i8, ptr %elem_ptr11.i, align 1, !dbg !695
  %.not19.i = icmp eq i8 %indexed_val.i10, %indexed_val12.i, !dbg !695
  call void @llvm.dbg.value(metadata i64 %i.020.i, metadata !153, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !690
  br i1 %.not19.i, label %for.cond.i8, label %compare.exit, !dbg !694

compare.exit:                                     ; preds = %for.cond.i8, %for.body.i, %len.exit, %for.cond.preheader.i
  %common.ret.op.i = phi i8 [ 0, %len.exit ], [ 1, %for.cond.preheader.i ], [ 0, %for.body.i ], [ 1, %for.cond.i8 ]
  ret i8 %common.ret.op.i, !dbg !696
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) "alloc-family"="malloc" }
attributes #2 = { mustprogress nofree nounwind willreturn }
attributes #3 = { nofree nounwind }
attributes #4 = { nofree norecurse nosync nounwind readonly }
attributes #5 = { argmemonly nofree norecurse nosync nounwind }
attributes #6 = { argmemonly nofree norecurse nosync nounwind readonly }
attributes #7 = { alwaysinline mustprogress nofree norecurse nosync nounwind readonly willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { alwaysinline nofree nounwind }
attributes #11 = { alwaysinline nofree nosync nounwind }
attributes #12 = { alwaysinline nofree norecurse nosync nounwind readonly }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #17 = { nounwind }

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{!31, !32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "my_global_var", scope: !2, file: !2, line: 6, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./Test.apoc", directory: "E:\\C_Projects\\Apocalypse")
!3 = !DIBasicType(name: "f64", size: 64, encoding: DW_ATE_float)
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression())
!5 = distinct !DIGlobalVariable(name: "true", scope: !6, file: !6, line: 2, type: !7, isLocal: true, isDefinition: true)
!6 = !DIFile(filename: "./Basic.apoc", directory: "E:\\C_Projects\\Apocalypse\\Standard")
!7 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "false", scope: !6, file: !6, line: 3, type: !7, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "null", scope: !6, file: !6, line: 4, type: !12, isLocal: true, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "STRING_BUFFER_SIZE", scope: !15, file: !15, line: 2, type: !16, isLocal: true, isDefinition: true)
!15 = !DIFile(filename: "./String.apoc", directory: "E:\\C_Projects\\Apocalypse\\Standard")
!16 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "DELETE", scope: !19, file: !19, line: 58, type: !16, isLocal: true, isDefinition: true)
!19 = !DIFile(filename: "./Windows.apoc", directory: "E:\\C_Projects\\Apocalypse\\Standard")
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "READ_CONTROL", scope: !19, file: !19, line: 59, type: !16, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "WRITE_DAC", scope: !19, file: !19, line: 60, type: !16, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "WRITE_OWNER", scope: !19, file: !19, line: 61, type: !16, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "SYNCHRONIZE", scope: !19, file: !19, line: 62, type: !16, isLocal: true, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Apoc Compiler", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !30)
!29 = !DIFile(filename: "quick_test_2.apoc", directory: "E:\\C_Projects\\Apocalypse")
!30 = !{!0, !4, !8, !10, !13, !17, !20, !22, !24, !26}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 2, !"CodeView", i32 1}
!33 = distinct !DISubprogram(name: "give_num", scope: !29, file: !29, line: 2, type: !34, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!34 = !DISubroutineType(types: !35)
!35 = !{!36}
!36 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!37 = !{}
!38 = !DILocalVariable(name: "a", scope: !33, file: !29, line: 3, type: !36, align: 32)
!39 = !DILocation(line: 0, scope: !33)
!40 = !DILocation(line: 4, column: 5, scope: !33)
!41 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 8, type: !34, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!42 = !DILocalVariable(name: "var_one", scope: !41, file: !2, line: 10, type: !43, align: 32)
!43 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!44 = !DILocation(line: 0, scope: !41)
!45 = !DILocalVariable(name: "var_two", scope: !41, file: !2, line: 11, type: !3, align: 64)
!46 = !DILocation(line: 13, column: 3, scope: !41)
!47 = !DILocalVariable(name: "b", scope: !41, file: !2, line: 14, type: !3, align: 64)
!48 = !DILocation(line: 15, column: 7, scope: !41)
!49 = !DILocation(line: 16, column: 5, scope: !41)
!50 = distinct !DISubprogram(name: "mem_alloc", scope: !51, file: !51, line: 12, type: !52, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!51 = !DIFile(filename: "./C_Standard.apoc", directory: "E:\\C_Projects\\Apocalypse\\Standard")
!52 = !DISubroutineType(types: !53)
!53 = !{!12, !54}
!54 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!55 = !DILocalVariable(name: "size", arg: 1, scope: !50, file: !51, line: 12, type: !54)
!56 = !DILocation(line: 0, scope: !50)
!57 = !DILocation(line: 14, column: 2, scope: !50)
!58 = !DILocalVariable(name: "result", scope: !50, file: !51, line: 14, type: !12, align: 64)
!59 = !DILocation(line: 15, column: 8, scope: !50)
!60 = !DILocation(line: 16, column: 5, scope: !50)
!61 = distinct !DISubprogram(name: "builder_to_string", scope: !15, file: !15, line: 17, type: !62, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "String_Builder", scope: !15, file: !15, line: 10, size: 2176, align: 2048, elements: !66)
!66 = !{!67, !72, !73}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !15, file: !15, line: 12, baseType: !68, size: 2048, align: 8)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2048, align: 8, elements: !70)
!69 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!70 = !{!71}
!71 = !DISubrange(count: 256, lowerBound: 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !15, file: !15, line: 13, baseType: !16, size: 64, align: 64, offset: 2048)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !15, line: 14, baseType: !64, size: 64, align: 64, offset: 2112)
!74 = !DILocalVariable(name: "builder", arg: 1, scope: !61, file: !15, line: 17, type: !64)
!75 = !DILocation(line: 0, scope: !61)
!76 = !DILocalVariable(name: "out", scope: !61, file: !15, line: 19, type: !77, align: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !15, file: !15, line: 4, size: 128, align: 64, elements: !78)
!78 = !{!79, !81}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !15, file: !15, line: 6, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !15, file: !15, line: 7, baseType: !16, size: 64, align: 64, offset: 64)
!82 = !DILocalVariable(name: "out_len", scope: !61, file: !15, line: 20, type: !16, align: 64)
!83 = !DILocalVariable(name: "current", scope: !61, file: !15, line: 21, type: !64, align: 64)
!84 = !DILocalVariable(name: "i", scope: !61, file: !15, line: 22, type: !16, align: 64)
!85 = !DILocation(line: 22, column: 2, scope: !61)
!86 = !DILocation(line: 23, column: 3, scope: !61)
!87 = !DILocation(line: 26, column: 2, scope: !61)
!88 = !DILocation(line: 0, scope: !50, inlinedAt: !89)
!89 = distinct !DILocation(line: 27, column: 2, scope: !61)
!90 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !89)
!91 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !89)
!92 = !DILocalVariable(name: "times", scope: !61, file: !15, line: 30, type: !16, align: 64)
!93 = !DILocalVariable(name: "i", scope: !61, file: !15, line: 31, type: !16, align: 64)
!94 = !DILocation(line: 31, column: 2, scope: !61)
!95 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !99)
!96 = distinct !DISubprogram(name: "copy", scope: !15, file: !15, line: 261, type: !97, scopeLine: 262, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !12, !12, !54}
!99 = distinct !DILocation(line: 32, column: 7, scope: !61)
!100 = !DILocation(line: 32, column: 7, scope: !61)
!101 = !DILocalVariable(name: "dst", arg: 1, scope: !96, file: !15, line: 261, type: !12)
!102 = !DILocation(line: 0, scope: !96, inlinedAt: !99)
!103 = !DILocalVariable(name: "src", arg: 2, scope: !96, file: !15, line: 261, type: !12)
!104 = !DILocalVariable(name: "size", arg: 3, scope: !96, file: !15, line: 261, type: !54)
!105 = !DILocalVariable(name: "a0", scope: !96, file: !15, line: 263, type: !80, align: 64)
!106 = !DILocalVariable(name: "a1", scope: !96, file: !15, line: 264, type: !80, align: 64)
!107 = !DILocalVariable(name: "i", scope: !96, file: !15, line: 265, type: !16, align: 64)
!108 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !99)
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.isvectorized", i32 1}
!111 = distinct !{!111, !110}
!112 = !DILocation(line: 33, column: 3, scope: !61)
!113 = !DILocation(line: 34, column: 3, scope: !61)
!114 = !DILocation(line: 36, column: 6, scope: !61)
!115 = !DILocation(line: 0, scope: !96, inlinedAt: !116)
!116 = distinct !DILocation(line: 36, column: 6, scope: !61)
!117 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !116)
!118 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !116)
!119 = distinct !{!119, !110}
!120 = distinct !{!120, !110}
!121 = !DILocation(line: 38, column: 5, scope: !61)
!122 = distinct !DISubprogram(name: "init_builder", scope: !15, file: !15, line: 41, type: !123, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !80}
!125 = !DILocalVariable(name: "text", arg: 1, scope: !122, file: !15, line: 41, type: !80)
!126 = !DILocation(line: 0, scope: !122)
!127 = !DILocation(line: 43, column: 2, scope: !122)
!128 = !DILocalVariable(name: "out", scope: !122, file: !15, line: 43, type: !65, align: 2048)
!129 = !DILocalVariable(name: "current", scope: !122, file: !15, line: 44, type: !64, align: 64)
!130 = !DILocalVariable(name: "times", scope: !122, file: !15, line: 45, type: !16, align: 64)
!131 = !DILocalVariable(name: "i", scope: !122, file: !15, line: 46, type: !16, align: 64)
!132 = !DILocation(line: 46, column: 2, scope: !122)
!133 = !DILocation(line: 53, column: 4, scope: !122)
!134 = !DILocation(line: 47, column: 3, scope: !122)
!135 = !DILocation(line: 48, column: 3, scope: !122)
!136 = !DILocation(line: 49, column: 3, scope: !122)
!137 = !DILocation(line: 44, column: 2, scope: !122)
!138 = !DILocation(line: 56, column: 5, scope: !122)
!139 = !DILocation(line: 51, column: 4, scope: !122)
!140 = !DILocation(line: 0, scope: !50, inlinedAt: !141)
!141 = distinct !DILocation(line: 52, column: 4, scope: !122)
!142 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !141)
!143 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !141)
!144 = !DILocation(line: 52, column: 4, scope: !122)
!145 = distinct !DISubprogram(name: "compare", scope: !15, file: !15, line: 111, type: !146, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!146 = !DISubroutineType(types: !147)
!147 = !{!7, !77, !77}
!148 = !DILocalVariable(name: "str1", arg: 1, scope: !145, file: !15, line: 111, type: !77)
!149 = !DILocation(line: 0, scope: !145)
!150 = !DILocalVariable(name: "str2", arg: 2, scope: !145, file: !15, line: 111, type: !77)
!151 = !DILocation(line: 113, column: 2, scope: !145)
!152 = !DILocation(line: 116, column: 2, scope: !145)
!153 = !DILocalVariable(name: "i", scope: !145, file: !15, line: 116, type: !16, align: 64)
!154 = !DILocation(line: 117, column: 38, scope: !145)
!155 = !DILocation(line: 117, column: 3, scope: !145)
!156 = distinct !DISubprogram(name: "to_string", scope: !15, file: !15, line: 121, type: !123, scopeLine: 122, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!157 = !DILocalVariable(name: "text", arg: 1, scope: !156, file: !15, line: 121, type: !80)
!158 = !DILocation(line: 0, scope: !156)
!159 = !DILocalVariable(name: "text", arg: 1, scope: !160, file: !15, line: 271, type: !80)
!160 = distinct !DISubprogram(name: "len", scope: !15, file: !15, line: 271, type: !161, scopeLine: 272, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!161 = !DISubroutineType(types: !162)
!162 = !{!16, !80}
!163 = !DILocation(line: 0, scope: !160, inlinedAt: !164)
!164 = distinct !DILocation(line: 123, column: 2, scope: !156)
!165 = !DILocalVariable(name: "result", scope: !160, file: !15, line: 273, type: !16, align: 64)
!166 = !DILocation(line: 274, column: 2, scope: !160, inlinedAt: !164)
!167 = !DILocalVariable(name: "text_len", scope: !156, file: !15, line: 123, type: !16, align: 64)
!168 = !DILocation(line: 0, scope: !50, inlinedAt: !169)
!169 = distinct !DILocation(line: 124, column: 2, scope: !156)
!170 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !169)
!171 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !169)
!172 = !DILocalVariable(name: "allocated", scope: !156, file: !15, line: 124, type: !12, align: 64)
!173 = !DILocation(line: 0, scope: !96, inlinedAt: !174)
!174 = distinct !DILocation(line: 125, column: 6, scope: !156)
!175 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !174)
!176 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !174)
!177 = !DILocation(line: 127, column: 5, scope: !156)
!178 = !DILocalVariable(name: "str", scope: !156, file: !15, line: 126, type: !77, align: 64)
!179 = distinct !DISubprogram(name: "terminate_string", scope: !15, file: !15, line: 130, type: !180, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !77}
!182 = !DILocalVariable(name: "str", arg: 1, scope: !179, file: !15, line: 130, type: !77)
!183 = !DILocation(line: 0, scope: !179)
!184 = !DILocalVariable(name: "out", scope: !179, file: !15, line: 132, type: !77, align: 64)
!185 = !DILocation(line: 133, column: 2, scope: !179)
!186 = !DILocation(line: 0, scope: !50, inlinedAt: !187)
!187 = distinct !DILocation(line: 134, column: 2, scope: !179)
!188 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !187)
!189 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !187)
!190 = !DILocation(line: 0, scope: !96, inlinedAt: !191)
!191 = distinct !DILocation(line: 135, column: 6, scope: !179)
!192 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !191)
!193 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !191)
!194 = distinct !{!194, !110}
!195 = distinct !{!195, !110}
!196 = !DILocation(line: 136, column: 2, scope: !179)
!197 = !DILocation(line: 137, column: 5, scope: !179)
!198 = distinct !DISubprogram(name: "build_unsigned_int", scope: !15, file: !15, line: 140, type: !199, scopeLine: 140, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !54, !16, !64}
!201 = !DILocalVariable(name: "num", arg: 1, scope: !198, file: !15, line: 140, type: !54)
!202 = !DILocation(line: 0, scope: !198)
!203 = !DILocalVariable(name: "num_size", arg: 2, scope: !198, file: !15, line: 140, type: !16)
!204 = !DILocalVariable(name: "builder", arg: 3, scope: !198, file: !15, line: 140, type: !64)
!205 = !DILocation(line: 141, column: 2, scope: !198)
!206 = !DILocation(line: 146, column: 1, scope: !198)
!207 = !DILocation(line: 143, column: 21, scope: !198)
!208 = !DILocalVariable(name: "digit", scope: !198, file: !15, line: 142, type: !54, align: 64)
!209 = !DILocation(line: 144, column: 4, scope: !198)
!210 = !DILocalVariable(name: "str", scope: !211, file: !15, line: 91, type: !64)
!211 = distinct !DISubprogram(name: "overload[x]=", scope: !15, file: !15, line: 91, type: !212, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !64, !69}
!214 = !DILocation(line: 0, scope: !211, inlinedAt: !215)
!215 = distinct !DILocation(line: 144, column: 4, scope: !198)
!216 = !DILocalVariable(name: "c", arg: 1, scope: !211, file: !15, line: 91, type: !69)
!217 = !DILocalVariable(name: "to_put", scope: !211, file: !15, line: 93, type: !64, align: 64)
!218 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !215)
!219 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !215)
!220 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !215)
!221 = !DILocation(line: 0, scope: !50, inlinedAt: !222)
!222 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !215)
!223 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !222)
!224 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !222)
!225 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !215)
!226 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !215)
!227 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !215)
!228 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !215)
!229 = distinct !DISubprogram(name: "int_to_str", scope: !15, file: !15, line: 148, type: !230, scopeLine: 149, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !16, !64}
!232 = !DILocalVariable(name: "num", arg: 1, scope: !229, file: !15, line: 148, type: !16)
!233 = !DILocation(line: 0, scope: !229)
!234 = !DILocalVariable(name: "builder", arg: 2, scope: !229, file: !15, line: 148, type: !64)
!235 = !DILocation(line: 150, column: 2, scope: !229)
!236 = !DILocation(line: 157, column: 2, scope: !229)
!237 = !DILocation(line: 0, scope: !211, inlinedAt: !238)
!238 = distinct !DILocation(line: 151, column: 4, scope: !229)
!239 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !238)
!240 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !238)
!241 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !238)
!242 = !DILocation(line: 0, scope: !50, inlinedAt: !243)
!243 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !238)
!244 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !243)
!245 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !243)
!246 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !238)
!247 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !238)
!248 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !238)
!249 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !238)
!250 = !DILocalVariable(name: "num_size", scope: !229, file: !15, line: 155, type: !16, align: 64)
!251 = !DILocalVariable(name: "div_copy", scope: !229, file: !15, line: 154, type: !16, align: 64)
!252 = !DILocation(line: 158, column: 3, scope: !229)
!253 = !DILocation(line: 160, column: 2, scope: !229)
!254 = !DILocation(line: 166, column: 1, scope: !229)
!255 = !DILocation(line: 0, scope: !211, inlinedAt: !256)
!256 = distinct !DILocation(line: 161, column: 4, scope: !229)
!257 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !256)
!258 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !256)
!259 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !256)
!260 = !DILocation(line: 0, scope: !50, inlinedAt: !261)
!261 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !256)
!262 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !261)
!263 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !261)
!264 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !256)
!265 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !256)
!266 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !256)
!267 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !256)
!268 = !DILocation(line: 162, column: 3, scope: !229)
!269 = !DILocation(line: 163, column: 3, scope: !229)
!270 = !DILocation(line: 165, column: 20, scope: !229)
!271 = distinct !DISubprogram(name: "float_to_str", scope: !15, file: !15, line: 168, type: !272, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !3, !64}
!274 = !DILocalVariable(name: "num", arg: 1, scope: !271, file: !15, line: 168, type: !3)
!275 = !DILocation(line: 0, scope: !271)
!276 = !DILocalVariable(name: "builder", arg: 2, scope: !271, file: !15, line: 168, type: !64)
!277 = !DILocation(line: 170, column: 2, scope: !271)
!278 = !DILocation(line: 185, column: 2, scope: !271)
!279 = !DILocation(line: 0, scope: !211, inlinedAt: !280)
!280 = distinct !DILocation(line: 171, column: 4, scope: !271)
!281 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !280)
!282 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !280)
!283 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !280)
!284 = !DILocation(line: 0, scope: !50, inlinedAt: !285)
!285 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !280)
!286 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !285)
!287 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !285)
!288 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !280)
!289 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !280)
!290 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !280)
!291 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !280)
!292 = !DILocation(line: 172, column: 3, scope: !271)
!293 = !DILocation(line: 175, column: 2, scope: !271)
!294 = !DILocalVariable(name: "decimal", scope: !271, file: !15, line: 175, type: !54, align: 64)
!295 = !DILocation(line: 176, column: 2, scope: !271)
!296 = !DILocation(line: 178, column: 2, scope: !271)
!297 = !DILocation(line: 0, scope: !211, inlinedAt: !298)
!298 = distinct !DILocation(line: 179, column: 4, scope: !271)
!299 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !298)
!300 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !298)
!301 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !298)
!302 = !DILocation(line: 0, scope: !50, inlinedAt: !303)
!303 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !298)
!304 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !303)
!305 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !303)
!306 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !298)
!307 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !298)
!308 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !298)
!309 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !298)
!310 = !DILocation(line: 179, column: 4, scope: !271)
!311 = !DILocation(line: 0, scope: !211, inlinedAt: !312)
!312 = distinct !DILocation(line: 182, column: 3, scope: !271)
!313 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !312)
!314 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !312)
!315 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !312)
!316 = !DILocation(line: 0, scope: !50, inlinedAt: !317)
!317 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !312)
!318 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !317)
!319 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !317)
!320 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !312)
!321 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !312)
!322 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !312)
!323 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !312)
!324 = !DILocalVariable(name: "zeroes_to_append", scope: !271, file: !15, line: 183, type: !16, align: 64)
!325 = !DILocation(line: 181, column: 17, scope: !271)
!326 = !DILocalVariable(name: "i", scope: !271, file: !15, line: 190, type: !16, align: 64)
!327 = !DILocation(line: 190, column: 2, scope: !271)
!328 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !329)
!329 = distinct !DILocation(line: 191, column: 4, scope: !271)
!330 = !DILocation(line: 186, column: 3, scope: !271)
!331 = !DILocation(line: 187, column: 3, scope: !271)
!332 = !DILocation(line: 187, column: 20, scope: !271)
!333 = !DILocation(line: 0, scope: !211, inlinedAt: !329)
!334 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !329)
!335 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !329)
!336 = !DILocation(line: 0, scope: !50, inlinedAt: !337)
!337 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !329)
!338 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !337)
!339 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !337)
!340 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !329)
!341 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !329)
!342 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !329)
!343 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !329)
!344 = !DILocation(line: 191, column: 4, scope: !271)
!345 = !DILocation(line: 194, column: 12, scope: !271)
!346 = !DILocation(line: 195, column: 1, scope: !271)
!347 = distinct !DISubprogram(name: "parse_format", scope: !15, file: !15, line: 197, type: !348, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !77, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "Any", scope: !6, file: !6, line: 51, size: 128, align: 64, elements: !352)
!352 = !{!353, !408}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !6, line: 52, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !6, file: !6, line: 56, size: 320, align: 64, elements: !356)
!356 = !{!357, !358, !363, !376, !384, !391, !399}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !6, file: !6, line: 57, baseType: !36, size: 32, align: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "primitive", scope: !6, file: !6, line: 66, baseType: !359, size: 64, align: 32)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Primitive", scope: !6, file: !6, line: 66, size: 64, align: 32, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !6, file: !6, line: 67, baseType: !36, size: 32, align: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6, file: !6, line: 68, baseType: !36, size: 32, align: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !6, file: !6, line: 71, baseType: !364, size: 320, align: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Struct", scope: !6, file: !6, line: 71, size: 320, align: 64, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !373}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !6, file: !6, line: 72, baseType: !36, size: 32, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "member_count", scope: !6, file: !6, line: 73, baseType: !36, size: 32, align: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "is_union", scope: !6, file: !6, line: 74, baseType: !7, size: 8, align: 8, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "is_packed", scope: !6, file: !6, line: 75, baseType: !7, size: 8, align: 8, offset: 72)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6, file: !6, line: 76, baseType: !80, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "member_names", scope: !6, file: !6, line: 77, baseType: !372, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "member_types", scope: !6, file: !6, line: 78, baseType: !374, size: 64, align: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !6, file: !6, line: 78, size: 320, align: 64, elements: !356)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !6, file: !6, line: 81, baseType: !377, size: 192, align: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Array", scope: !6, file: !6, line: 81, size: 192, align: 64, elements: !378)
!378 = !{!379, !380, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !6, file: !6, line: 82, baseType: !36, size: 32, align: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !6, line: 83, baseType: !381, size: 64, align: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !6, file: !6, line: 83, size: 320, align: 64, elements: !356)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "elem_count", scope: !6, file: !6, line: 84, baseType: !54, size: 64, align: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6, file: !6, line: 87, baseType: !385, size: 128, align: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Pointer", scope: !6, file: !6, line: 87, size: 128, align: 64, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !6, file: !6, line: 88, baseType: !36, size: 32, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pointed", scope: !6, file: !6, line: 89, baseType: !389, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !6, file: !6, line: 89, size: 320, align: 64, elements: !356)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "enumerator", scope: !6, file: !6, line: 92, baseType: !392, size: 256, align: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Enum", scope: !6, file: !6, line: 92, size: 256, align: 64, elements: !393)
!393 = !{!394, !395, !396, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !6, file: !6, line: 93, baseType: !36, size: 32, align: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !6, line: 94, baseType: !359, size: 64, align: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !6, file: !6, line: 95, baseType: !372, size: 64, align: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !6, file: !6, line: 96, baseType: !398, size: 64, align: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !6, file: !6, line: 99, baseType: !400, size: 256, align: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Func", scope: !6, file: !6, line: 99, size: 256, align: 64, elements: !401)
!401 = !{!402, !403, !406, !407}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !6, file: !6, line: 100, baseType: !36, size: 32, align: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "param_types", scope: !6, file: !6, line: 101, baseType: !404, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "Type_Info", scope: !6, file: !6, line: 101, size: 320, align: 64, elements: !356)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "return_type", scope: !6, file: !6, line: 102, baseType: !404, size: 64, align: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "calling_convention", scope: !6, file: !6, line: 103, baseType: !36, size: 32, align: 32, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6, file: !6, line: 53, baseType: !12, size: 64, align: 64, offset: 64)
!409 = !DILocalVariable(name: "format", arg: 1, scope: !347, file: !15, line: 197, type: !77)
!410 = !DILocation(line: 0, scope: !347)
!411 = !DILocalVariable(name: "list", arg: 2, scope: !347, file: !15, line: 197, type: !350)
!412 = !DILocation(line: 199, column: 2, scope: !347)
!413 = !DILocalVariable(name: "builder", scope: !347, file: !15, line: 199, type: !65, align: 2048)
!414 = !DILocalVariable(name: "list_index", scope: !347, file: !15, line: 200, type: !16, align: 64)
!415 = !DILocalVariable(name: "i", scope: !347, file: !15, line: 201, type: !16, align: 64)
!416 = !DILocalVariable(name: "item", scope: !347, file: !15, line: 203, type: !351, align: 64)
!417 = !DILocation(line: 201, column: 2, scope: !347)
!418 = !DILocalVariable(name: "str", scope: !419, file: !15, line: 59, type: !77)
!419 = distinct !DISubprogram(name: "overload[]", scope: !15, file: !15, line: 59, type: !420, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!420 = !DISubroutineType(types: !421)
!421 = !{!69, !77, !16}
!422 = !DILocation(line: 0, scope: !419, inlinedAt: !423)
!423 = distinct !DILocation(line: 202, column: 3, scope: !347)
!424 = !DILocalVariable(name: "index", arg: 1, scope: !419, file: !15, line: 59, type: !16)
!425 = !DILocation(line: 61, column: 5, scope: !419, inlinedAt: !423)
!426 = !DILocation(line: 202, column: 3, scope: !347)
!427 = !DILocation(line: 231, column: 4, scope: !347)
!428 = !DILocation(line: 0, scope: !211, inlinedAt: !429)
!429 = distinct !DILocation(line: 234, column: 2, scope: !347)
!430 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !429)
!431 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !429)
!432 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !429)
!433 = !DILocation(line: 0, scope: !50, inlinedAt: !434)
!434 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !429)
!435 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !434)
!436 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !434)
!437 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !429)
!438 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !429)
!439 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !429)
!440 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !429)
!441 = !DILocalVariable(name: "out", scope: !347, file: !15, line: 235, type: !77, align: 64)
!442 = !DILocation(line: 0, scope: !61, inlinedAt: !443)
!443 = distinct !DILocation(line: 235, column: 2, scope: !347)
!444 = !DILocation(line: 22, column: 2, scope: !61, inlinedAt: !443)
!445 = !DILocation(line: 23, column: 3, scope: !61, inlinedAt: !443)
!446 = !DILocation(line: 26, column: 2, scope: !61, inlinedAt: !443)
!447 = !DILocation(line: 0, scope: !50, inlinedAt: !448)
!448 = distinct !DILocation(line: 27, column: 2, scope: !61, inlinedAt: !443)
!449 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !448)
!450 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !448)
!451 = !DILocation(line: 31, column: 2, scope: !61, inlinedAt: !443)
!452 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !453)
!453 = distinct !DILocation(line: 32, column: 7, scope: !61, inlinedAt: !443)
!454 = !DILocation(line: 32, column: 7, scope: !61, inlinedAt: !443)
!455 = !DILocation(line: 0, scope: !96, inlinedAt: !453)
!456 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !453)
!457 = distinct !{!457, !110}
!458 = distinct !{!458, !110}
!459 = !DILocation(line: 33, column: 3, scope: !61, inlinedAt: !443)
!460 = !DILocation(line: 34, column: 3, scope: !61, inlinedAt: !443)
!461 = !DILocation(line: 36, column: 6, scope: !61, inlinedAt: !443)
!462 = !DILocation(line: 0, scope: !96, inlinedAt: !463)
!463 = distinct !DILocation(line: 36, column: 6, scope: !61, inlinedAt: !443)
!464 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !463)
!465 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !463)
!466 = distinct !{!466, !110}
!467 = distinct !{!467, !110}
!468 = !DILocation(line: 236, column: 5, scope: !347)
!469 = !DILocation(line: 203, column: 4, scope: !347)
!470 = !DILocation(line: 204, column: 4, scope: !347)
!471 = !DILocation(line: 205, column: 4, scope: !347)
!472 = !DILocalVariable(name: "type", scope: !347, file: !15, line: 205, type: !36, align: 32)
!473 = !DILocation(line: 228, column: 5, scope: !347)
!474 = !DILocalVariable(name: "to_parse", scope: !347, file: !15, line: 207, type: !16, align: 64)
!475 = !DILocation(line: 208, column: 5, scope: !347)
!476 = !DILocalVariable(name: "size", scope: !347, file: !15, line: 208, type: !36, align: 32)
!477 = !DILocation(line: 209, column: 5, scope: !347)
!478 = !DILocation(line: 217, column: 15, scope: !347)
!479 = !DILocation(line: 210, column: 6, scope: !347)
!480 = !DILocation(line: 212, column: 6, scope: !347)
!481 = !DILocation(line: 214, column: 6, scope: !347)
!482 = !DILocation(line: 216, column: 6, scope: !347)
!483 = !DILocalVariable(name: "to_parse", scope: !347, file: !15, line: 219, type: !3, align: 64)
!484 = !DILocation(line: 220, column: 5, scope: !347)
!485 = !DILocalVariable(name: "size", scope: !347, file: !15, line: 220, type: !36, align: 32)
!486 = !DILocation(line: 221, column: 5, scope: !347)
!487 = !DILocation(line: 226, column: 17, scope: !347)
!488 = !DILocation(line: 222, column: 6, scope: !347)
!489 = !DILocation(line: 224, column: 6, scope: !347)
!490 = !DILocation(line: 0, scope: !419, inlinedAt: !491)
!491 = distinct !DILocation(line: 228, column: 5, scope: !347)
!492 = !DILocation(line: 0, scope: !211, inlinedAt: !493)
!493 = distinct !DILocation(line: 228, column: 5, scope: !347)
!494 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !493)
!495 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !493)
!496 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !493)
!497 = !DILocation(line: 0, scope: !50, inlinedAt: !498)
!498 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !493)
!499 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !498)
!500 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !498)
!501 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !493)
!502 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !493)
!503 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !493)
!504 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !493)
!505 = !DILocation(line: 0, scope: !419, inlinedAt: !506)
!506 = distinct !DILocation(line: 231, column: 4, scope: !347)
!507 = !DILocation(line: 0, scope: !211, inlinedAt: !508)
!508 = distinct !DILocation(line: 231, column: 4, scope: !347)
!509 = !DILocation(line: 94, column: 2, scope: !211, inlinedAt: !508)
!510 = !DILocation(line: 99, column: 4, scope: !211, inlinedAt: !508)
!511 = !DILocation(line: 95, column: 3, scope: !211, inlinedAt: !508)
!512 = !DILocation(line: 0, scope: !50, inlinedAt: !513)
!513 = distinct !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !508)
!514 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !513)
!515 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !513)
!516 = !DILocation(line: 96, column: 4, scope: !211, inlinedAt: !508)
!517 = !DILocation(line: 98, column: 3, scope: !211, inlinedAt: !508)
!518 = !DILocation(line: 101, column: 2, scope: !211, inlinedAt: !508)
!519 = !DILocation(line: 102, column: 2, scope: !211, inlinedAt: !508)
!520 = distinct !DISubprogram(name: "print!@* u8!@-", scope: !15, file: !15, line: 239, type: !123, scopeLine: 240, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!521 = !DILocalVariable(name: "format", arg: 1, scope: !520, file: !15, line: 239, type: !80)
!522 = !DILocation(line: 0, scope: !520)
!523 = !DILocalVariable(name: "str", scope: !520, file: !15, line: 241, type: !77, align: 64)
!524 = !DILocation(line: 0, scope: !156, inlinedAt: !525)
!525 = distinct !DILocation(line: 241, column: 2, scope: !520)
!526 = !DILocation(line: 0, scope: !160, inlinedAt: !527)
!527 = distinct !DILocation(line: 123, column: 2, scope: !156, inlinedAt: !525)
!528 = !DILocation(line: 274, column: 2, scope: !160, inlinedAt: !527)
!529 = !DILocation(line: 0, scope: !50, inlinedAt: !530)
!530 = distinct !DILocation(line: 124, column: 2, scope: !156, inlinedAt: !525)
!531 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !530)
!532 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !530)
!533 = !DILocation(line: 0, scope: !96, inlinedAt: !534)
!534 = distinct !DILocation(line: 125, column: 6, scope: !156, inlinedAt: !525)
!535 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !534)
!536 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !534)
!537 = !DILocation(line: 127, column: 5, scope: !156, inlinedAt: !525)
!538 = !DILocalVariable(name: "list", scope: !520, file: !15, line: 242, type: !350, align: 64)
!539 = !DILocation(line: 242, column: 2, scope: !520)
!540 = !DILocation(line: 243, column: 15, scope: !520)
!541 = !DILocation(line: 244, column: 2, scope: !520)
!542 = !DILocalVariable(name: "out", scope: !520, file: !15, line: 244, type: !77, align: 64)
!543 = !DILocation(line: 245, column: 14, scope: !520)
!544 = !DILocation(line: 48, column: 5, scope: !545, inlinedAt: !548)
!545 = distinct !DISubprogram(name: "get_stdout", scope: !19, file: !19, line: 46, type: !546, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!546 = !DISubroutineType(types: !547)
!547 = !{!12}
!548 = distinct !DILocation(line: 246, column: 2, scope: !520)
!549 = !DILocalVariable(name: "stdout", scope: !520, file: !15, line: 246, type: !12, align: 64)
!550 = !DILocation(line: 247, column: 12, scope: !520)
!551 = !DILocation(line: 0, scope: !552, inlinedAt: !556)
!552 = distinct !DISubprogram(name: "write_file", scope: !19, file: !19, line: 38, type: !553, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!553 = !DISubroutineType(types: !554)
!554 = !{!7, !12, !12, !555}
!555 = !DIBasicType(name: "u32", size: 24, encoding: DW_ATE_unsigned)
!556 = distinct !DILocation(line: 247, column: 12, scope: !520)
!557 = !DILocalVariable(name: "file", arg: 1, scope: !552, file: !19, line: 38, type: !12)
!558 = !DILocalVariable(name: "data", arg: 2, scope: !552, file: !19, line: 38, type: !12)
!559 = !DILocalVariable(name: "size", arg: 3, scope: !552, file: !19, line: 38, type: !555)
!560 = !DILocalVariable(name: "written", scope: !552, file: !19, line: 40, type: !555, align: 32)
!561 = !DILocation(line: 40, column: 2, scope: !552, inlinedAt: !556)
!562 = !DILocation(line: 41, column: 11, scope: !552, inlinedAt: !556)
!563 = !DILocalVariable(name: "result", scope: !552, file: !19, line: 42, type: !7, align: 8)
!564 = !DILocation(line: 43, column: 5, scope: !552, inlinedAt: !556)
!565 = !DILocation(line: 248, column: 1, scope: !520)
!566 = distinct !DISubprogram(name: "print!@string!@-", scope: !15, file: !15, line: 250, type: !180, scopeLine: 251, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!567 = !DILocalVariable(name: "format", arg: 1, scope: !566, file: !15, line: 250, type: !77)
!568 = !DILocation(line: 0, scope: !566)
!569 = !DILocalVariable(name: "list", scope: !566, file: !15, line: 252, type: !350, align: 64)
!570 = !DILocation(line: 252, column: 2, scope: !566)
!571 = !DILocation(line: 253, column: 15, scope: !566)
!572 = !DILocation(line: 254, column: 2, scope: !566)
!573 = !DILocalVariable(name: "out", scope: !566, file: !15, line: 254, type: !77, align: 64)
!574 = !DILocation(line: 255, column: 14, scope: !566)
!575 = !DILocation(line: 48, column: 5, scope: !545, inlinedAt: !576)
!576 = distinct !DILocation(line: 256, column: 2, scope: !566)
!577 = !DILocalVariable(name: "stdout", scope: !566, file: !15, line: 256, type: !12, align: 64)
!578 = !DILocation(line: 257, column: 12, scope: !566)
!579 = !DILocation(line: 0, scope: !552, inlinedAt: !580)
!580 = distinct !DILocation(line: 257, column: 12, scope: !566)
!581 = !DILocation(line: 40, column: 2, scope: !552, inlinedAt: !580)
!582 = !DILocation(line: 41, column: 11, scope: !552, inlinedAt: !580)
!583 = !DILocation(line: 43, column: 5, scope: !552, inlinedAt: !580)
!584 = !DILocation(line: 258, column: 1, scope: !566)
!585 = !DILocation(line: 0, scope: !96)
!586 = !DILocation(line: 265, column: 2, scope: !96)
!587 = !DILocation(line: 267, column: 3, scope: !96)
!588 = distinct !{!588, !110}
!589 = distinct !{!589, !110}
!590 = !DILocation(line: 269, column: 1, scope: !96)
!591 = !DILocation(line: 0, scope: !160)
!592 = !DILocation(line: 274, column: 2, scope: !160)
!593 = !DILocation(line: 275, column: 5, scope: !160)
!594 = distinct !DISubprogram(name: "open_file", scope: !19, file: !19, line: 26, type: !595, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!595 = !DISubroutineType(types: !596)
!596 = !{!12, !80, !16}
!597 = !DILocalVariable(name: "f_name", arg: 1, scope: !594, file: !19, line: 26, type: !80)
!598 = !DILocation(line: 0, scope: !594)
!599 = !DILocalVariable(name: "access", arg: 2, scope: !594, file: !19, line: 26, type: !16)
!600 = !DILocalVariable(name: "win_access", scope: !594, file: !19, line: 28, type: !16, align: 64)
!601 = !DILocation(line: 29, column: 2, scope: !594)
!602 = !DILocation(line: 35, column: 5, scope: !594)
!603 = !DILocation(line: 32, column: 2, scope: !594)
!604 = !DILocalVariable(name: "file", scope: !594, file: !19, line: 32, type: !12, align: 64)
!605 = !DILocation(line: 0, scope: !552)
!606 = !DILocation(line: 40, column: 2, scope: !552)
!607 = !DILocation(line: 41, column: 11, scope: !552)
!608 = !DILocation(line: 42, column: 2, scope: !552)
!609 = !DILocation(line: 43, column: 5, scope: !552)
!610 = !DILocation(line: 48, column: 5, scope: !545)
!611 = !DILocation(line: 0, scope: !419)
!612 = !DILocation(line: 61, column: 5, scope: !419)
!613 = distinct !DISubprogram(name: "overload+\BD\935[\E7\B1", scope: !15, file: !15, line: 64, type: !614, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!614 = !DISubroutineType(types: !615)
!615 = !{!77, !77, !80}
!616 = !DILocalVariable(name: "str", scope: !613, file: !15, line: 64, type: !77)
!617 = !DILocation(line: 0, scope: !613)
!618 = !DILocalVariable(name: "text", arg: 1, scope: !613, file: !15, line: 64, type: !80)
!619 = !DILocalVariable(name: "out", scope: !613, file: !15, line: 66, type: !77, align: 64)
!620 = !DILocation(line: 0, scope: !160, inlinedAt: !621)
!621 = distinct !DILocation(line: 67, column: 2, scope: !613)
!622 = !DILocation(line: 274, column: 2, scope: !160, inlinedAt: !621)
!623 = !DILocalVariable(name: "text_len", scope: !613, file: !15, line: 67, type: !16, align: 64)
!624 = !DILocation(line: 0, scope: !50, inlinedAt: !625)
!625 = distinct !DILocation(line: 69, column: 2, scope: !613)
!626 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !625)
!627 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !625)
!628 = !DILocation(line: 0, scope: !96, inlinedAt: !629)
!629 = distinct !DILocation(line: 70, column: 6, scope: !613)
!630 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !629)
!631 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !629)
!632 = distinct !{!632, !110}
!633 = distinct !{!633, !110}
!634 = !DILocation(line: 0, scope: !96, inlinedAt: !635)
!635 = distinct !DILocation(line: 71, column: 6, scope: !613)
!636 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !635)
!637 = !DILocation(line: 71, column: 6, scope: !613)
!638 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !635)
!639 = !DILocation(line: 72, column: 5, scope: !613)
!640 = distinct !DISubprogram(name: "overload[x]=", scope: !15, file: !15, line: 75, type: !641, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !64, !80}
!643 = !DILocalVariable(name: "str", scope: !640, file: !15, line: 75, type: !64)
!644 = !DILocation(line: 0, scope: !640)
!645 = !DILocalVariable(name: "text", arg: 1, scope: !640, file: !15, line: 75, type: !80)
!646 = !DILocation(line: 0, scope: !160, inlinedAt: !647)
!647 = distinct !DILocation(line: 77, column: 2, scope: !640)
!648 = !DILocation(line: 274, column: 2, scope: !160, inlinedAt: !647)
!649 = !DILocalVariable(name: "text_len", scope: !640, file: !15, line: 77, type: !16, align: 64)
!650 = !DILocation(line: 78, column: 2, scope: !640)
!651 = !DILocalVariable(name: "times", scope: !640, file: !15, line: 78, type: !16, align: 64)
!652 = !DILocalVariable(name: "current", scope: !640, file: !15, line: 79, type: !64, align: 64)
!653 = !DILocalVariable(name: "i", scope: !640, file: !15, line: 80, type: !16, align: 64)
!654 = !DILocation(line: 80, column: 2, scope: !640)
!655 = !DILocation(line: 265, column: 2, scope: !96, inlinedAt: !656)
!656 = distinct !DILocation(line: 83, column: 7, scope: !640)
!657 = !DILocalVariable(name: "copy_size", scope: !640, file: !15, line: 81, type: !16, align: 64)
!658 = !DILocation(line: 86, column: 3, scope: !640)
!659 = !DILocation(line: 83, column: 7, scope: !640)
!660 = !DILocation(line: 0, scope: !96, inlinedAt: !656)
!661 = !DILocation(line: 267, column: 3, scope: !96, inlinedAt: !656)
!662 = distinct !{!662, !110}
!663 = distinct !{!663, !110}
!664 = !DILocation(line: 84, column: 3, scope: !640)
!665 = !DILocation(line: 85, column: 3, scope: !640)
!666 = !DILocation(line: 89, column: 1, scope: !640)
!667 = !DILocation(line: 0, scope: !211)
!668 = !DILocation(line: 94, column: 2, scope: !211)
!669 = !DILocation(line: 99, column: 4, scope: !211)
!670 = !DILocation(line: 95, column: 3, scope: !211)
!671 = !DILocation(line: 101, column: 2, scope: !211)
!672 = !DILocation(line: 102, column: 2, scope: !211)
!673 = !DILocation(line: 103, column: 1, scope: !211)
!674 = !DILocation(line: 0, scope: !50, inlinedAt: !675)
!675 = distinct !DILocation(line: 96, column: 4, scope: !211)
!676 = !DILocation(line: 14, column: 2, scope: !50, inlinedAt: !675)
!677 = !DILocation(line: 15, column: 8, scope: !50, inlinedAt: !675)
!678 = !DILocation(line: 96, column: 4, scope: !211)
!679 = !DILocation(line: 98, column: 3, scope: !211)
!680 = distinct !DISubprogram(name: "overload", scope: !15, file: !15, line: 105, type: !681, scopeLine: 106, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !37)
!681 = !DISubroutineType(types: !682)
!682 = !{!7, !77, !80}
!683 = !DILocalVariable(name: "str", scope: !680, file: !15, line: 105, type: !77)
!684 = !DILocation(line: 0, scope: !680)
!685 = !DILocalVariable(name: "text", arg: 1, scope: !680, file: !15, line: 105, type: !80)
!686 = !DILocalVariable(name: "str2", scope: !680, file: !15, line: 107, type: !77, align: 64)
!687 = !DILocation(line: 0, scope: !160, inlinedAt: !688)
!688 = distinct !DILocation(line: 107, column: 2, scope: !680)
!689 = !DILocation(line: 274, column: 2, scope: !160, inlinedAt: !688)
!690 = !DILocation(line: 0, scope: !145, inlinedAt: !691)
!691 = distinct !DILocation(line: 108, column: 5, scope: !680)
!692 = !DILocation(line: 113, column: 2, scope: !145, inlinedAt: !691)
!693 = !DILocation(line: 116, column: 2, scope: !145, inlinedAt: !691)
!694 = !DILocation(line: 117, column: 38, scope: !145, inlinedAt: !691)
!695 = !DILocation(line: 117, column: 3, scope: !145, inlinedAt: !691)
!696 = !DILocation(line: 108, column: 5, scope: !680)
