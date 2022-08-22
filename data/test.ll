; ModuleID = 'main.apoc'
source_filename = "main.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%SDL_Event = type { [56 x i8] }
%SDL_Surface = type { i32, ptr, i32, i32, i32, ptr, ptr, i32, i32, %SDL_Rect, ptr, i32 }
%SDL_Rect = type { i32, i32, i32, i32 }

@global_var = constant i8 1
@global_var.1 = constant i8 0
@global_var.2 = constant ptr null
@global_var.3 = constant i32 805240832
@global_var.4 = constant i64 32
@global_var.5 = constant i64 12
@0 = private unnamed_addr constant [20 x i8] c"Creating window...\0A\00", align 1
@1 = private unnamed_addr constant [12 x i8] c"Test Window\00", align 1
@2 = private unnamed_addr constant [13 x i8] c"it's false?\0A\00", align 1
@3 = private unnamed_addr constant [23 x i8] c"Entering main loop...\0A\00", align 1
@4 = private unnamed_addr constant [16 x i8] c"exited normally\00", align 1
@5 = private unnamed_addr constant [14 x i8] c"true is true\0A\00", align 1
@6 = private unnamed_addr constant [24 x i8] c"Failed to create window\00", align 1
@7 = private unnamed_addr constant [27 x i8] c"Error initializing sdl %s\0A\00", align 1

define i32 @main() !dbg !26 {
entry:
  %event = alloca %SDL_Event, align 16, !dbg !30
  %zero_init_struct = alloca %SDL_Event, align 16, !dbg !30
  %i = alloca i64, align 8, !dbg !30
  %running = alloca i8, align 1, !dbg !30
  %renderer = alloca ptr, align 8, !dbg !30
  %surface = alloca ptr, align 8, !dbg !30
  %window = alloca ptr, align 8, !dbg !30
  %0 = call i32 @SDL_Init(i64 32), !dbg !30
  %1 = icmp ne i32 %0, 0, !dbg !30
  br i1 %1, label %if_true7, label %if_false, !dbg !30

if_false:                                         ; preds = %entry
  %2 = call i32 (ptr, ...) @printf(ptr @0), !dbg !31
  %3 = call ptr @SDL_CreateWindow(ptr @1, i32 805240832, i32 805240832, i32 1280, i32 720, i32 32), !dbg !32
  call void @llvm.memset.p0.i64(ptr align 8 %window, i8 0, i64 8, i1 false), !dbg !32
  store ptr %3, ptr %window, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata ptr %window, metadata !33, metadata !DIExpression()), !dbg !36
  %4 = load ptr, ptr %window, align 8, !dbg !37
  %5 = icmp eq ptr %4, null, !dbg !37
  br i1 %5, label %if_true6, label %if_false1, !dbg !37

if_false1:                                        ; preds = %if_false
  %6 = load ptr, ptr %window, align 8, !dbg !38
  %7 = call ptr @SDL_GetWindowSurface(ptr %6), !dbg !38
  call void @llvm.memset.p0.i64(ptr align 8 %surface, i8 0, i64 8, i1 false), !dbg !38
  store ptr %7, ptr %surface, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata ptr %surface, metadata !39, metadata !DIExpression()), !dbg !98
  %8 = load ptr, ptr %window, align 8, !dbg !99
  %9 = call ptr @SDL_CreateRenderer(ptr %8, i32 -1, i32 4), !dbg !99
  call void @llvm.memset.p0.i64(ptr align 8 %renderer, i8 0, i64 8, i1 false), !dbg !99
  store ptr %9, ptr %renderer, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %renderer, metadata !100, metadata !DIExpression()), !dbg !103
  br i1 false, label %if_true5, label %if_false2, !dbg !104

to_go_if:                                         ; preds = %if_true5, %if_false2
  call void @llvm.memset.p0.i64(ptr align 1 %running, i8 0, i64 1, i1 false), !dbg !105
  store i8 1, ptr %running, align 1, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %running, metadata !106, metadata !DIExpression()), !dbg !107
  %10 = call i32 @puts(ptr @3), !dbg !108
  call void @llvm.memset.p0.i64(ptr align 8 %i, i8 0, i64 8, i1 false), !dbg !109
  store i64 0, ptr %i, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %i, metadata !110, metadata !DIExpression()), !dbg !111
  %11 = load i8, ptr %running, align 1, !dbg !109
  %boolean_expr = trunc i8 %11 to i1, !dbg !109
  br i1 %boolean_expr, label %for_true, label %for_false, !dbg !109

if_false2:                                        ; preds = %if_false1
  %12 = call i32 (ptr, ...) @printf(ptr @2), !dbg !112
  br label %to_go_if, !dbg !109

for_true_jump:                                    ; preds = %if_false3
  %13 = load i64, ptr %i, align 4, !dbg !113
  %14 = add i64 %13, 1, !dbg !113
  store i64 %14, ptr %i, align 4, !dbg !113
  %15 = load i8, ptr %running, align 1, !dbg !109
  %boolean_expr4 = trunc i8 %15 to i1, !dbg !109
  br i1 %boolean_expr4, label %for_true, label %for_false, !dbg !109

for_false:                                        ; preds = %to_go_if, %for_true_jump
  %16 = load ptr, ptr %window, align 8, !dbg !114
  call void @SDL_DestroyWindow(ptr %16), !dbg !114
  call void @SDL_Quit(), !dbg !115
  %17 = call i32 (ptr, ...) @printf(ptr @4), !dbg !116
  ret i32 0, !dbg !117

