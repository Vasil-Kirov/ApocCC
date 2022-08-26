; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%String_Builder = type { [256 x i8], i64, ptr }
%string = type { ptr, i64 }

@global_var = local_unnamed_addr constant i8 1
@global_var.1 = local_unnamed_addr constant i8 0
@global_var.2 = local_unnamed_addr constant ptr null
@global_var.3 = local_unnamed_addr constant i64 256
@0 = private unnamed_addr constant [8 x i8] c"my text\00", align 1

; Function Attrs: nofree nounwind
define i32 @_apoc_init(ptr nocapture readnone %__apoc_internal_context) local_unnamed_addr #0 !dbg !23 {
entry:
  %String_Builder.i = alloca %String_Builder, align 16
  %to_return.i = alloca %string, align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %String_Builder.i), !dbg !28
  call void @llvm.dbg.value(metadata ptr null, metadata !35, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata ptr @0, metadata !35, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %String_Builder.i, i8 0, i64 272, i1 false) #14, !dbg !36
  call void @llvm.dbg.declare(metadata ptr %String_Builder.i, metadata !37, metadata !DIExpression()) #14, !dbg !36
  call void @llvm.dbg.value(metadata ptr null, metadata !47, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata ptr null, metadata !48, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata ptr %String_Builder.i, metadata !47, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata ptr %String_Builder.i, metadata !48, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 0, metadata !49, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 0, metadata !50, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 0, metadata !49, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 0, metadata !50, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()) #14, !dbg !28
  br label %for.body.i

for.body.i:                                       ; preds = %for.incr.i, %entry
  %indexed_val802.i = phi i8 [ %indexed_val.i, %for.incr.i ], [ 109, %entry ]
  %current.0801.i = phi ptr [ %current.1.i, %for.incr.i ], [ %String_Builder.i, %entry ]
  %times.0800.i = phi i64 [ %times.1.i, %for.incr.i ], [ 0, %entry ]
  %i.0799.i = phi i64 [ %2, %for.incr.i ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata ptr %current.0801.i, metadata !48, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 %times.0800.i, metadata !50, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 %i.0799.i, metadata !52, metadata !DIExpression()) #14, !dbg !28
  %elem_ptr6.i = getelementptr [256 x i8], ptr %current.0801.i, i64 0, i64 %i.0799.i, !dbg !53
  store i8 %indexed_val802.i, ptr %elem_ptr6.i, align 1, !dbg !53
  call void @llvm.dbg.declare(metadata ptr %elem_ptr6.i, metadata !54, metadata !DIExpression()) #14, !dbg !53
  %"struct member ptr8.i" = getelementptr inbounds %String_Builder, ptr %current.0801.i, i64 0, i32 1, !dbg !55
  %selected.i = load i64, ptr %"struct member ptr8.i", align 4, !dbg !55
  %0 = add i64 %selected.i, 1, !dbg !55
  store i64 %0, ptr %"struct member ptr8.i", align 4, !dbg !55
  call void @llvm.dbg.declare(metadata ptr %"struct member ptr8.i", metadata !56, metadata !DIExpression()) #14, !dbg !55
  %1 = icmp eq i64 %i.0799.i, 256, !dbg !57
  br i1 %1, label %if.true.i, label %for.incr.i, !dbg !58

for.incr.i:                                       ; preds = %if.true.i, %for.body.i
  %i.1.i = phi i64 [ 0, %if.true.i ], [ %i.0799.i, %for.body.i ], !dbg !28
  %times.1.i = phi i64 [ %5, %if.true.i ], [ %times.0800.i, %for.body.i ], !dbg !28
  %current.1.i = phi ptr [ %calloc.i.i, %if.true.i ], [ %current.0801.i, %for.body.i ], !dbg !28
  call void @llvm.dbg.value(metadata ptr %current.1.i, metadata !48, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata ptr %current.1.i, metadata !47, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 %times.1.i, metadata !50, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 %times.1.i, metadata !49, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 %i.1.i, metadata !52, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 %i.1.i, metadata !51, metadata !DIExpression()) #14, !dbg !28
  %2 = add i64 %i.1.i, 1, !dbg !58
  call void @llvm.dbg.value(metadata i64 %2, metadata !52, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 %2, metadata !51, metadata !DIExpression()) #14, !dbg !28
  %3 = shl i64 %times.1.i, 8, !dbg !59
  %4 = add i64 %3, %2, !dbg !59
  %elem_ptr.i = getelementptr i8, ptr @0, i64 %4, !dbg !59
  %indexed_val.i = load i8, ptr %elem_ptr.i, align 1, !dbg !59
  %.not.i = icmp eq i8 %indexed_val.i, 0, !dbg !59
  br i1 %.not.i, label %builder_to_string.exit, label %for.body.i, !dbg !59

if.true.i:                                        ; preds = %for.body.i
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()) #14, !dbg !28
  %5 = add i64 %times.0800.i, 1, !dbg !60
  call void @llvm.dbg.value(metadata i64 %5, metadata !49, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 %5, metadata !50, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata i64 272, metadata !61, metadata !DIExpression()) #14, !dbg !66
  %calloc.i.i = tail call dereferenceable_or_null(272) ptr @calloc(i64 1, i64 272) #14, !dbg !68
  call void @llvm.dbg.value(metadata ptr %calloc.i.i, metadata !69, metadata !DIExpression()) #14, !dbg !66
  %"struct member ptr13.i" = getelementptr inbounds %String_Builder, ptr %current.0801.i, i64 0, i32 2, !dbg !70
  store ptr %calloc.i.i, ptr %"struct member ptr13.i", align 8, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %"struct member ptr13.i", metadata !71, metadata !DIExpression()) #14, !dbg !70
  call void @llvm.dbg.value(metadata ptr %calloc.i.i, metadata !47, metadata !DIExpression()) #14, !dbg !28
  call void @llvm.dbg.value(metadata ptr %calloc.i.i, metadata !48, metadata !DIExpression()) #14, !dbg !28
  br label %for.incr.i, !dbg !58

