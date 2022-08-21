; ModuleID = 'main.apoc'
source_filename = "main.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%SDL_Event = type { [56 x i8] }
%SDL_Surface = type { i32, ptr, i32, i32, ptr, ptr, i32, i32, %SDL_Rect, ptr, i32 }
%SDL_Rect = type { i32, i32, i32, i32 }

@global_var = constant i8 1
@global_var.1 = constant i8 0
@global_var.2 = constant ptr null
@global_var.3 = constant i32 805240832
@global_var.4 = constant i64 32
@global_var.5 = constant i64 12
@0 = private unnamed_addr constant [20 x i8] c"Creating window...\0A\00", align 1
@1 = private unnamed_addr constant [12 x i8] c"Test Window\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@3 = private unnamed_addr constant [7 x i8] c"False\0A\00", align 1
@4 = private unnamed_addr constant [25 x i8] c"pixel_address: %p == %p\0A\00", align 1
@5 = private unnamed_addr constant [44 x i8] c"Initializing variables before main loop...\0A\00", align 1
@6 = private unnamed_addr constant [20 x i8] c"Entering main loop\0A\00", align 1
@7 = private unnamed_addr constant [16 x i8] c"exited normally\00", align 1
@8 = private unnamed_addr constant [6 x i8] c"True\0A\00", align 1
@9 = private unnamed_addr constant [33 x i8] c"Couldn't get window surface: %s\0A\00", align 1
@10 = private unnamed_addr constant [27 x i8] c"Error initializing sdl %s\0A\00", align 1
@11 = private unnamed_addr constant [14 x i8] c"Original: %p\0A\00", align 1
@12 = private unnamed_addr constant [12 x i8] c"Pixels: %p\0A\00", align 1

define i32 @main() {
entry:
  %event = alloca %SDL_Event, align 16
  %zero_init_struct = alloca %SDL_Event, align 16
  %i = alloca i64, align 8
  %running = alloca i8, align 1
  %actual_surface = alloca %SDL_Surface, align 16
  %window_surface = alloca ptr, align 8
  %window = alloca ptr, align 8
  %0 = call i32 @SDL_Init(i64 32)
  %1 = icmp ne i32 %0, 0
  br i1 %1, label %if_true15, label %if_false

if_false:                                         ; preds = %entry
  %2 = call i32 (ptr, ...) @printf(ptr @0)
  %3 = call ptr @SDL_CreateWindow(ptr @1, i32 805240832, i32 805240832, i32 1280, i32 720, i32 0)
  call void @llvm.memset.p0.i64(ptr align 8 %window, i8 0, i64 8, i1 false)
  store ptr %3, ptr %window, align 8
  %4 = load ptr, ptr %window, align 8
  %5 = call ptr @SDL_GetWindowSurface(ptr %4)
  call void @llvm.memset.p0.i64(ptr align 8 %window_surface, i8 0, i64 8, i1 false)
  store ptr %5, ptr %window_surface, align 8
  %6 = load ptr, ptr %window_surface, align 8
  %7 = call i32 (ptr, ...) @printf(ptr @2, ptr %6)
  %8 = load ptr, ptr %window_surface, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %if_true14, label %if_false1

if_false1:                                        ; preds = %if_false, %if_true14
  %10 = load ptr, ptr %window_surface, align 8
  %11 = load %SDL_Surface, ptr %10, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %actual_surface, i8 0, i64 72, i1 false)
  store %SDL_Surface %11, ptr %actual_surface, align 8
  %"struct member ptr" = getelementptr inbounds %SDL_Surface, ptr %actual_surface, i32 0, i32 4
  %selected = load ptr, ptr %"struct member ptr", align 8
  %"derefrence struct" = load ptr, ptr %window_surface, align 8
  %"struct member ptr2" = getelementptr inbounds %SDL_Surface, ptr %"derefrence struct", i32 0, i32 4
  %selected3 = load ptr, ptr %"struct member ptr2", align 8
  %12 = icmp eq ptr %selected, %selected3
  br i1 %12, label %if_true13, label %if_false4

to_go_if:                                         ; preds = %if_true13, %if_false4
  %"struct member ptr5" = getelementptr inbounds %SDL_Surface, ptr %actual_surface, i32 0, i32 4
  %selected6 = load ptr, ptr %"struct member ptr5", align 8
  %"derefrence struct7" = load ptr, ptr %window_surface, align 8
  %"struct member ptr8" = getelementptr inbounds %SDL_Surface, ptr %"derefrence struct7", i32 0, i32 4
  %selected9 = load ptr, ptr %"struct member ptr8", align 8
  %13 = call i32 (ptr, ...) @printf(ptr @4, ptr %selected6, ptr %selected9)
  %14 = call i32 (ptr, ...) @printf(ptr @5)
  call void @llvm.memset.p0.i64(ptr align 1 %running, i8 0, i64 1, i1 false)
  store i8 1, ptr %running, align 1
  %15 = call i32 (ptr, ...) @printf(ptr @6)
  call void @llvm.memset.p0.i64(ptr align 8 %i, i8 0, i64 8, i1 false)
  store i64 0, ptr %i, align 4
  %16 = load i8, ptr %running, align 1
  %boolean_expr = trunc i8 %16 to i1
  br i1 %boolean_expr, label %for_true, label %for_false