for_true:                                         ; preds = %to_go_if, %for_true_jump
  call void @llvm.memset.p0.i64(ptr align 16 %zero_init_struct, i8 0, i64 56, i1 false), !dbg !118
  call void @llvm.memset.p0.i64(ptr align 16 %event, i8 0, i64 56, i1 false), !dbg !118
  store ptr %zero_init_struct, ptr %event, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %event, metadata !119, metadata !DIExpression()), !dbg !370
  %18 = load %SDL_Event, ptr %event, align 1, !dbg !371
  %19 = call i32 @SDL_PollEvent(ptr %event), !dbg !371
  %"union member ptr" = getelementptr inbounds %SDL_Event, ptr %event, i32 0, i32 0, !dbg !113
  %selected = load i32, ptr %"union member ptr", align 4, !dbg !113
  %20 = icmp eq i32 %selected, 256, !dbg !113
  br i1 %20, label %if_true, label %if_false3, !dbg !113

if_false3:                                        ; preds = %for_true, %if_true
  br label %for_true_jump, !dbg !113

if_true:                                          ; preds = %for_true
  store i8 0, ptr %running, align 1, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %running, metadata !373, metadata !DIExpression()), !dbg !374
  br label %if_false3, !dbg !372

if_true5:                                         ; preds = %if_false1
  %21 = call i32 (ptr, ...) @printf(ptr @5), !dbg !375
  br label %to_go_if, !dbg !375

if_true6:                                         ; preds = %if_false
  %22 = call i32 (ptr, ...) @printf(ptr @6), !dbg !376
  ret i32 -1, !dbg !377

if_true7:                                         ; preds = %entry
  %23 = call ptr @SDL_GetError(), !dbg !378
  %24 = call i32 (ptr, ...) @printf(ptr @7, ptr %23), !dbg !378
  ret i32 1, !dbg !379
}

define void @draw_square(ptr %surface, i32 %start_x, i32 %start_y, i32 %w, i32 %h, i32 %color) !dbg !380 {
entry:
  %location = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %p_h = alloca i32, align 4
  %p_w = alloca i32, align 4
  %pixels = alloca ptr, align 8
  %color6 = alloca i32, align 4
  %h5 = alloca i32, align 4
  %w4 = alloca i32, align 4
  %start_y3 = alloca i32, align 4
  %start_x2 = alloca i32, align 4
  %surface1 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %surface1, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %surface1, metadata !383, metadata !DIExpression()), !dbg !384
  store ptr %surface, ptr %surface1, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %start_x2, i8 0, i64 4, i1 false)
  call void @llvm.dbg.declare(metadata ptr %start_x2, metadata !385, metadata !DIExpression()), !dbg !384
  store i32 %start_x, ptr %start_x2, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %start_y3, i8 0, i64 4, i1 false)
  call void @llvm.dbg.declare(metadata ptr %start_y3, metadata !386, metadata !DIExpression()), !dbg !384
  store i32 %start_y, ptr %start_y3, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %w4, i8 0, i64 4, i1 false)
  call void @llvm.dbg.declare(metadata ptr %w4, metadata !387, metadata !DIExpression()), !dbg !384
  store i32 %w, ptr %w4, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %h5, i8 0, i64 4, i1 false)
  call void @llvm.dbg.declare(metadata ptr %h5, metadata !388, metadata !DIExpression()), !dbg !384
  store i32 %h, ptr %h5, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %color6, i8 0, i64 4, i1 false)
  call void @llvm.dbg.declare(metadata ptr %color6, metadata !389, metadata !DIExpression()), !dbg !384
  store i32 %color, ptr %color6, align 4
  %"derefrence struct" = load ptr, ptr %surface1, align 8, !dbg !390
  %"struct member ptr" = getelementptr inbounds %SDL_Surface, ptr %"derefrence struct", i32 0, i32 5, !dbg !390
  %selected = load ptr, ptr %"struct member ptr", align 8, !dbg !390
  call void @llvm.memset.p0.i64(ptr align 8 %pixels, i8 0, i64 8, i1 false), !dbg !390
  store ptr %selected, ptr %pixels, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata ptr %pixels, metadata !391, metadata !DIExpression()), !dbg !393
  %"derefrence struct7" = load ptr, ptr %surface1, align 8, !dbg !394
  %"struct member ptr8" = getelementptr inbounds %SDL_Surface, ptr %"derefrence struct7", i32 0, i32 2, !dbg !394
  %selected9 = load i32, ptr %"struct member ptr8", align 4, !dbg !394
  call void @llvm.memset.p0.i64(ptr align 4 %p_w, i8 0, i64 4, i1 false), !dbg !394
  store i32 %selected9, ptr %p_w, align 4, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %p_w, metadata !395, metadata !DIExpression()), !dbg !396
  %"derefrence struct10" = load ptr, ptr %surface1, align 8, !dbg !397
  %"struct member ptr11" = getelementptr inbounds %SDL_Surface, ptr %"derefrence struct10", i32 0, i32 3, !dbg !397
  %selected12 = load i32, ptr %"struct member ptr11", align 4, !dbg !397
  call void @llvm.memset.p0.i64(ptr align 4 %p_h, i8 0, i64 4, i1 false), !dbg !397
  store i32 %selected12, ptr %p_h, align 4, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %p_h, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i32, ptr %start_y3, align 4, !dbg !400
  %1 = load i32, ptr %h5, align 4, !dbg !400
  %2 = add i32 %0, %1, !dbg !400
  %3 = load i32, ptr %p_h, align 4, !dbg !400
  %4 = icmp sgt i32 %2, %3, !dbg !400
  br i1 %4, label %if_true17, label %if_false, !dbg !400

if_false:                                         ; preds = %entry
  %5 = load i32, ptr %start_x2, align 4, !dbg !401
  %6 = load i32, ptr %w4, align 4, !dbg !401
  %7 = add i32 %5, %6, !dbg !401
  %8 = load i32, ptr %p_w, align 4, !dbg !401
  %9 = icmp sgt i32 %7, %8, !dbg !401
  br i1 %9, label %if_true, label %if_false13, !dbg !401

