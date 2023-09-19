	.file	"EulerPi.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Computed value of e^(i*pi/4) is "
.LC1:
	.string	"pi = "
.LC2:
	.string	"\n%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$256, %edi
	call	mpfr_set_default_prec@PLT
	leaq	-144(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	mpc_init2@PLT
	leaq	-80(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	mpc_init2@PLT
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_init@PLT
	leaq	-176(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	mpfr_const_pi@PLT
	leaq	-176(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpc_set_fr@PLT
	leaq	-80(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	$51, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	mpc_mul_i@PLT
	leaq	-80(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movl	$51, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	mpc_div_ui@PLT
	leaq	-80(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpc_exp@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	leaq	-144(%rbp), %rdx
	movl	$51, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	mpc_out_str@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	leaq	-176(%rbp), %rdx
	movl	$51, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	__gmpfr_out_str@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