builder_to_string.exit:                           ; preds = %for.incr.i
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %String_Builder.i), !dbg !72
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i64 undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata ptr undef, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata ptr undef, metadata !75, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !74
  call void @llvm.dbg.value(metadata i64 poison, metadata !75, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %String_Builder.i), !dbg !80
  call void @llvm.dbg.value(metadata ptr undef, metadata !85, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #14, !dbg !80
  call void @llvm.dbg.value(metadata i64 undef, metadata !85, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #14, !dbg !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %String_Builder.i, i8 0, i64 16, i1 false) #14, !dbg !86
  call void @llvm.dbg.value(metadata ptr undef, metadata !87, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #14, !dbg !80
  call void @llvm.dbg.value(metadata i64 undef, metadata !87, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #14, !dbg !80
  %6 = call i32 (ptr, ...) @printf(ptr nonnull %String_Builder.i) #14, !dbg !88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %String_Builder.i)
  ret i32 0, !dbg !89
}

; Function Attrs: mustprogress nofree nounwind willreturn
define noalias ptr @mem_alloc(ptr nocapture readnone %__apoc_internal_context, i64 %size) local_unnamed_addr #1 !dbg !62 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !61, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i64 %size, metadata !61, metadata !DIExpression()), !dbg !90
  %calloc = call ptr @calloc(i64 1, i64 %size), !dbg !91
  call void @llvm.dbg.value(metadata ptr null, metadata !69, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !69, metadata !DIExpression()), !dbg !90
  ret ptr %calloc, !dbg !92
}

; Function Attrs: nofree nounwind
define void @builder_to_string(ptr nocapture readnone %__apoc_internal_context, %String_Builder %builder) local_unnamed_addr #0 !dbg !93 {
entry:
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i8 undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 undef, metadata !96, metadata !DIExpression()), !dbg !97
  %builder.fca.2.extract = extractvalue %String_Builder %builder, 2
  call void @llvm.dbg.value(metadata ptr undef, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr null, metadata !98, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !98, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !100, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !101, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !102, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !100, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !101, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !102, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr null, metadata !103, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr null, metadata !104, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr null, metadata !105, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr undef, metadata !103, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr undef, metadata !104, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr undef, metadata !105, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !106, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 0, metadata !106, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !102, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !101, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !100, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !99, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !106, metadata !DIExpression()), !dbg !97
  %.not54 = icmp eq ptr %builder.fca.2.extract, null, !dbg !107
  br i1 %.not54, label %for.aftr18, label %for.body.preheader, !dbg !107

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !107

for.body:                                         ; preds = %for.body.preheader, %for.body
  %selected8 = phi ptr [ %selected.pr, %for.body ], [ %builder.fca.2.extract, %for.body.preheader ], !dbg !108
  call void @llvm.dbg.value(metadata ptr undef, metadata !105, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 undef), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 undef), metadata !100, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 undef), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 undef), metadata !102, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  %selected8.sroa.gep61 = getelementptr inbounds %String_Builder, ptr %selected8, i64 0, i32 2, !dbg !97
  call void @llvm.dbg.value(metadata ptr %selected8, metadata !103, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr %selected8, metadata !104, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr %selected8, metadata !105, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !106, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !97
  %selected.pr = load ptr, ptr %selected8.sroa.gep61, align 8, !dbg !107
  call void @llvm.dbg.value(metadata i64 poison, metadata !102, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !101, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !100, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !99, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !106, metadata !DIExpression()), !dbg !97
  %.not = icmp eq ptr %selected.pr, null, !dbg !107
  br i1 %.not, label %for.aftr18, label %for.body, !dbg !107

for.aftr18:                                       ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata ptr undef, metadata !105, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr undef, metadata !104, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr undef, metadata !103, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !109, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !110, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 poison, metadata !111, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 undef, i64 undef), metadata !99, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 undef, i64 undef), metadata !100, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 undef, i64 undef), metadata !101, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 undef, i64 undef), metadata !102, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !97
  ret void, !dbg !112
}

; Function Attrs: nofree nounwind
define void @init_builder(ptr nocapture readnone %__apoc_internal_context, ptr nocapture readonly %text) local_unnamed_addr #0 !dbg !29 {
entry:
  %String_Builder = alloca %String_Builder, align 16
  call void @llvm.dbg.value(metadata ptr null, metadata !35, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata ptr %text, metadata !35, metadata !DIExpression()), !dbg !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %String_Builder, i8 0, i64 272, i1 false), !dbg !114
  call void @llvm.dbg.declare(metadata ptr %String_Builder, metadata !37, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata ptr null, metadata !47, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata ptr null, metadata !48, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata ptr %String_Builder, metadata !47, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata ptr %String_Builder, metadata !48, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !49, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !50, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !49, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !50, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !113
  %indexed_val797 = load i8, ptr %text, align 1, !dbg !115
  %.not798 = icmp eq i8 %indexed_val797, 0, !dbg !115
  br i1 %.not798, label %for.aftr, label %for.body.preheader, !dbg !115

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !116

for.body:                                         ; preds = %for.body.preheader, %for.incr
  %indexed_val802 = phi i8 [ %indexed_val, %for.incr ], [ %indexed_val797, %for.body.preheader ]
  %current.0801 = phi ptr [ %current.1, %for.incr ], [ %String_Builder, %for.body.preheader ]
  %times.0800 = phi i64 [ %times.1, %for.incr ], [ 0, %for.body.preheader ]
  %i.0799 = phi i64 [ %2, %for.incr ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %current.0801, metadata !48, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %times.0800, metadata !50, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %i.0799, metadata !52, metadata !DIExpression()), !dbg !113
  %elem_ptr6 = getelementptr [256 x i8], ptr %current.0801, i64 0, i64 %i.0799, !dbg !117
  store i8 %indexed_val802, ptr %elem_ptr6, align 1, !dbg !117
  call void @llvm.dbg.declare(metadata ptr %elem_ptr6, metadata !54, metadata !DIExpression()), !dbg !117
  %"struct member ptr8" = getelementptr inbounds %String_Builder, ptr %current.0801, i64 0, i32 1, !dbg !118
  %selected = load i64, ptr %"struct member ptr8", align 4, !dbg !118
  %0 = add i64 %selected, 1, !dbg !118
  store i64 %0, ptr %"struct member ptr8", align 4, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %"struct member ptr8", metadata !56, metadata !DIExpression()), !dbg !118
  %1 = icmp eq i64 %i.0799, 256, !dbg !119
  br i1 %1, label %if.true, label %for.incr, !dbg !116

for.aftr:                                         ; preds = %for.incr, %entry
  ret void, !dbg !120

for.incr:                                         ; preds = %for.body, %if.true
  %i.1 = phi i64 [ 0, %if.true ], [ %i.0799, %for.body ], !dbg !113
  %times.1 = phi i64 [ %5, %if.true ], [ %times.0800, %for.body ], !dbg !113
  %current.1 = phi ptr [ %calloc.i, %if.true ], [ %current.0801, %for.body ], !dbg !113
  call void @llvm.dbg.value(metadata ptr %current.1, metadata !48, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata ptr %current.1, metadata !47, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %times.1, metadata !50, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %times.1, metadata !49, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !52, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !51, metadata !DIExpression()), !dbg !113
  %2 = add i64 %i.1, 1, !dbg !116
  call void @llvm.dbg.value(metadata i64 %2, metadata !52, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %2, metadata !51, metadata !DIExpression()), !dbg !113
  %3 = shl i64 %times.1, 8, !dbg !115
  %4 = add i64 %3, %2, !dbg !115
  %elem_ptr = getelementptr i8, ptr %text, i64 %4, !dbg !115
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !115
  %.not = icmp eq i8 %indexed_val, 0, !dbg !115
  br i1 %.not, label %for.aftr, label %for.body, !dbg !115