if_false13:                                       ; preds = %if_false
  %10 = load i32, ptr %start_y3, align 4, !dbg !402
  call void @llvm.memset.p0.i64(ptr align 4 %y, i8 0, i64 4, i1 false), !dbg !402
  store i32 %10, ptr %y, align 4, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %y, metadata !403, metadata !DIExpression()), !dbg !404
  %11 = load i32, ptr %y, align 4, !dbg !402
  %12 = load i32, ptr %start_y3, align 4, !dbg !402
  %13 = load i32, ptr %h5, align 4, !dbg !402
  %14 = add i32 %12, %13, !dbg !402
  %15 = icmp slt i32 %11, %14, !dbg !402
  br i1 %15, label %for_true, label %for_false, !dbg !402

for_true_jump:                                    ; preds = %for_false15
  %16 = load i32, ptr %y, align 4, !dbg !405
  %17 = add i32 %16, 1, !dbg !405
  store i32 %17, ptr %y, align 4, !dbg !405
  %18 = load i32, ptr %y, align 4, !dbg !402
  %19 = load i32, ptr %start_y3, align 4, !dbg !402
  %20 = load i32, ptr %h5, align 4, !dbg !402
  %21 = add i32 %19, %20, !dbg !402
  %22 = icmp slt i32 %18, %21, !dbg !402
  br i1 %22, label %for_true, label %for_false, !dbg !402

for_false:                                        ; preds = %if_false13, %for_true_jump
  ret void, !dbg !406

for_true:                                         ; preds = %if_false13, %for_true_jump
  %23 = load i32, ptr %start_x2, align 4, !dbg !405
  call void @llvm.memset.p0.i64(ptr align 4 %x, i8 0, i64 4, i1 false), !dbg !405
  store i32 %23, ptr %x, align 4, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %x, metadata !407, metadata !DIExpression()), !dbg !408
  %24 = load i32, ptr %x, align 4, !dbg !405
  %25 = load i32, ptr %start_x2, align 4, !dbg !405
  %26 = load i32, ptr %w4, align 4, !dbg !405
  %27 = add i32 %25, %26, !dbg !405
  %28 = icmp slt i32 %24, %27, !dbg !405
  br i1 %28, label %for_true16, label %for_false15, !dbg !405

for_true_jump14:                                  ; preds = %for_true16
  %29 = load i32, ptr %x, align 4, !dbg !409
  %30 = add i32 %29, 1, !dbg !409
  store i32 %30, ptr %x, align 4, !dbg !409
  %31 = load i32, ptr %x, align 4, !dbg !405
  %32 = load i32, ptr %start_x2, align 4, !dbg !405
  %33 = load i32, ptr %w4, align 4, !dbg !405
  %34 = add i32 %32, %33, !dbg !405
  %35 = icmp slt i32 %31, %34, !dbg !405
  br i1 %35, label %for_true16, label %for_false15, !dbg !405

for_false15:                                      ; preds = %for_true, %for_true_jump14
  br label %for_true_jump, !dbg !405

for_true16:                                       ; preds = %for_true, %for_true_jump14
  %36 = load i32, ptr %x, align 4, !dbg !410
  %37 = load i32, ptr %y, align 4, !dbg !410
  %38 = load i32, ptr %p_w, align 4, !dbg !410
  %39 = mul i32 %37, %38, !dbg !410
  %40 = add i32 %36, %39, !dbg !410
  call void @llvm.memset.p0.i64(ptr align 4 %location, i8 0, i64 4, i1 false), !dbg !410
  store i32 %40, ptr %location, align 4, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %location, metadata !411, metadata !DIExpression()), !dbg !412
  %41 = load i32, ptr %color6, align 4, !dbg !409
  %42 = load i32, ptr %location, align 4, !dbg !409
  %ptr_load = load ptr, ptr %pixels, align 8, !dbg !409
  %elem_ptr = getelementptr i32, ptr %ptr_load, i32 %42, !dbg !409
  store i32 %41, ptr %elem_ptr, align 4, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %elem_ptr, metadata !413, metadata !DIExpression()), !dbg !414
  br label %for_true_jump14, !dbg !409

if_true:                                          ; preds = %if_false
  ret void, !dbg !401

if_true17:                                        ; preds = %entry
  ret void, !dbg !400
}

define void @swap_buffers(ptr %window) !dbg !415 {
entry:
  %window1 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %window1, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %window1, metadata !418, metadata !DIExpression()), !dbg !419
  store ptr %window, ptr %window1, align 8
  %0 = load ptr, ptr %window1, align 8, !dbg !420
  %1 = call i32 @SDL_UpdateWindowSurface(ptr %0), !dbg !420
  ret void
}

declare i32 @SDL_Init(i64)

declare void @SDL_Quit()

declare ptr @SDL_GetError()

declare ptr @SDL_CreateWindow(ptr, i32, i32, i32, i32, i32)

declare void @SDL_DestroyWindow(ptr)

declare i32 @SDL_PollEvent(ptr)

declare ptr @SDL_GetWindowSurface(ptr)

declare i32 @SDL_UpdateWindowSurface(ptr)

declare ptr @SDL_CreateRenderer(ptr, i32, i32)

declare ptr @SDL_CreateTexture(ptr, i32, i32, i32, i32)

