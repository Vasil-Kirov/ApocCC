; ModuleID = 'Test.apoc'
source_filename = "Test.apoc"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32"

@global_var = constant i64 12

define i32 @add(i32 %a, i32 %b) #0 {
entry:
  %b2 = alloca i32, align 4
  %a1 = alloca i32, align 4
  store i32 %a, ptr %a1, align 4
  store i32 %b, ptr %b2, align 4
  %0 = load i32, ptr %a1, align 4
  %1 = load i32, ptr %b2, align 4
  %2 = add i32 %0, %1
  ret i32 %2
}

define i32 @_apoc_init() #1 {
entry:
  %0 = call i32 @__original_main()
  ret i32 %0
}

declare [256 x i8] @foo() #2

define i32 @__original_main() #3 {
entry:
  ret i32 0
}

define void @get_num() #4 {
entry:
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  ret void
}

define dso_local i32 @main(i32 %0, ptr %1) #2 {
body:
  %2 = call i32 @__original_main()
  ret i32 %2
}

attributes #0 = { "target-features" "wasm-export-name"="add" }
attributes #1 = { "target-features" "wasm-export-name"="_apoc_init" }
attributes #2 = { "target-features" }
attributes #3 = { "target-features" "wasm-export-name"="main" }
attributes #4 = { "target-features" "wasm-export-name"="get_num" }