if.true:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !51, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !113
  %5 = add i64 %times.0800, 1, !dbg !121
  call void @llvm.dbg.value(metadata i64 %5, metadata !49, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 %5, metadata !50, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i64 272, metadata !61, metadata !DIExpression()) #14, !dbg !122
  %calloc.i = tail call dereferenceable_or_null(272) ptr @calloc(i64 1, i64 272) #14, !dbg !124
  call void @llvm.dbg.value(metadata ptr %calloc.i, metadata !69, metadata !DIExpression()) #14, !dbg !122
  %"struct member ptr13" = getelementptr inbounds %String_Builder, ptr %current.0801, i64 0, i32 2, !dbg !125
  store ptr %calloc.i, ptr %"struct member ptr13", align 8, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %"struct member ptr13", metadata !71, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata ptr %calloc.i, metadata !47, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata ptr %calloc.i, metadata !48, metadata !DIExpression()), !dbg !113
  br label %for.incr, !dbg !116
}

; Function Attrs: nofree norecurse nosync nounwind readonly
define i8 @compare(ptr nocapture readnone %__apoc_internal_context, %string %str1, %string %str2) local_unnamed_addr #2 !dbg !126 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !130
  call void @llvm.dbg.value(metadata i64 0, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !130
  %str1.fca.0.extract = extractvalue %string %str1, 0
  call void @llvm.dbg.value(metadata ptr %str1.fca.0.extract, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !130
  %str1.fca.1.extract = extractvalue %string %str1, 1
  call void @llvm.dbg.value(metadata i64 %str1.fca.1.extract, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !130
  call void @llvm.dbg.value(metadata ptr null, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !130
  call void @llvm.dbg.value(metadata i64 0, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !130
  %str2.fca.0.extract = extractvalue %string %str2, 0
  call void @llvm.dbg.value(metadata ptr %str2.fca.0.extract, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !130
  %str2.fca.1.extract = extractvalue %string %str2, 1
  call void @llvm.dbg.value(metadata i64 %str2.fca.1.extract, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !130
  %.not = icmp eq i64 %str1.fca.1.extract, %str2.fca.1.extract, !dbg !132
  br i1 %.not, label %for.cond.preheader, label %common.ret, !dbg !133

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !134, metadata !DIExpression()), !dbg !130
  %0 = icmp sgt i64 %str1.fca.1.extract, 0, !dbg !133
  br i1 %0, label %for.body.preheader, label %common.ret, !dbg !133

for.body.preheader:                               ; preds = %for.cond.preheader
  br label %for.body, !dbg !135

common.ret:                                       ; preds = %for.cond, %for.body, %for.cond.preheader, %entry
  %common.ret.op = phi i8 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i8 %common.ret.op, !dbg !130

for.cond:                                         ; preds = %for.body
  %1 = add nuw nsw i64 %i.019, 1, !dbg !135
  call void @llvm.dbg.value(metadata i64 %i.019, metadata !134, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !130
  %2 = icmp slt i64 %1, %str1.fca.1.extract, !dbg !133
  br i1 %2, label %for.body, label %common.ret, !dbg !133

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.019 = phi i64 [ %1, %for.cond ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.019, metadata !134, metadata !DIExpression()), !dbg !130
  %elem_ptr = getelementptr i8, ptr %str1.fca.0.extract, i64 %i.019, !dbg !136
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !136
  %elem_ptr11 = getelementptr i8, ptr %str2.fca.0.extract, i64 %i.019, !dbg !136
  %indexed_val12 = load i8, ptr %elem_ptr11, align 1, !dbg !136
  %.not18 = icmp eq i8 %indexed_val, %indexed_val12, !dbg !136
  call void @llvm.dbg.value(metadata i64 %i.019, metadata !134, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !130
  br i1 %.not18, label %for.cond, label %common.ret, !dbg !135
}

; Function Attrs: nofree nounwind
define void @to_string(ptr nocapture readnone %__apoc_internal_context, ptr nocapture readonly %text) local_unnamed_addr #0 !dbg !137 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata ptr %text, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata ptr null, metadata !140, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata ptr %text, metadata !140, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !144
  br label %for.cond.i, !dbg !148

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %lsr.iv = phi ptr [ %uglygep, %for.cond.i ], [ %text, %entry ], !dbg !144
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !147, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !144
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !146, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !144
  %indexed_val.i = load i8, ptr %lsr.iv, align 1, !dbg !148
  %.not.i = icmp eq i8 %indexed_val.i, 0, !dbg !148
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !146, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !144
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !147, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !144
  %uglygep = getelementptr i8, ptr %lsr.iv, i64 1, !dbg !148
  br i1 %.not.i, label %copy.exit, label %for.cond.i, !dbg !148

copy.exit:                                        ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !149, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i64 undef, metadata !149, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata ptr null, metadata !150, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata ptr undef, metadata !150, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata ptr null, metadata !151, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata ptr undef, metadata !151, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata ptr null, metadata !157, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata ptr %text, metadata !157, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i64 0, metadata !158, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i64 undef, metadata !158, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata ptr undef, metadata !159, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata ptr null, metadata !160, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata ptr %text, metadata !160, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata ptr poison, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata ptr undef, metadata !164, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !139
  call void @llvm.dbg.value(metadata i64 undef, metadata !164, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !139
  ret void, !dbg !165
}

; Function Attrs: nofree nounwind
define void @terminate_string(ptr nocapture readnone %__apoc_internal_context, %string %str) local_unnamed_addr #0 !dbg !166 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !168
  call void @llvm.dbg.value(metadata i64 0, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !168
  call void @llvm.dbg.value(metadata ptr undef, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !168
  call void @llvm.dbg.value(metadata i64 undef, metadata !167, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !168
  call void @llvm.dbg.value(metadata ptr null, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !168
  call void @llvm.dbg.value(metadata i64 0, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !168
  call void @llvm.dbg.value(metadata ptr undef, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !168
  call void @llvm.dbg.value(metadata i64 undef, metadata !169, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !168
  call void @llvm.dbg.declare(metadata ptr undef, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata ptr undef, metadata !169, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !168
  call void @llvm.dbg.declare(metadata ptr undef, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata ptr null, metadata !151, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr undef, metadata !151, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr null, metadata !157, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 0, metadata !158, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 undef, metadata !158, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr undef, metadata !159, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr null, metadata !160, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata ptr undef, metadata !160, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata ptr poison, metadata !162, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata ptr poison, metadata !177, metadata !DIExpression()), !dbg !178
  ret void, !dbg !179
}

; Function Attrs: nofree nounwind
define void @print(ptr nocapture readnone %__apoc_internal_context, %string %str) local_unnamed_addr #0 !dbg !81 {
entry:
  %to_return = alloca %string, align 16
  call void @llvm.dbg.value(metadata ptr null, metadata !85, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !180
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !180
  call void @llvm.dbg.value(metadata ptr undef, metadata !85, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !180
  call void @llvm.dbg.value(metadata i64 undef, metadata !85, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %to_return, i8 0, i64 16, i1 false), !dbg !181
  call void @llvm.dbg.value(metadata ptr null, metadata !87, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !180
  call void @llvm.dbg.value(metadata i64 0, metadata !87, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !180
  call void @llvm.dbg.value(metadata ptr %to_return, metadata !87, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !180
  call void @llvm.dbg.value(metadata i64 undef, metadata !87, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !180
  %0 = call i32 (ptr, ...) @printf(ptr nonnull %to_return), !dbg !182
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind
define void @copy(ptr nocapture readnone %__apoc_internal_context, ptr nocapture writeonly %dst, ptr nocapture readonly %src, i64 %size) local_unnamed_addr #3 !dbg !152 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !151, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr %dst, metadata !151, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr null, metadata !157, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr %src, metadata !157, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 0, metadata !158, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %size, metadata !158, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr %dst, metadata !159, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr null, metadata !160, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata ptr %src, metadata !160, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !183
  %0 = icmp sgt i64 %size, 0, !dbg !184
  br i1 %0, label %for.body.preheader, label %for.aftr, !dbg !184

for.body.preheader:                               ; preds = %entry
  %dst18 = ptrtoint ptr %dst to i64, !dbg !184
  %src19 = ptrtoint ptr %src to i64, !dbg !184
  %min.iters.check = icmp ult i64 %size, 4, !dbg !184
  %1 = sub i64 %dst18, %src19, !dbg !184
  %diff.check = icmp ult i64 %1, 4, !dbg !184
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check, !dbg !184
  br i1 %or.cond, label %for.body.preheader20, label %vector.ph, !dbg !184

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %size, -4, !dbg !184
  br label %vector.body, !dbg !184

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !185
  %2 = getelementptr i8, ptr %src, i64 %index, !dbg !185
  %wide.load = load <4 x i8>, ptr %2, align 1, !dbg !185
  %3 = getelementptr i8, ptr %dst, i64 %index, !dbg !185
  store <4 x i8> %wide.load, ptr %3, align 1, !dbg !185
  %index.next = add nuw i64 %index, 4, !dbg !185
  %4 = icmp eq i64 %n.vec, %index.next, !dbg !185
  br i1 %4, label %middle.block, label %vector.body, !dbg !185, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %size, !dbg !184
  br i1 %cmp.n, label %for.aftr, label %for.body.preheader20, !dbg !184

for.body.preheader20:                             ; preds = %for.body.preheader, %middle.block
  %i.017.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body, !dbg !184

for.body:                                         ; preds = %for.body.preheader20, %for.body
  %i.017 = phi i64 [ %5, %for.body ], [ %i.017.ph, %for.body.preheader20 ]
  call void @llvm.dbg.value(metadata i64 %i.017, metadata !161, metadata !DIExpression()), !dbg !183
  %elem_ptr = getelementptr i8, ptr %src, i64 %i.017, !dbg !185
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !185
  %elem_ptr6 = getelementptr i8, ptr %dst, i64 %i.017, !dbg !185
  store i8 %indexed_val, ptr %elem_ptr6, align 1, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %elem_ptr6, metadata !162, metadata !DIExpression()), !dbg !185
  %5 = add nuw nsw i64 %i.017, 1, !dbg !185
  call void @llvm.dbg.value(metadata i64 %5, metadata !161, metadata !DIExpression()), !dbg !183
  %6 = icmp slt i64 %5, %size, !dbg !184
  br i1 %6, label %for.body, label %for.aftr, !dbg !184, !llvm.loop !188

for.aftr:                                         ; preds = %for.body, %middle.block, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %size, %middle.block ], [ %size, %for.body ], !dbg !183
  %elem_ptr8 = getelementptr i8, ptr %src, i64 %i.0.lcssa, !dbg !185
  %indexed_val9 = load i8, ptr %elem_ptr8, align 1, !dbg !185
  %elem_ptr11 = getelementptr i8, ptr %dst, i64 %i.0.lcssa, !dbg !185
  store i8 %indexed_val9, ptr %elem_ptr11, align 1, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %elem_ptr11, metadata !162, metadata !DIExpression()), !dbg !185
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly
define i64 @len(ptr nocapture readnone %__apoc_internal_context, ptr nocapture readonly %text) local_unnamed_addr #4 !dbg !141 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !140, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata ptr %text, metadata !140, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !189
  br label %for.cond, !dbg !190

for.cond:                                         ; preds = %for.cond, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond ], [ -1, %entry ], !dbg !189
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !147, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !189
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !146, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !189
  %uglygep = getelementptr i8, ptr %text, i64 %lsr.iv, !dbg !190
  %uglygep5 = getelementptr i8, ptr %uglygep, i64 1, !dbg !190
  %indexed_val = load i8, ptr %uglygep5, align 1, !dbg !190
  %.not = icmp eq i8 %indexed_val, 0, !dbg !190
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !146, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !189
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !147, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !189
  %lsr.iv.next = add i64 %lsr.iv, 1, !dbg !190
  br i1 %.not, label %for.aftr, label %for.cond, !dbg !190

for.aftr:                                         ; preds = %for.cond
  ret i64 %lsr.iv.next, !dbg !191
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind readonly willreturn
define i8 @"overload[]"(ptr nocapture readnone %__apoc_internal_context, %string %str, i64 %index) local_unnamed_addr #5 !dbg !192 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !195, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !196
  call void @llvm.dbg.value(metadata i64 0, metadata !195, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !196
  %str.fca.0.extract = extractvalue %string %str, 0
  call void @llvm.dbg.value(metadata ptr %str.fca.0.extract, metadata !195, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !196
  call void @llvm.dbg.value(metadata i64 undef, metadata !195, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !196
  call void @llvm.dbg.value(metadata i64 0, metadata !197, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i64 %index, metadata !197, metadata !DIExpression()), !dbg !196
  %elem_ptr = getelementptr i8, ptr %str.fca.0.extract, i64 %index, !dbg !198
  %indexed_val = load i8, ptr %elem_ptr, align 1, !dbg !198
  ret i8 %indexed_val, !dbg !198
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: alwaysinline nofree nounwind
define void @"overload+"(ptr nocapture readnone %__apoc_internal_context, %string %str, ptr nocapture readonly %text) local_unnamed_addr #8 !dbg !199 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !203
  call void @llvm.dbg.value(metadata i64 0, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !203
  call void @llvm.dbg.value(metadata ptr undef, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !203
  call void @llvm.dbg.value(metadata i64 undef, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !203
  call void @llvm.dbg.value(metadata ptr null, metadata !204, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr %text, metadata !204, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata ptr null, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !203
  call void @llvm.dbg.value(metadata i64 0, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !203
  call void @llvm.dbg.value(metadata ptr undef, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !203
  call void @llvm.dbg.value(metadata ptr null, metadata !140, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %text, metadata !140, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !206
  br label %for.cond.i, !dbg !208

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %lsr.iv = phi ptr [ %uglygep, %for.cond.i ], [ %text, %entry ], !dbg !206
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !147, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !206
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !146, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !206
  %indexed_val.i = load i8, ptr %lsr.iv, align 1, !dbg !208
  %.not.i = icmp eq i8 %indexed_val.i, 0, !dbg !208
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !146, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !206
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !147, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !206
  %uglygep = getelementptr i8, ptr %lsr.iv, i64 1, !dbg !208
  br i1 %.not.i, label %copy.exit43, label %for.cond.i, !dbg !208

copy.exit43:                                      ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !209, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 undef, metadata !209, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef), metadata !205, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !203
  call void @llvm.dbg.declare(metadata ptr undef, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata ptr undef, metadata !205, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !203
  call void @llvm.dbg.declare(metadata ptr undef, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata ptr null, metadata !151, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata ptr undef, metadata !151, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata ptr null, metadata !157, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata ptr undef, metadata !157, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i64 0, metadata !158, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i64 undef, metadata !158, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata ptr null, metadata !159, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata ptr undef, metadata !159, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata ptr null, metadata !160, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata ptr undef, metadata !160, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata ptr poison, metadata !162, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata ptr poison, metadata !151, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata ptr %text, metadata !157, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i64 undef, metadata !158, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata ptr poison, metadata !159, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata ptr %text, metadata !160, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata ptr poison, metadata !162, metadata !DIExpression()), !dbg !219
  ret void, !dbg !220
}

; Function Attrs: alwaysinline argmemonly nofree norecurse nosync nounwind readonly
define void @"overload[x]="(ptr nocapture readnone %__apoc_internal_context, ptr nocapture readonly %str, ptr nocapture readonly %text) local_unnamed_addr #9 !dbg !221 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %str, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr null, metadata !226, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %text, metadata !226, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr null, metadata !140, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata ptr %text, metadata !140, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !227
  br label %for.cond.i, !dbg !229

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %lsr.iv = phi ptr [ %uglygep, %for.cond.i ], [ %text, %entry ], !dbg !227
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !147, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !227
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !146, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !227
  %indexed_val.i = load i8, ptr %lsr.iv, align 1, !dbg !229
  %.not.i = icmp eq i8 %indexed_val.i, 0, !dbg !229
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !146, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !227
  call void @llvm.dbg.value(metadata !DIArgList(ptr %lsr.iv, ptr %text), metadata !147, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !227
  %uglygep = getelementptr i8, ptr %lsr.iv, i64 1, !dbg !229
  br i1 %.not.i, label %len.exit, label %for.cond.i, !dbg !229

len.exit:                                         ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 undef, metadata !230, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !231, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef), metadata !231, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_div, DW_OP_stack_value)), !dbg !225
  call void @llvm.dbg.value(metadata ptr null, metadata !232, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %str, metadata !232, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !233, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !233, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 undef, metadata !234, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 undef, metadata !233, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 undef, metadata !233, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !225
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind readonly
define i8 @overload(ptr nocapture readnone %__apoc_internal_context, %string %str, ptr %text) local_unnamed_addr #10 !dbg !235 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !238, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !239
  call void @llvm.dbg.value(metadata i64 0, metadata !238, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !239
  call void @llvm.dbg.value(metadata ptr undef, metadata !238, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !239
  call void @llvm.dbg.value(metadata i64 undef, metadata !238, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !239
  call void @llvm.dbg.value(metadata ptr null, metadata !240, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %text, metadata !240, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr null, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !239
  call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !239
  call void @llvm.dbg.value(metadata ptr %text, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !239
  call void @llvm.dbg.value(metadata ptr null, metadata !140, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata ptr %text, metadata !140, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 0, metadata !146, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i64 0, metadata !147, metadata !DIExpression()), !dbg !242
  br label %for.cond.i, !dbg !244

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond.i ], [ -1, %entry ], !dbg !242
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !147, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !242
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !146, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !242
  %uglygep = getelementptr i8, ptr %text, i64 %lsr.iv, !dbg !244
  %uglygep13 = getelementptr i8, ptr %uglygep, i64 1, !dbg !244
  %indexed_val.i = load i8, ptr %uglygep13, align 1, !dbg !244
  %.not.i = icmp eq i8 %indexed_val.i, 0, !dbg !244
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !146, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !242
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !147, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !242
  %lsr.iv.next = add i64 %lsr.iv, 1, !dbg !244
  br i1 %.not.i, label %len.exit, label %for.cond.i, !dbg !244

len.exit:                                         ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !239
  call void @llvm.dbg.value(metadata ptr null, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !245
  call void @llvm.dbg.value(metadata i64 0, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !245
  %str1.fca.0.extract.i = extractvalue %string %str, 0
  call void @llvm.dbg.value(metadata ptr %str1.fca.0.extract.i, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !245
  %str1.fca.1.extract.i = extractvalue %string %str, 1
  call void @llvm.dbg.value(metadata i64 %str1.fca.1.extract.i, metadata !129, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !245
  call void @llvm.dbg.value(metadata ptr null, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !245
  call void @llvm.dbg.value(metadata i64 0, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !245
  call void @llvm.dbg.value(metadata ptr %text, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !245
  call void @llvm.dbg.value(metadata i64 undef, metadata !131, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !245
  %.not.i9 = icmp eq i64 %str1.fca.1.extract.i, %lsr.iv.next, !dbg !247
  br i1 %.not.i9, label %for.cond.preheader.i, label %compare.exit, !dbg !248

for.cond.preheader.i:                             ; preds = %len.exit
  call void @llvm.dbg.value(metadata i64 0, metadata !134, metadata !DIExpression()), !dbg !245
  %0 = icmp sgt i64 %lsr.iv.next, 0, !dbg !248
  br i1 %0, label %for.body.i.preheader, label %compare.exit, !dbg !248

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !249

for.cond.i10:                                     ; preds = %for.body.i
  %1 = add nuw nsw i64 %i.019.i, 1, !dbg !249
  call void @llvm.dbg.value(metadata i64 %i.019.i, metadata !134, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !245
  %2 = icmp slt i64 %1, %lsr.iv.next, !dbg !248
  br i1 %2, label %for.body.i, label %compare.exit, !dbg !248

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i10
  %i.019.i = phi i64 [ %1, %for.cond.i10 ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.019.i, metadata !134, metadata !DIExpression()), !dbg !245
  %elem_ptr.i11 = getelementptr i8, ptr %str1.fca.0.extract.i, i64 %i.019.i, !dbg !250
  %indexed_val.i12 = load i8, ptr %elem_ptr.i11, align 1, !dbg !250
  %elem_ptr11.i = getelementptr i8, ptr %text, i64 %i.019.i, !dbg !250
  %indexed_val12.i = load i8, ptr %elem_ptr11.i, align 1, !dbg !250
  %.not18.i = icmp eq i8 %indexed_val.i12, %indexed_val12.i, !dbg !250
  call void @llvm.dbg.value(metadata i64 %i.019.i, metadata !134, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !245
  br i1 %.not18.i, label %for.cond.i10, label %compare.exit, !dbg !249

compare.exit:                                     ; preds = %for.cond.i10, %for.body.i, %len.exit, %for.cond.preheader.i
  %common.ret.op.i = phi i8 [ 0, %len.exit ], [ 1, %for.cond.preheader.i ], [ 0, %for.body.i ], [ 1, %for.cond.i10 ]
  ret i8 %common.ret.op.i, !dbg !251
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress nofree nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind readonly }
attributes #3 = { argmemonly nofree norecurse nosync nounwind }
attributes #4 = { argmemonly nofree norecurse nosync nounwind readonly }
attributes #5 = { alwaysinline mustprogress nofree norecurse nosync nounwind readonly willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { alwaysinline nofree nounwind }
attributes #9 = { alwaysinline argmemonly nofree norecurse nosync nounwind readonly }
attributes #10 = { alwaysinline nofree norecurse nosync nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { inaccessiblememonly nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) "alloc-family"="malloc" }
attributes #13 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!0, !2, !4, !6}
!llvm.module.flags = !{!21, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apoc Compiler", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "Test.apoc", directory: "W:\\Apocalypse")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apoc Compiler", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "Basic.apoc", directory: "W:\\Apocalypse\\Standard")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Apoc Compiler", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!5 = !DIFile(filename: "String.apoc", directory: "W:\\Apocalypse\\Standard")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Apoc Compiler", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !8)
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
!23 = distinct !DISubprogram(name: "_apoc_init", scope: !1, file: !1, line: 4, type: !24, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!27 = !{}
!28 = !DILocation(line: 0, scope: !29, inlinedAt: !34)
!29 = distinct !DISubprogram(name: "init_builder", scope: !5, file: !5, line: 40, type: !30, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!30 = !DISubroutineType(types: !31)
!31 = !{!17, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!34 = distinct !DILocation(line: 7, column: 2, scope: !23)
!35 = !DILocalVariable(name: "text", scope: !29, file: !5, line: 40, type: !32)
!36 = !DILocation(line: 42, column: 2, scope: !29, inlinedAt: !34)
!37 = !DILocalVariable(name: "out", scope: !29, file: !5, line: 42, type: !38, align: 128)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "String_Builder", scope: !5, file: !5, line: 10, size: 2176, align: 2048, elements: !39)
!39 = !{!40, !44, !45}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5, file: !5, line: 12, baseType: !41, size: 2048, align: 128)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, align: 8, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 256, lowerBound: 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5, file: !5, line: 13, baseType: !20, size: 64, align: 64, offset: 2048)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !5, line: 14, baseType: !46, size: 64, align: 64, offset: 2112)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!47 = !DILocalVariable(name: "current", scope: !29, file: !5, line: 52, type: !46, align: 64)
!48 = !DILocalVariable(name: "current", scope: !29, file: !5, line: 43, type: !46, align: 64)
!49 = !DILocalVariable(name: "times", scope: !29, file: !5, line: 50, type: !20, align: 64)
!50 = !DILocalVariable(name: "times", scope: !29, file: !5, line: 44, type: !20, align: 64)
!51 = !DILocalVariable(name: "i", scope: !29, file: !5, line: 49, type: !20, align: 64)
!52 = !DILocalVariable(name: "i", scope: !29, file: !5, line: 45, type: !20, align: 64)
!53 = !DILocation(line: 46, column: 3, scope: !29, inlinedAt: !34)
!54 = !DILocalVariable(scope: !29, file: !5, line: 46, type: !33, align: 8)
!55 = !DILocation(line: 47, column: 3, scope: !29, inlinedAt: !34)
!56 = !DILocalVariable(scope: !29, file: !5, line: 47, type: !20, align: 64)
!57 = !DILocation(line: 48, column: 3, scope: !29, inlinedAt: !34)
!58 = !DILocation(line: 53, column: 3, scope: !29, inlinedAt: !34)
!59 = !DILocation(line: 45, column: 2, scope: !29, inlinedAt: !34)
!60 = !DILocation(line: 50, column: 4, scope: !29, inlinedAt: !34)
!61 = !DILocalVariable(name: "size", scope: !62, file: !3, line: 66, type: !65)
!62 = distinct !DISubprogram(name: "mem_alloc", scope: !3, file: !3, line: 66, type: !63, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!63 = !DISubroutineType(types: !64)
!64 = !{!16, !65}
!65 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!66 = !DILocation(line: 0, scope: !62, inlinedAt: !67)
!67 = distinct !DILocation(line: 51, column: 4, scope: !29, inlinedAt: !34)
!68 = !DILocation(line: 68, column: 2, scope: !62, inlinedAt: !67)
!69 = !DILocalVariable(name: "result", scope: !62, file: !3, line: 68, type: !16, align: 64)
!70 = !DILocation(line: 51, column: 4, scope: !29, inlinedAt: !34)
!71 = !DILocalVariable(scope: !29, file: !5, line: 51, type: !46, align: 64)
!72 = !DILocation(line: 55, column: 5, scope: !29, inlinedAt: !34)
!73 = !DILocalVariable(name: "builder", scope: !23, file: !1, line: 7, type: !38, align: 128)
!74 = !DILocation(line: 0, scope: !23)
!75 = !DILocalVariable(name: "my_str", scope: !23, file: !1, line: 9, type: !76, align: 128)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", scope: !5, file: !5, line: 4, size: 128, align: 64, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !5, file: !5, line: 6, baseType: !32, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5, file: !5, line: 7, baseType: !20, size: 64, align: 64, offset: 64)
!80 = !DILocation(line: 0, scope: !81, inlinedAt: !84)
!81 = distinct !DISubprogram(name: "print", scope: !5, file: !5, line: 123, type: !82, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!82 = !DISubroutineType(types: !83)
!83 = !{!17, !76}
!84 = distinct !DILocation(line: 10, column: 7, scope: !23)
!85 = !DILocalVariable(name: "str", scope: !81, file: !5, line: 123, type: !76)
!86 = !DILocation(line: 125, column: 2, scope: !81, inlinedAt: !84)
!87 = !DILocalVariable(name: "to_print", scope: !81, file: !5, line: 125, type: !76, align: 128)
!88 = !DILocation(line: 126, column: 8, scope: !81, inlinedAt: !84)
!89 = !DILocation(line: 11, column: 5, scope: !23)
!90 = !DILocation(line: 0, scope: !62)
!91 = !DILocation(line: 68, column: 2, scope: !62)
!92 = !DILocation(line: 70, column: 5, scope: !62)
!93 = distinct !DISubprogram(name: "builder_to_string", scope: !5, file: !5, line: 17, type: !94, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!94 = !DISubroutineType(types: !95)
!95 = !{!17, !38}
!96 = !DILocalVariable(name: "builder", scope: !93, file: !5, line: 17, type: !38)
!97 = !DILocation(line: 0, scope: !93)
!98 = !DILocalVariable(name: "out", scope: !93, file: !5, line: 19, type: !76, align: 128)
!99 = !DILocalVariable(name: "out_len", scope: !93, file: !5, line: 36, type: !20, align: 64)
!100 = !DILocalVariable(name: "out_len", scope: !93, file: !5, line: 26, type: !20, align: 64)
!101 = !DILocalVariable(name: "out_len", scope: !93, file: !5, line: 23, type: !20, align: 64)
!102 = !DILocalVariable(name: "out_len", scope: !93, file: !5, line: 20, type: !20, align: 64)
!103 = !DILocalVariable(name: "current", scope: !93, file: !5, line: 33, type: !46, align: 64)
!104 = !DILocalVariable(name: "current", scope: !93, file: !5, line: 24, type: !46, align: 64)
!105 = !DILocalVariable(name: "current", scope: !93, file: !5, line: 21, type: !46, align: 64)
!106 = !DILocalVariable(name: "i", scope: !93, file: !5, line: 22, type: !20, align: 64)
!107 = !DILocation(line: 22, column: 2, scope: !93)
!108 = !DILocation(line: 24, column: 3, scope: !93)
!109 = !DILocalVariable(name: "times", scope: !93, file: !5, line: 30, type: !20, align: 64)
!110 = !DILocalVariable(name: "times", scope: !93, file: !5, line: 34, type: !20, align: 64)
!111 = !DILocalVariable(name: "i", scope: !93, file: !5, line: 31, type: !20, align: 64)
!112 = !DILocation(line: 37, column: 5, scope: !93)
!113 = !DILocation(line: 0, scope: !29)
!114 = !DILocation(line: 42, column: 2, scope: !29)
!115 = !DILocation(line: 45, column: 2, scope: !29)
!116 = !DILocation(line: 53, column: 3, scope: !29)
!117 = !DILocation(line: 46, column: 3, scope: !29)
!118 = !DILocation(line: 47, column: 3, scope: !29)
!119 = !DILocation(line: 48, column: 3, scope: !29)
!120 = !DILocation(line: 55, column: 5, scope: !29)
!121 = !DILocation(line: 50, column: 4, scope: !29)
!122 = !DILocation(line: 0, scope: !62, inlinedAt: !123)
!123 = distinct !DILocation(line: 51, column: 4, scope: !29)
!124 = !DILocation(line: 68, column: 2, scope: !62, inlinedAt: !123)
!125 = !DILocation(line: 51, column: 4, scope: !29)
!126 = distinct !DISubprogram(name: "compare", scope: !5, file: !5, line: 94, type: !127, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!127 = !DISubroutineType(types: !128)
!128 = !{!11, !76, !76}
!129 = !DILocalVariable(name: "str1", scope: !126, file: !5, line: 94, type: !76)
!130 = !DILocation(line: 0, scope: !126)
!131 = !DILocalVariable(name: "str2", arg: 1, scope: !126, file: !5, line: 94, type: !76)
!132 = !DILocation(line: 96, column: 2, scope: !126)
!133 = !DILocation(line: 99, column: 2, scope: !126)
!134 = !DILocalVariable(name: "i", scope: !126, file: !5, line: 99, type: !20, align: 64)
!135 = !DILocation(line: 100, column: 38, scope: !126)
!136 = !DILocation(line: 100, column: 3, scope: !126)
!137 = distinct !DISubprogram(name: "to_string", scope: !5, file: !5, line: 104, type: !30, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!138 = !DILocalVariable(name: "text", scope: !137, file: !5, line: 104, type: !32)
!139 = !DILocation(line: 0, scope: !137)
!140 = !DILocalVariable(name: "text", scope: !141, file: !5, line: 137, type: !32)
!141 = distinct !DISubprogram(name: "len", scope: !5, file: !5, line: 137, type: !142, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!142 = !DISubroutineType(types: !143)
!143 = !{!20, !32}
!144 = !DILocation(line: 0, scope: !141, inlinedAt: !145)
!145 = distinct !DILocation(line: 106, column: 2, scope: !137)
!146 = !DILocalVariable(name: "result", scope: !141, file: !5, line: 140, type: !20, align: 64)
!147 = !DILocalVariable(name: "result", scope: !141, file: !5, line: 139, type: !20, align: 64)
!148 = !DILocation(line: 140, column: 2, scope: !141, inlinedAt: !145)
!149 = !DILocalVariable(name: "text_len", scope: !137, file: !5, line: 106, type: !20, align: 64)
!150 = !DILocalVariable(name: "allocated", scope: !137, file: !5, line: 107, type: !16, align: 64)
!151 = !DILocalVariable(name: "dst", scope: !152, file: !5, line: 129, type: !16)
!152 = distinct !DISubprogram(name: "copy", scope: !5, file: !5, line: 129, type: !153, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!153 = !DISubroutineType(types: !154)
!154 = !{!17, !16, !16, !65}
!155 = !DILocation(line: 0, scope: !152, inlinedAt: !156)
!156 = distinct !DILocation(line: 108, column: 6, scope: !137)
!157 = !DILocalVariable(name: "src", arg: 1, scope: !152, file: !5, line: 129, type: !16)
!158 = !DILocalVariable(name: "size", arg: 2, scope: !152, file: !5, line: 129, type: !65)
!159 = !DILocalVariable(name: "a0", scope: !152, file: !5, line: 131, type: !32, align: 64)
!160 = !DILocalVariable(name: "a1", scope: !152, file: !5, line: 132, type: !32, align: 64)
!161 = !DILocalVariable(name: "i", scope: !152, file: !5, line: 133, type: !20, align: 64)
!162 = !DILocalVariable(scope: !152, file: !5, line: 134, type: !33, align: 8)
!163 = !DILocation(line: 134, column: 3, scope: !152, inlinedAt: !156)
!164 = !DILocalVariable(name: "str", scope: !137, file: !5, line: 109, type: !76, align: 128)
!165 = !DILocation(line: 110, column: 5, scope: !137)
!166 = distinct !DISubprogram(name: "terminate_string", scope: !5, file: !5, line: 113, type: !82, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!167 = !DILocalVariable(name: "str", scope: !166, file: !5, line: 113, type: !76)
!168 = !DILocation(line: 0, scope: !166)
!169 = !DILocalVariable(name: "out", scope: !166, file: !5, line: 115, type: !76, align: 128)
!170 = !DILocalVariable(scope: !166, file: !5, line: 116, type: !20, align: 64)
!171 = !DILocation(line: 116, column: 2, scope: !166)
!172 = !DILocalVariable(scope: !166, file: !5, line: 117, type: !32, align: 64)
!173 = !DILocation(line: 117, column: 2, scope: !166)
!174 = !DILocation(line: 0, scope: !152, inlinedAt: !175)
!175 = distinct !DILocation(line: 118, column: 6, scope: !166)
!176 = !DILocation(line: 134, column: 3, scope: !152, inlinedAt: !175)
!177 = !DILocalVariable(scope: !166, file: !5, line: 119, type: !33, align: 8)
!178 = !DILocation(line: 119, column: 2, scope: !166)
!179 = !DILocation(line: 120, column: 5, scope: !166)
!180 = !DILocation(line: 0, scope: !81)
!181 = !DILocation(line: 125, column: 2, scope: !81)
!182 = !DILocation(line: 126, column: 8, scope: !81)
!183 = !DILocation(line: 0, scope: !152)
!184 = !DILocation(line: 133, column: 2, scope: !152)
!185 = !DILocation(line: 134, column: 3, scope: !152)
!186 = distinct !{!186, !187}
!187 = !{!"llvm.loop.isvectorized", i32 1}
!188 = distinct !{!188, !187}
!189 = !DILocation(line: 0, scope: !141)
!190 = !DILocation(line: 140, column: 2, scope: !141)
!191 = !DILocation(line: 141, column: 5, scope: !141)
!192 = distinct !DISubprogram(name: "overload[]", scope: !5, file: !5, line: 58, type: !193, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!193 = !DISubroutineType(types: !194)
!194 = !{!33, !76, !65}
!195 = !DILocalVariable(name: "str", scope: !192, file: !5, line: 58, type: !76)
!196 = !DILocation(line: 0, scope: !192)
!197 = !DILocalVariable(name: "index", arg: 1, scope: !192, file: !5, line: 58, type: !65)
!198 = !DILocation(line: 60, column: 5, scope: !192)
!199 = distinct !DISubprogram(name: "overload+", scope: !5, file: !5, line: 63, type: !200, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!200 = !DISubroutineType(types: !201)
!201 = !{!17, !76, !32}
!202 = !DILocalVariable(name: "str", scope: !199, file: !5, line: 63, type: !76)
!203 = !DILocation(line: 0, scope: !199)
!204 = !DILocalVariable(name: "text", arg: 1, scope: !199, file: !5, line: 63, type: !32)
!205 = !DILocalVariable(name: "out", scope: !199, file: !5, line: 65, type: !76, align: 128)
!206 = !DILocation(line: 0, scope: !141, inlinedAt: !207)
!207 = distinct !DILocation(line: 66, column: 2, scope: !199)
!208 = !DILocation(line: 140, column: 2, scope: !141, inlinedAt: !207)
!209 = !DILocalVariable(name: "text_len", scope: !199, file: !5, line: 66, type: !20, align: 64)
!210 = !DILocalVariable(scope: !199, file: !5, line: 67, type: !20, align: 64)
!211 = !DILocation(line: 67, column: 2, scope: !199)
!212 = !DILocalVariable(scope: !199, file: !5, line: 68, type: !32, align: 64)
!213 = !DILocation(line: 68, column: 2, scope: !199)
!214 = !DILocation(line: 0, scope: !152, inlinedAt: !215)
!215 = distinct !DILocation(line: 69, column: 6, scope: !199)
!216 = !DILocation(line: 134, column: 3, scope: !152, inlinedAt: !215)
!217 = !DILocation(line: 0, scope: !152, inlinedAt: !218)
!218 = distinct !DILocation(line: 70, column: 6, scope: !199)
!219 = !DILocation(line: 134, column: 3, scope: !152, inlinedAt: !218)
!220 = !DILocation(line: 71, column: 5, scope: !199)
!221 = distinct !DISubprogram(name: "overload[x]=", scope: !5, file: !5, line: 74, type: !222, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!222 = !DISubroutineType(types: !223)
!223 = !{!17, !46, !32}
!224 = !DILocalVariable(name: "str", scope: !221, file: !5, line: 74, type: !46)
!225 = !DILocation(line: 0, scope: !221)
!226 = !DILocalVariable(name: "text", arg: 1, scope: !221, file: !5, line: 74, type: !32)
!227 = !DILocation(line: 0, scope: !141, inlinedAt: !228)
!228 = distinct !DILocation(line: 76, column: 2, scope: !221)
!229 = !DILocation(line: 140, column: 2, scope: !141, inlinedAt: !228)
!230 = !DILocalVariable(name: "text_len", scope: !221, file: !5, line: 76, type: !20, align: 64)
!231 = !DILocalVariable(name: "times", scope: !221, file: !5, line: 77, type: !20, align: 64)
!232 = !DILocalVariable(name: "current", scope: !221, file: !5, line: 78, type: !46, align: 64)
!233 = !DILocalVariable(name: "i", scope: !221, file: !5, line: 79, type: !20, align: 64)
!234 = !DILocalVariable(name: "copy_size", scope: !221, file: !5, line: 80, type: !20, align: 64)
!235 = distinct !DISubprogram(name: "overload", scope: !5, file: !5, line: 88, type: !236, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !27)
!236 = !DISubroutineType(types: !237)
!237 = !{!11, !76, !32}
!238 = !DILocalVariable(name: "str", scope: !235, file: !5, line: 88, type: !76)
!239 = !DILocation(line: 0, scope: !235)
!240 = !DILocalVariable(name: "text", arg: 1, scope: !235, file: !5, line: 88, type: !32)
!241 = !DILocalVariable(name: "str2", scope: !235, file: !5, line: 90, type: !76, align: 128)
!242 = !DILocation(line: 0, scope: !141, inlinedAt: !243)
!243 = distinct !DILocation(line: 90, column: 2, scope: !235)
!244 = !DILocation(line: 140, column: 2, scope: !141, inlinedAt: !243)
!245 = !DILocation(line: 0, scope: !126, inlinedAt: !246)
!246 = distinct !DILocation(line: 91, column: 5, scope: !235)
!247 = !DILocation(line: 96, column: 2, scope: !126, inlinedAt: !246)
!248 = !DILocation(line: 99, column: 2, scope: !126, inlinedAt: !246)
!249 = !DILocation(line: 100, column: 38, scope: !126, inlinedAt: !246)
!250 = !DILocation(line: 100, column: 3, scope: !126, inlinedAt: !246)
!251 = !DILocation(line: 91, column: 5, scope: !235)