declare ptr @malloc(i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @scanf(ptr, ...)

declare i32 @printf(ptr, ...)

declare void @srand(i32)

declare i32 @rand()

declare void @GetSystemTime(ptr)

declare i32 @puts(ptr)

define ptr @mem_alloc(i64 %size) !dbg !421 {
entry:
  %result = alloca ptr, align 8
  %size1 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %size1, i8 0, i64 8, i1 false)
  call void @llvm.dbg.declare(metadata ptr %size1, metadata !425, metadata !DIExpression()), !dbg !426
  store i64 %size, ptr %size1, align 4
  %0 = load i64, ptr %size1, align 4, !dbg !427
  %1 = call ptr @malloc(i64 %0), !dbg !427
  call void @llvm.memset.p0.i64(ptr align 8 %result, i8 0, i64 8, i1 false), !dbg !427
  store ptr %1, ptr %result, align 8, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %result, metadata !428, metadata !DIExpression()), !dbg !429
  %2 = load ptr, ptr %result, align 8, !dbg !430
  %3 = load i64, ptr %size1, align 4, !dbg !430
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3), !dbg !430
  %5 = load ptr, ptr %result, align 8, !dbg !431
  ret ptr %5, !dbg !431
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { argmemonly nofree nounwind willreturn writeonly }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0, !2, !4}
!llvm.module.flags = !{!24, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "main.apoc", directory: "W:\\Engine\\src")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!3 = !DIFile(filename: "sdl_bindings", directory: "W:\\Engine\\src")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Apoc Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !6)
!5 = !DIFile(filename: "FileTwo.apoc", directory: "W:\\Apocalypse")
!6 = !{!7, !10, !12, !16, !19, !22}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "true", scope: !1, file: !1, line: 2, type: !9, isLocal: true, isDefinition: true)
!9 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "false", scope: !1, file: !1, line: 3, type: !9, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "null", scope: !1, file: !1, line: 4, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "SDL_WINDOW_CENTERED", scope: !3, file: !3, line: 14, type: !18, isLocal: true, isDefinition: true)
!18 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "SDL_TEXTEDITINGEVENT_TEXT_SIZE", scope: !3, file: !3, line: 155, type: !21, isLocal: true, isDefinition: true)
!21 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "SOME_NUM", scope: !5, file: !5, line: 11, type: !21, isLocal: true, isDefinition: true)
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 2, !"CodeView", i32 1}
!26 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !27, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!18}
!29 = !{}
!30 = !DILocation(line: 7, scope: !26)
!31 = !DILocation(line: 12, scope: !26)
!32 = !DILocation(line: 13, scope: !26)
!33 = !DILocalVariable(name: "window", scope: !26, file: !1, line: 13, type: !34, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_Window", scope: !3, file: !3, line: 1135, align: 8, elements: !29)
!36 = !DILocation(line: 13, column: 2, scope: !26)
!37 = !DILocation(line: 16, scope: !26)
!38 = !DILocation(line: 20, scope: !26)
!39 = !DILocalVariable(name: "surface", scope: !26, file: !1, line: 20, type: !40, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_Surface", scope: !3, file: !3, line: 30, size: 704, align: 64, elements: !42)
!42 = !{!43, !45, !82, !83, !84, !85, !86, !87, !88, !89, !96, !97}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3, file: !3, line: 32, baseType: !44, size: 32, align: 32)
!44 = !DIBasicType(name: "u32", size: 24, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !3, file: !3, line: 33, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_PixelFormat", scope: !3, file: !3, line: 54, size: 448, align: 64, elements: !48)
!48 = !{!49, !50, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !3, file: !3, line: 56, baseType: !44, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "palette", scope: !3, file: !3, line: 57, baseType: !51, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_Palette", scope: !3, file: !3, line: 76, size: 192, align: 64, elements: !53)
!53 = !{!54, !55, !64, !65}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ncolors", scope: !3, file: !3, line: 78, baseType: !18, size: 32, align: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !3, file: !3, line: 79, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_Color", scope: !3, file: !3, line: 84, size: 32, align: 8, elements: !58)
!58 = !{!59, !61, !62, !63}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !3, file: !3, line: 86, baseType: !60, size: 8, align: 8)
!60 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3, file: !3, line: 87, baseType: !60, size: 8, align: 8, offset: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3, file: !3, line: 88, baseType: !60, size: 8, align: 8, offset: 16)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3, file: !3, line: 89, baseType: !60, size: 8, align: 8, offset: 24)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3, file: !3, line: 80, baseType: !44, size: 32, align: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3, file: !3, line: 81, baseType: !18, size: 32, align: 32, offset: 160)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "BitsPerPixel", scope: !3, file: !3, line: 58, baseType: !60, size: 8, align: 8, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "BytesPerPixel", scope: !3, file: !3, line: 59, baseType: !60, size: 8, align: 8, offset: 136)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "Rmask", scope: !3, file: !3, line: 60, baseType: !44, size: 32, align: 32, offset: 160)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "Gmask", scope: !3, file: !3, line: 61, baseType: !44, size: 32, align: 32, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "Bmask", scope: !3, file: !3, line: 62, baseType: !44, size: 32, align: 32, offset: 224)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "Amask", scope: !3, file: !3, line: 63, baseType: !44, size: 32, align: 32, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "Rloss", scope: !3, file: !3, line: 64, baseType: !60, size: 8, align: 8, offset: 288)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "Gloss", scope: !3, file: !3, line: 65, baseType: !60, size: 8, align: 8, offset: 296)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "Bloss", scope: !3, file: !3, line: 66, baseType: !60, size: 8, align: 8, offset: 304)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "Aloss", scope: !3, file: !3, line: 67, baseType: !60, size: 8, align: 8, offset: 312)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Rshift", scope: !3, file: !3, line: 68, baseType: !60, size: 8, align: 8, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "Gshift", scope: !3, file: !3, line: 69, baseType: !60, size: 8, align: 8, offset: 328)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "Bshift", scope: !3, file: !3, line: 70, baseType: !60, size: 8, align: 8, offset: 336)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "Ashift", scope: !3, file: !3, line: 71, baseType: !60, size: 8, align: 8, offset: 344)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3, file: !3, line: 72, baseType: !18, size: 32, align: 32, offset: 352)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3, file: !3, line: 73, baseType: !46, size: 64, align: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !3, file: !3, line: 34, baseType: !18, size: 32, align: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !3, file: !3, line: 35, baseType: !18, size: 32, align: 32, offset: 160)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !3, file: !3, line: 36, baseType: !18, size: 32, align: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !3, file: !3, line: 37, baseType: !14, size: 64, align: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "userdata", scope: !3, file: !3, line: 38, baseType: !14, size: 64, align: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !3, file: !3, line: 39, baseType: !18, size: 32, align: 32, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "lock_data", scope: !3, file: !3, line: 40, baseType: !18, size: 32, align: 32, offset: 416)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "clip_rect", scope: !3, file: !3, line: 46, baseType: !90, size: 128, align: 128, offset: 448)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_Rect", scope: !3, file: !3, line: 46, size: 128, align: 32, elements: !91)
!91 = !{!92, !93, !94, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3, file: !3, line: 48, baseType: !18, size: 32, align: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3, file: !3, line: 49, baseType: !18, size: 32, align: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !3, file: !3, line: 50, baseType: !18, size: 32, align: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !3, file: !3, line: 51, baseType: !18, size: 32, align: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3, file: !3, line: 42, baseType: !14, size: 64, align: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3, file: !3, line: 43, baseType: !18, size: 32, align: 32, offset: 640)
!98 = !DILocation(line: 20, column: 2, scope: !26)
!99 = !DILocation(line: 21, scope: !26)
!100 = !DILocalVariable(name: "renderer", scope: !26, file: !1, line: 21, type: !101, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_Renderer", scope: !3, file: !3, line: 1137, align: 8, elements: !29)
!103 = !DILocation(line: 21, column: 2, scope: !26)
!104 = !DILocation(line: 22, scope: !26)
!105 = !DILocation(line: 29, scope: !26)
!106 = !DILocalVariable(name: "running", scope: !26, file: !1, line: 29, type: !9, align: 8)
!107 = !DILocation(line: 29, column: 2, scope: !26)
!108 = !DILocation(line: 30, scope: !26)
!109 = !DILocation(line: 31, scope: !26)
!110 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 31, type: !21, align: 64)
!111 = !DILocation(line: 31, column: 6, scope: !26)
!112 = !DILocation(line: 25, scope: !26)
!113 = !DILocation(line: 34, scope: !26)
!114 = !DILocation(line: 42, scope: !26)
!115 = !DILocation(line: 43, scope: !26)
!116 = !DILocation(line: 44, scope: !26)
!117 = !DILocation(line: 45, scope: !26)
!118 = !DILocation(line: 32, scope: !26)
!119 = !DILocalVariable(name: "event", scope: !26, file: !1, line: 32, type: !120, align: 128)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_Event", scope: !3, file: !3, line: 92, size: 448, align: 448, elements: !121)
!121 = !{!122, !123, !128, !140, !158, !168, !175, !187, !200, !213, !226, !238, !248, !258, !264, !276, !286, !292, !302, !307, !316, !324, !337, !349, !360, !368}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 94, baseType: !44, size: 32, align: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3, file: !3, line: 124, baseType: !124, size: 64, align: 128)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_CommonEvent", scope: !3, file: !3, line: 124, size: 64, align: 32, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 126, baseType: !44, size: 32, align: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 127, baseType: !44, size: 32, align: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !3, file: !3, line: 130, baseType: !129, size: 192, align: 128)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_WindowEvent", scope: !3, file: !3, line: 130, size: 192, align: 32, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 132, baseType: !44, size: 32, align: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 133, baseType: !44, size: 32, align: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 134, baseType: !44, size: 32, align: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3, file: !3, line: 135, baseType: !60, size: 8, align: 8, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3, file: !3, line: 136, baseType: !60, size: 8, align: 8, offset: 104)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3, file: !3, line: 137, baseType: !60, size: 8, align: 8, offset: 112)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "padding3", scope: !3, file: !3, line: 138, baseType: !60, size: 8, align: 8, offset: 120)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "data1", scope: !3, file: !3, line: 139, baseType: !18, size: 32, align: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "data2", scope: !3, file: !3, line: 140, baseType: !18, size: 32, align: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3, file: !3, line: 143, baseType: !141, size: 320, align: 128)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_KeyboardEvent", scope: !3, file: !3, line: 143, size: 320, align: 64, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 145, baseType: !44, size: 32, align: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 146, baseType: !44, size: 32, align: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 147, baseType: !44, size: 32, align: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3, file: !3, line: 148, baseType: !60, size: 8, align: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !3, file: !3, line: 149, baseType: !60, size: 8, align: 8, offset: 104)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3, file: !3, line: 150, baseType: !60, size: 8, align: 8, offset: 112)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "padding3", scope: !3, file: !3, line: 151, baseType: !60, size: 8, align: 8, offset: 120)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "keysym", scope: !3, file: !3, line: 457, baseType: !151, size: 192, align: 128, offset: 128)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_Keysym", scope: !3, file: !3, line: 457, size: 192, align: 64, elements: !152)
!152 = !{!153, !154, !155, !157}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !3, file: !3, line: 459, baseType: !21, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !3, file: !3, line: 460, baseType: !18, size: 32, align: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3, file: !3, line: 461, baseType: !156, size: 16, align: 16, offset: 96)
!156 = !DIBasicType(name: "u16", size: 16, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3, file: !3, line: 462, baseType: !44, size: 32, align: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "edit", scope: !3, file: !3, line: 157, baseType: !159, size: 416, align: 128)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_TextEditingEvent", scope: !3, file: !3, line: 157, size: 416, align: 256, elements: !160)
!160 = !{!161, !162, !163, !164, !166, !167}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 159, baseType: !44, size: 32, align: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 160, baseType: !44, size: 32, align: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 161, baseType: !44, size: 32, align: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !3, file: !3, line: 162, baseType: !165, size: 256, align: 128, offset: 96)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, align: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3, file: !3, line: 163, baseType: !18, size: 32, align: 32, offset: 352)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3, file: !3, line: 164, baseType: !18, size: 32, align: 32, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !3, file: !3, line: 167, baseType: !169, size: 352, align: 128)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_TextInputEvent", scope: !3, file: !3, line: 167, size: 352, align: 256, elements: !170)
!170 = !{!171, !172, !173, !174}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 169, baseType: !44, size: 32, align: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 170, baseType: !44, size: 32, align: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 171, baseType: !44, size: 32, align: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !3, file: !3, line: 172, baseType: !165, size: 256, align: 128, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !3, file: !3, line: 175, baseType: !176, size: 288, align: 128)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_MouseMotionEvent", scope: !3, file: !3, line: 175, size: 288, align: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 177, baseType: !44, size: 32, align: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 178, baseType: !44, size: 32, align: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 179, baseType: !44, size: 32, align: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 180, baseType: !44, size: 32, align: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3, file: !3, line: 181, baseType: !44, size: 32, align: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3, file: !3, line: 182, baseType: !18, size: 32, align: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3, file: !3, line: 183, baseType: !18, size: 32, align: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "xrel", scope: !3, file: !3, line: 184, baseType: !18, size: 32, align: 32, offset: 224)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "yrel", scope: !3, file: !3, line: 185, baseType: !18, size: 32, align: 32, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3, file: !3, line: 188, baseType: !188, size: 224, align: 128)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_MouseButtonEvent", scope: !3, file: !3, line: 188, size: 224, align: 32, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 190, baseType: !44, size: 32, align: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 191, baseType: !44, size: 32, align: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 192, baseType: !44, size: 32, align: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 193, baseType: !44, size: 32, align: 32, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3, file: !3, line: 194, baseType: !60, size: 8, align: 8, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3, file: !3, line: 195, baseType: !60, size: 8, align: 8, offset: 136)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "clicks", scope: !3, file: !3, line: 196, baseType: !60, size: 8, align: 8, offset: 144)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3, file: !3, line: 197, baseType: !60, size: 8, align: 8, offset: 152)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3, file: !3, line: 198, baseType: !18, size: 32, align: 32, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3, file: !3, line: 199, baseType: !18, size: 32, align: 32, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "wheel", scope: !3, file: !3, line: 202, baseType: !201, size: 288, align: 128)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_MouseWheelEvent", scope: !3, file: !3, line: 202, size: 288, align: 32, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !212}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 204, baseType: !44, size: 32, align: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 205, baseType: !44, size: 32, align: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 206, baseType: !44, size: 32, align: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 207, baseType: !44, size: 32, align: 32, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3, file: !3, line: 208, baseType: !18, size: 32, align: 32, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3, file: !3, line: 209, baseType: !18, size: 32, align: 32, offset: 160)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3, file: !3, line: 210, baseType: !44, size: 32, align: 32, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "preciseX", scope: !3, file: !3, line: 211, baseType: !211, size: 32, align: 32, offset: 224)
!211 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "preciseY", scope: !3, file: !3, line: 212, baseType: !211, size: 32, align: 32, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "jaxis", scope: !3, file: !3, line: 215, baseType: !214, size: 160, align: 128)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_JoyAxisEvent", scope: !3, file: !3, line: 215, size: 160, align: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 217, baseType: !44, size: 32, align: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 218, baseType: !44, size: 32, align: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 219, baseType: !18, size: 32, align: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !3, file: !3, line: 220, baseType: !60, size: 8, align: 8, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3, file: !3, line: 221, baseType: !60, size: 8, align: 8, offset: 104)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3, file: !3, line: 222, baseType: !60, size: 8, align: 8, offset: 112)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "padding3", scope: !3, file: !3, line: 223, baseType: !60, size: 8, align: 8, offset: 120)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3, file: !3, line: 224, baseType: !224, size: 16, align: 16, offset: 128)
!224 = !DIBasicType(name: "i16", size: 16, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "padding4", scope: !3, file: !3, line: 225, baseType: !156, size: 16, align: 16, offset: 144)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "jball", scope: !3, file: !3, line: 228, baseType: !227, size: 160, align: 128)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_JoyBallEvent", scope: !3, file: !3, line: 228, size: 160, align: 32, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 230, baseType: !44, size: 32, align: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 231, baseType: !44, size: 32, align: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 232, baseType: !18, size: 32, align: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ball", scope: !3, file: !3, line: 233, baseType: !60, size: 8, align: 8, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3, file: !3, line: 234, baseType: !60, size: 8, align: 8, offset: 104)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3, file: !3, line: 235, baseType: !60, size: 8, align: 8, offset: 112)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "padding3", scope: !3, file: !3, line: 236, baseType: !60, size: 8, align: 8, offset: 120)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "xrel", scope: !3, file: !3, line: 237, baseType: !224, size: 16, align: 16, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "yrel", scope: !3, file: !3, line: 238, baseType: !224, size: 16, align: 16, offset: 144)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "jhat", scope: !3, file: !3, line: 241, baseType: !239, size: 128, align: 128)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_JoyHatEvent", scope: !3, file: !3, line: 241, size: 128, align: 32, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 243, baseType: !44, size: 32, align: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 244, baseType: !44, size: 32, align: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 245, baseType: !18, size: 32, align: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "hat", scope: !3, file: !3, line: 246, baseType: !60, size: 8, align: 8, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3, file: !3, line: 247, baseType: !60, size: 8, align: 8, offset: 104)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3, file: !3, line: 254, baseType: !60, size: 8, align: 8, offset: 112)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3, file: !3, line: 255, baseType: !60, size: 8, align: 8, offset: 120)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "jbutton", scope: !3, file: !3, line: 258, baseType: !249, size: 128, align: 128)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_JoyButtonEvent", scope: !3, file: !3, line: 258, size: 128, align: 32, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 260, baseType: !44, size: 32, align: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 261, baseType: !44, size: 32, align: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 262, baseType: !18, size: 32, align: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3, file: !3, line: 263, baseType: !60, size: 8, align: 8, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3, file: !3, line: 264, baseType: !60, size: 8, align: 8, offset: 104)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3, file: !3, line: 265, baseType: !60, size: 8, align: 8, offset: 112)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3, file: !3, line: 266, baseType: !60, size: 8, align: 8, offset: 120)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "jdevice", scope: !3, file: !3, line: 269, baseType: !259, size: 96, align: 128)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_JoyDeviceEvent", scope: !3, file: !3, line: 269, size: 96, align: 32, elements: !260)
!260 = !{!261, !262, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 271, baseType: !44, size: 32, align: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 272, baseType: !44, size: 32, align: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 273, baseType: !18, size: 32, align: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "caxis", scope: !3, file: !3, line: 276, baseType: !265, size: 160, align: 128)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_ControllerAxisEvent", scope: !3, file: !3, line: 276, size: 160, align: 32, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 278, baseType: !44, size: 32, align: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 279, baseType: !44, size: 32, align: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 280, baseType: !18, size: 32, align: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !3, file: !3, line: 281, baseType: !60, size: 8, align: 8, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3, file: !3, line: 282, baseType: !60, size: 8, align: 8, offset: 104)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3, file: !3, line: 283, baseType: !60, size: 8, align: 8, offset: 112)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "padding3", scope: !3, file: !3, line: 284, baseType: !60, size: 8, align: 8, offset: 120)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3, file: !3, line: 285, baseType: !224, size: 16, align: 16, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "padding4", scope: !3, file: !3, line: 286, baseType: !156, size: 16, align: 16, offset: 144)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cbutton", scope: !3, file: !3, line: 289, baseType: !277, size: 128, align: 128)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_ControllerButtonEvent", scope: !3, file: !3, line: 289, size: 128, align: 32, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 291, baseType: !44, size: 32, align: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 292, baseType: !44, size: 32, align: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 293, baseType: !18, size: 32, align: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3, file: !3, line: 294, baseType: !60, size: 8, align: 8, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3, file: !3, line: 295, baseType: !60, size: 8, align: 8, offset: 104)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3, file: !3, line: 296, baseType: !60, size: 8, align: 8, offset: 112)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3, file: !3, line: 297, baseType: !60, size: 8, align: 8, offset: 120)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "cdevice", scope: !3, file: !3, line: 300, baseType: !287, size: 96, align: 128)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_ControllerDeviceEvent", scope: !3, file: !3, line: 300, size: 96, align: 32, elements: !288)
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 302, baseType: !44, size: 32, align: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 303, baseType: !44, size: 32, align: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 304, baseType: !18, size: 32, align: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "adevice", scope: !3, file: !3, line: 328, baseType: !293, size: 128, align: 128)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_AudioDeviceEvent", scope: !3, file: !3, line: 328, size: 128, align: 32, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 330, baseType: !44, size: 32, align: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 331, baseType: !44, size: 32, align: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "which", scope: !3, file: !3, line: 332, baseType: !44, size: 32, align: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "iscapture", scope: !3, file: !3, line: 333, baseType: !60, size: 8, align: 8, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3, file: !3, line: 334, baseType: !60, size: 8, align: 8, offset: 104)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !3, file: !3, line: 335, baseType: !60, size: 8, align: 8, offset: 112)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "padding3", scope: !3, file: !3, line: 336, baseType: !60, size: 8, align: 8, offset: 120)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "quit", scope: !3, file: !3, line: 414, baseType: !303, size: 64, align: 128)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_QuitEvent", scope: !3, file: !3, line: 414, size: 64, align: 32, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 416, baseType: !44, size: 32, align: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 417, baseType: !44, size: 32, align: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !3, file: !3, line: 432, baseType: !308, size: 256, align: 128)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_UserEvent", scope: !3, file: !3, line: 432, size: 256, align: 64, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 434, baseType: !44, size: 32, align: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 435, baseType: !44, size: 32, align: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 436, baseType: !44, size: 32, align: 32, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3, file: !3, line: 437, baseType: !18, size: 32, align: 32, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "data1", scope: !3, file: !3, line: 438, baseType: !14, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "data2", scope: !3, file: !3, line: 439, baseType: !14, size: 64, align: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "syswm", scope: !3, file: !3, line: 448, baseType: !317, size: 128, align: 128)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_SysWMEvent", scope: !3, file: !3, line: 448, size: 128, align: 64, elements: !318)
!318 = !{!319, !320, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 450, baseType: !44, size: 32, align: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 451, baseType: !44, size: 32, align: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3, file: !3, line: 452, baseType: !322, size: 64, align: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_SysWMmsg", scope: !3, file: !3, line: 455, align: 8, elements: !29)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tfinger", scope: !3, file: !3, line: 342, baseType: !325, size: 384, align: 128)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_TouchFingerEvent", scope: !3, file: !3, line: 342, size: 384, align: 64, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 344, baseType: !44, size: 32, align: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 345, baseType: !44, size: 32, align: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "touchId", scope: !3, file: !3, line: 346, baseType: !21, size: 64, align: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "fingerId", scope: !3, file: !3, line: 347, baseType: !21, size: 64, align: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3, file: !3, line: 348, baseType: !211, size: 32, align: 32, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3, file: !3, line: 349, baseType: !211, size: 32, align: 32, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3, file: !3, line: 350, baseType: !211, size: 32, align: 32, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !3, file: !3, line: 351, baseType: !211, size: 32, align: 32, offset: 288)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pressure", scope: !3, file: !3, line: 352, baseType: !211, size: 32, align: 32, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 353, baseType: !44, size: 32, align: 32, offset: 352)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mgesture", scope: !3, file: !3, line: 359, baseType: !338, size: 320, align: 128)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_MultiGestureEvent", scope: !3, file: !3, line: 359, size: 320, align: 64, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 361, baseType: !44, size: 32, align: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 362, baseType: !44, size: 32, align: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "touchId", scope: !3, file: !3, line: 363, baseType: !21, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dTheta", scope: !3, file: !3, line: 364, baseType: !211, size: 32, align: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dDist", scope: !3, file: !3, line: 365, baseType: !211, size: 32, align: 32, offset: 160)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3, file: !3, line: 366, baseType: !211, size: 32, align: 32, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3, file: !3, line: 367, baseType: !211, size: 32, align: 32, offset: 224)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "numFingers", scope: !3, file: !3, line: 368, baseType: !156, size: 16, align: 16, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3, file: !3, line: 369, baseType: !156, size: 16, align: 16, offset: 272)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dgesture", scope: !3, file: !3, line: 375, baseType: !350, size: 320, align: 128)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_DollarGestureEvent", scope: !3, file: !3, line: 375, size: 320, align: 64, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 377, baseType: !44, size: 32, align: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 378, baseType: !44, size: 32, align: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "touchId", scope: !3, file: !3, line: 379, baseType: !21, size: 64, align: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "gestureId", scope: !3, file: !3, line: 380, baseType: !21, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "numFingers", scope: !3, file: !3, line: 381, baseType: !44, size: 32, align: 32, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3, file: !3, line: 382, baseType: !211, size: 32, align: 32, offset: 224)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3, file: !3, line: 383, baseType: !211, size: 32, align: 32, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3, file: !3, line: 384, baseType: !211, size: 32, align: 32, offset: 288)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !3, file: !3, line: 392, baseType: !361, size: 192, align: 128)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "SDL_DropEvent", scope: !3, file: !3, line: 392, size: 192, align: 64, elements: !362)
!362 = !{!363, !364, !365, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3, file: !3, line: 394, baseType: !44, size: 32, align: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3, file: !3, line: 395, baseType: !44, size: 32, align: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3, file: !3, line: 396, baseType: !366, size: 64, align: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "windowID", scope: !3, file: !3, line: 397, baseType: !44, size: 32, align: 32, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3, file: !3, line: 120, baseType: !369, size: 448, align: 128)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 56, align: 128)
!370 = !DILocation(line: 32, column: 3, scope: !26)
!371 = !DILocation(line: 33, scope: !26)
!372 = !DILocation(line: 35, scope: !26)
!373 = !DILocalVariable(name: "running", scope: !26, file: !1, line: 35, type: !9, align: 8)
!374 = !DILocation(line: 35, column: 4, scope: !26)
!375 = !DILocation(line: 23, scope: !26)
!376 = !DILocation(line: 17, scope: !26)
!377 = !DILocation(line: 18, scope: !26)
!378 = !DILocation(line: 8, scope: !26)
!379 = !DILocation(line: 9, scope: !26)
!380 = distinct !DISubprogram(name: "draw_square", scope: !1, file: !1, line: 49, type: !381, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !29)
!381 = !DISubroutineType(types: !382)
!382 = !{!15, !40, !18, !18, !18, !18, !44}
!383 = !DILocalVariable(name: "surface", scope: !380, file: !1, line: 49, type: !40)
!384 = !DILocation(line: 49, scope: !380)
!385 = !DILocalVariable(name: "start_x", arg: 1, scope: !380, file: !1, line: 49, type: !18)
!386 = !DILocalVariable(name: "start_y", arg: 2, scope: !380, file: !1, line: 49, type: !18)
!387 = !DILocalVariable(name: "w", arg: 3, scope: !380, file: !1, line: 49, type: !18)
!388 = !DILocalVariable(name: "h", arg: 4, scope: !380, file: !1, line: 49, type: !18)
!389 = !DILocalVariable(name: "color", arg: 5, scope: !380, file: !1, line: 49, type: !44)
!390 = !DILocation(line: 51, scope: !380)
!391 = !DILocalVariable(name: "pixels", scope: !380, file: !1, line: 51, type: !392, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!393 = !DILocation(line: 51, column: 2, scope: !380)
!394 = !DILocation(line: 52, scope: !380)
!395 = !DILocalVariable(name: "p_w", scope: !380, file: !1, line: 52, type: !18, align: 32)
!396 = !DILocation(line: 52, column: 2, scope: !380)
!397 = !DILocation(line: 53, scope: !380)
!398 = !DILocalVariable(name: "p_h", scope: !380, file: !1, line: 53, type: !18, align: 32)
!399 = !DILocation(line: 53, column: 2, scope: !380)
!400 = !DILocation(line: 55, scope: !380)
!401 = !DILocation(line: 56, scope: !380)
!402 = !DILocation(line: 59, scope: !380)
!403 = !DILocalVariable(name: "y", scope: !380, file: !1, line: 59, type: !18, align: 32)
!404 = !DILocation(line: 59, column: 6, scope: !380)
!405 = !DILocation(line: 60, scope: !380)
!406 = !DILocation(line: 65, scope: !380)
!407 = !DILocalVariable(name: "x", scope: !380, file: !1, line: 60, type: !18, align: 32)
!408 = !DILocation(line: 60, column: 7, scope: !380)
!409 = !DILocation(line: 62, scope: !380)
!410 = !DILocation(line: 61, scope: !380)
!411 = !DILocalVariable(name: "location", scope: !380, file: !1, line: 61, type: !18, align: 32)
!412 = !DILocation(line: 61, column: 4, scope: !380)
!413 = !DILocalVariable(scope: !380, file: !1, line: 62, type: !44, align: 32)
!414 = !DILocation(line: 62, column: 4, scope: !380)
!415 = distinct !DISubprogram(name: "swap_buffers", scope: !1, file: !1, line: 68, type: !416, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !29)
!416 = !DISubroutineType(types: !417)
!417 = !{!15, !34}
!418 = !DILocalVariable(name: "window", scope: !415, file: !1, line: 68, type: !34)
!419 = !DILocation(line: 68, scope: !415)
!420 = !DILocation(line: 70, scope: !415)
!421 = distinct !DISubprogram(name: "mem_alloc", scope: !5, file: !5, line: 13, type: !422, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !29)
!422 = !DISubroutineType(types: !423)
!423 = !{!14, !424}
!424 = !DIBasicType(name: "u64", size: 32, encoding: DW_ATE_unsigned)
!425 = !DILocalVariable(name: "size", scope: !421, file: !5, line: 13, type: !424)
!426 = !DILocation(line: 13, scope: !421)
!427 = !DILocation(line: 15, scope: !421)
!428 = !DILocalVariable(name: "result", scope: !421, file: !5, line: 15, type: !14, align: 64)
!429 = !DILocation(line: 15, column: 2, scope: !421)
!430 = !DILocation(line: 16, scope: !421)
!431 = !DILocation(line: 17, scope: !421)
