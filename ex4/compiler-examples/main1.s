	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str(%rip), %rdi

##  movl	$0, -4(%rbp)
##	movl	$7, -8(%rbp)
##	movl	-8(%rbp), %esi

    movq    $3, %rax    #3
    pushq   %rax        # push 3
    movq    $4,%rax    # 4
    movq    $2,%rbx    # 2
    subq    %rbx,%rax   # (4-2)
    popq    %rbx        # pop 3
    subq    %rax,%rbx   # 3-(4-2)
    movq    %rbx,%rsi   # print

	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"


.subsections_via_symbols