if_false4:                                        ; preds = %if_false1
  %17 = call i32 (ptr, ...) @printf(ptr @3)
  br label %to_go_if

for_true_jump:                                    ; preds = %if_false11
  %18 = load i64, ptr %i, align 4
  %19 = add i64 %18, 1
  store i64 %19, ptr %i, align 4
  %20 = load i8, ptr %running, align 1
  %boolean_expr12 = trunc i8 %20 to i1
  br i1 %boolean_expr12, label %for_true, label %for_false

for_false:                                        ; preds = %to_go_if, %for_true_jump
  %21 = load ptr, ptr %window, align 8
  call void @SDL_DestroyWindow(ptr %21)
  call void @SDL_Quit()
  %22 = call i32 (ptr, ...) @printf(ptr @7)
  ret i32 0

for_true:                                         ; preds = %to_go_if, %for_true_jump
  call void @llvm.memset.p0.i64(ptr align 16 %zero_init_struct, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr align 16 %event, i8 0, i64 56, i1 false)
  store ptr %zero_init_struct, ptr %event, align 8
  %23 = load %SDL_Event, ptr %event, align 1
  %24 = call i32 @SDL_PollEvent(ptr %event)
  %"union member ptr" = getelementptr inbounds %SDL_Event, ptr %event, i32 0, i32 0
  %selected10 = load i32, ptr %"union member ptr", align 4
  %25 = icmp eq i32 %selected10, 256
  br i1 %25, label %if_true, label %if_false11

if_false11:                                       ; preds = %for_true, %if_true
  %26 = load ptr, ptr %window_surface, align 8
  call void @draw_square(ptr %26, i32 0, i32 0, i32 100, i32 100, i32 16777215)
  br label %for_true_jump

if_true:                                          ; preds = %for_true
  store i8 0, ptr %running, align 1
  br label %if_false11

if_true13:                                        ; preds = %if_false1
  %27 = call i32 (ptr, ...) @printf(ptr @8)
  br label %to_go_if

if_true14:                                        ; preds = %if_false
  %28 = call ptr @SDL_GetError()
  %29 = call i32 (ptr, ...) @printf(ptr @9, ptr %28)
  br label %if_false1

if_true15:                                        ; preds = %entry
  %30 = call ptr @SDL_GetError()
  %31 = call i32 (ptr, ...) @printf(ptr @10, ptr %30)
  ret i32 1
}

define void @draw_square(ptr %surface, i32 %start_x, i32 %start_y, i32 %w, i32 %h, i32 %color) {
entry:
  %to_plot = alloca ptr, align 8
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
  store ptr %surface, ptr %surface1, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %start_x2, i8 0, i64 4, i1 false)
  store i32 %start_x, ptr %start_x2, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %start_y3, i8 0, i64 4, i1 false)
  store i32 %start_y, ptr %start_y3, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %w4, i8 0, i64 4, i1 false)
  store i32 %w, ptr %w4, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %h5, i8 0, i64 4, i1 false)
  store i32 %h, ptr %h5, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %color6, i8 0, i64 4, i1 false)
  store i32 %color, ptr %color6, align 4
  %"derefrence struct" = load ptr, ptr %surface1, align 8
  %"struct member ptr" = getelementptr inbounds %SDL_Surface, ptr %"derefrence struct", i32 0, i32 4
  %selected = load ptr, ptr %"struct member ptr", align 8
  call void @llvm.memset.p0.i64(ptr align 8 %pixels, i8 0, i64 8, i1 false)
  store ptr %selected, ptr %pixels, align 8
  %"derefrence struct7" = load ptr, ptr %surface1, align 8
  %"struct member ptr8" = getelementptr inbounds %SDL_Surface, ptr %"derefrence struct7", i32 0, i32 4
  %selected9 = load ptr, ptr %"struct member ptr8", align 8
  %0 = call i32 (ptr, ...) @printf(ptr @11, ptr %selected9)
  %1 = load ptr, ptr %pixels, align 8
  %2 = call i32 (ptr, ...) @printf(ptr @12, ptr %1)
  %"derefrence struct10" = load ptr, ptr %surface1, align 8
  %"struct member ptr11" = getelementptr inbounds %SDL_Surface, ptr %"derefrence struct10", i32 0, i32 2
  %selected12 = load i32, ptr %"struct member ptr11", align 4
  call void @llvm.memset.p0.i64(ptr align 4 %p_w, i8 0, i64 4, i1 false)
  store i32 %selected12, ptr %p_w, align 4
  %"derefrence struct13" = load ptr, ptr %surface1, align 8
  %"struct member ptr14" = getelementptr inbounds %SDL_Surface, ptr %"derefrence struct13", i32 0, i32 3
  %selected15 = load i32, ptr %"struct member ptr14", align 4
  call void @llvm.memset.p0.i64(ptr align 4 %p_h, i8 0, i64 4, i1 false)
  store i32 %selected15, ptr %p_h, align 4
  %3 = load i32, ptr %start_y3, align 4
  %4 = load i32, ptr %h5, align 4
  %5 = add i32 %3, %4
  %6 = load i32, ptr %p_h, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %if_true22, label %if_false

