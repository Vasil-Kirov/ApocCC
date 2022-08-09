; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%SYSTEMTIME = type { i16, i16, i16, i16, i16, i16, i16, i16 }

@0 = private unnamed_addr constant [17 x i8] c"Pick a number: \0A\00", align 1
@1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@2 = private unnamed_addr constant [56 x i8] c"You guessed it right, it was %d. It took you %d guesses\00", align 1
@3 = private unnamed_addr constant [16 x i8] c"Pick a number: \00", align 1
@4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@5 = private unnamed_addr constant [8 x i8] c" Lower \00", align 1
@6 = private unnamed_addr constant [9 x i8] c" Higher \00", align 1
@str = private unnamed_addr constant [16 x i8] c"Pick a number: \00", align 1

define i32 @_apoc_init() {
entry:
  %0 = call i32 @main()
  ret i32 %0
}

define i32 @main() {
entry:
  %guess_counter = alloca i64, align 8
  %chosen_num = alloca i32, align 8
  %rand_num = alloca i32, align 4
  %SYSTEMTIME = alloca %SYSTEMTIME, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %SYSTEMTIME, i8 0, i64 16, i1 false)
  call void @GetSystemTime(ptr nonnull %SYSTEMTIME)
  %struct_member_ptr = getelementptr inbounds %SYSTEMTIME, ptr %SYSTEMTIME, i64 0, i32 7
  %struct_member = load i16, ptr %struct_member_ptr, align 2
  %cast = sext i16 %struct_member to i32
  call void @srand(i32 %cast)
  %0 = call i32 @rand()
  %1 = srem i32 %0, 100
  store i32 %1, ptr %rand_num, align 4
  store i64 0, ptr %chosen_num, align 8
  %puts = call i32 @puts(ptr nonnull @str)
  %2 = call i32 (ptr, ...) @scanf(ptr nonnull @1, ptr nonnull %chosen_num)
  store i64 0, ptr %guess_counter, align 8
  %3 = load i32, ptr %chosen_num, align 8
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %for_false, label %for_true

for_false:                                        ; preds = %entry, %if_false1
  %4 = phi i64 [ 0, %entry ], [ %14, %if_false1 ]
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull @2, i32 %1, i64 %4)
  ret i32 0

for_true:                                         ; preds = %entry, %if_false1
  %6 = phi i64 [ 0, %entry ], [ %14, %if_false1 ]
  %7 = call i32 (ptr, ...) @printf(ptr noundef nonnull @3)
  %8 = call i32 (ptr, ...) @scanf(ptr nonnull @4, ptr nonnull %chosen_num)
  %9 = load i32, ptr %chosen_num, align 8
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %if_true2, label %if_false

if_false:                                         ; preds = %for_true, %if_true2
  %11 = phi i32 [ %9, %for_true ], [ %.pre, %if_true2 ]
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %if_true, label %if_false1

if_false1:                                        ; preds = %if_false, %if_true
  %13 = phi i32 [ %11, %if_false ], [ %.pre4, %if_true ]
  %14 = add i64 %6, 1
  store i64 %14, ptr %guess_counter, align 8
  %.not3 = icmp eq i32 %1, %13
  br i1 %.not3, label %for_false, label %for_true

if_true:                                          ; preds = %if_false
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull @5)
  %.pre4 = load i32, ptr %chosen_num, align 8
  br label %if_false1

if_true2:                                         ; preds = %for_true
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull @6)
  %.pre = load i32, ptr %chosen_num, align 8
  br label %if_false
}

declare ptr @malloc(i64)

declare ptr @memset(ptr, i32, i64)

declare i32 @scanf(ptr, ...)

declare i32 @printf(ptr, ...)

declare void @srand(i32)

declare i32 @rand()

declare void @GetSystemTime(ptr)

define ptr @mem_alloc(i64 %size) {
entry:
  %0 = call ptr @malloc(i64 %size)
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %size, i1 false)
  ret ptr %0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) #1

attributes #0 = { argmemonly nofree nounwind willreturn writeonly }
attributes #1 = { nofree nounwind }
