	.text
	.file	"Test.apoc"
	.globaltype	__stack_pointer, i32
	.functype	add (i32, i32) -> (i32)
	.export_name	add, add
	.functype	_apoc_init () -> (i32)
	.export_name	_apoc_init, _apoc_init
	.functype	foo (i32) -> ()
	.functype	__original_main () -> (i32)
	.export_name	__original_main, main
	.functype	get_num () -> ()
	.export_name	get_num, get_num
	.functype	main (i32, i32) -> (i32)
	.section	.text.add,"",@
	.globl	add
	.type	add,@function
add:
	.functype	add (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	local.get	0
	i32.store	8
	local.get	4
	local.get	1
	i32.store	12
	local.get	4
	i32.load	8
	local.set	5
	local.get	4
	i32.load	12
	local.set	6
	local.get	5
	local.get	6
	i32.add 
	local.set	7
	local.get	7
	return
	end_function
.Lfunc_end0:
	.size	add, .Lfunc_end0-add

	.section	.text._apoc_init,"",@
	.globl	_apoc_init
	.type	_apoc_init,@function
_apoc_init:
	.functype	_apoc_init () -> (i32)
	.local  	i32
	call	__original_main
	local.set	0
	local.get	0
	return
	end_function
.Lfunc_end1:
	.size	_apoc_init, .Lfunc_end1-_apoc_init

	.section	.text.__original_main,"",@
	.globl	__original_main
	.type	__original_main,@function
__original_main:
	.functype	__original_main () -> (i32)
	.local  	i32
	i32.const	0
	local.set	0
	local.get	0
	return
	end_function
.Lfunc_end2:
	.size	__original_main, .Lfunc_end2-__original_main

	.section	.text.get_num,"",@
	.globl	get_num
	.type	get_num,@function
get_num:
	.functype	get_num () -> ()
	.local  	i32, i32, i32, i64
	global.get	__stack_pointer
	local.set	0
	i32.const	16
	local.set	1
	local.get	0
	local.get	1
	i32.sub 
	local.set	2
	i64.const	0
	local.set	3
	local.get	2
	local.get	3
	i64.store	8:p2align=2
	return
	end_function
.Lfunc_end3:
	.size	get_num, .Lfunc_end3-get_num

	.section	.text.main,"",@
	.globl	main
	.type	main,@function
main:
	.functype	main (i32, i32) -> (i32)
	.local  	i32
	call	__original_main
	local.set	2
	local.get	2
	return
	end_function
.Lfunc_end4:
	.size	main, .Lfunc_end4-main

	.type	global_var,@object
	.section	.rodata.global_var,"",@
	.globl	global_var
	.p2align	3
global_var:
	.int64	12
	.size	global_var, 8