if_false:                                         ; preds = %entry
  %8 = load i32, ptr %start_x2, align 4
  %9 = load i32, ptr %w4, align 4
  %10 = add i32 %8, %9
  %11 = load i32, ptr %p_w, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %if_true, label %if_false16

if_false16:                                       ; preds = %if_false
  %13 = load i32, ptr %start_y3, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %y, i8 0, i64 4, i1 false)
  store i32 %13, ptr %y, align 4
  %14 = load i32, ptr %y, align 4
  %15 = load i32, ptr %start_y3, align 4
  %16 = load i32, ptr %h5, align 4
  %17 = add i32 %15, %16
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %for_true, label %for_false

for_true_jump:                                    ; preds = %for_false18
  %19 = load i32, ptr %y, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %y, align 4
  %21 = load i32, ptr %y, align 4
  %22 = load i32, ptr %start_y3, align 4
  %23 = load i32, ptr %h5, align 4
  %24 = add i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %for_true, label %for_false

for_false:                                        ; preds = %if_false16, %for_true_jump
  ret void

for_true:                                         ; preds = %if_false16, %for_true_jump
  %26 = load i32, ptr %start_x2, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %x, i8 0, i64 4, i1 false)
  store i32 %26, ptr %x, align 4
  %27 = load i32, ptr %x, align 4
  %28 = load i32, ptr %start_x2, align 4
  %29 = load i32, ptr %w4, align 4
  %30 = add i32 %28, %29
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %for_true19, label %for_false18

for_true_jump17:                                  ; preds = %for_true19
  %32 = load i32, ptr %x, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %x, align 4
  %34 = load i32, ptr %x, align 4
  %35 = load i32, ptr %start_x2, align 4
  %36 = load i32, ptr %w4, align 4
  %37 = add i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %for_true19, label %for_false18

for_false18:                                      ; preds = %for_true, %for_true_jump17
  br label %for_true_jump

for_true19:                                       ; preds = %for_true, %for_true_jump17
  %39 = load i32, ptr %x, align 4
  %40 = load i32, ptr %y, align 4
  %41 = load i32, ptr %p_w, align 4
  %42 = mul i32 %40, %41
  %43 = add i32 %39, %42
  call void @llvm.memset.p0.i64(ptr align 4 %location, i8 0, i64 4, i1 false)
  store i32 %43, ptr %location, align 4
  %44 = load ptr, ptr %pixels, align 8
  %cast = ptrtoint ptr %44 to i64
  %45 = load i32, ptr %location, align 4
  %cast20 = zext i32 %45 to i64
  %46 = add i64 %cast, %cast20
  %cast21 = inttoptr i64 %46 to ptr
  call void @llvm.memset.p0.i64(ptr align 8 %to_plot, i8 0, i64 8, i1 false)
  store ptr %cast21, ptr %to_plot, align 8
  %47 = load i32, ptr %color6, align 4
  %ptr_addr = load ptr, ptr %to_plot, align 8
  store i32 %47, ptr %ptr_addr, align 4
  br label %for_true_jump17

if_true:                                          ; preds = %if_false
  ret void

if_true22:                                        ; preds = %entry
  ret void
}

define void @swap_buffers(ptr %window) {
entry:
  %window1 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %window1, i8 0, i64 8, i1 false)
  store ptr %window, ptr %window1, align 8
  %0 = load ptr, ptr %window1, align 8
  %1 = call i32 @SDL_UpdateWindowSurface(ptr %0)
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

declare ptr @malloc(i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @scanf(ptr, ...)

declare i32 @printf(ptr, ...)

declare void @srand(i32)

declare i32 @rand()

declare void @GetSystemTime(ptr)

declare i32 @puts(ptr)

define ptr @mem_alloc(i64 %size) {
entry:
  %result = alloca ptr, align 8
  %size1 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %size1, i8 0, i64 8, i1 false)
  store i64 %size, ptr %size1, align 4
  %0 = load i64, ptr %size1, align 4
  %1 = call ptr @malloc(i64 %0)
  call void @llvm.memset.p0.i64(ptr align 8 %result, i8 0, i64 8, i1 false)
  store ptr %1, ptr %result, align 8
  %2 = load ptr, ptr %result, align 8
  %3 = load i64, ptr %size1, align 4
  %4 = call ptr @memset(ptr %2, i32 0, i64 %3)
  %5 = load ptr, ptr %result, align 8
  ret ptr %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { argmemonly nofree nounwind willreturn writeonly }
