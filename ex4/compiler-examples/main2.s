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

    movq	$0,%rax		# 0
    pushq	%rax		# push 0
    movq    $1,%rax 	# 1
    movq    $3,%rbx 	# 3
    movq    $2,%rcx 	# 2
    subq    %rcx,%rbx	# 3-2
    addq    %rbx,%rax	# 1+(3-2)
    pushq   %rax        # push 0,(1+(3-2))
    movq    $0,%rax		# 0
    movq    $1,%rbx		# 1
    movq    $2,%rcx		# 2
    movq    $3,%rdx		# 3
    subq    %rdx,%rcx	# 2-3
    addq    %rcx,%rbx	# 1+(2-3)
    addq    %rbx,%rax	# 0+(1+(2-3))
    popq    %rbx		# pop 1+(3-2)
    subq    %rax,%rbx   # 1+(3-2) - (0+(1+(2-3)))
    popq    %rax		# pop 0
    addq    %rbx,%rax	# 0+(1+(3-2))-(0+(1+(2-3)))

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
