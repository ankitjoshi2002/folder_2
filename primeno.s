.file	"primeno.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	ZStL8_ioinit
	.comm	ZStL8_ioinit,1,1
.LC0:
	.string	"enter a number \n"
.LC1:
	.string	"is a prime number"
.LC2:
	.string	"is not prime number"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1751:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -12(%rbp)
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZNSirsERi@PLT
	movl	$2, -16(%rbp)
.L4:
	cvtsi2sdl	-16(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ZSt4sqrtIiEN9gnu_cxx11enable_ifIXsrSt12is_integerIT_E7valueEdE6typeES3
	comisd	-40(%rbp), %xmm0
	setnb	%al
	testb	%al, %al
	je	.L2
	movl	-20(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L3
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	addl	$1, -16(%rbp)
	jmp	.L4
.L2:
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	jg	.L5
	movl	$0, -12(%rbp)
.L5:
	cmpl	$1, -12(%rbp)
	jne	.L6
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L7
.L6:
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L7:
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1751:
	.size	main, .-main
	.section	.text.ZSt4sqrtIiEN9gnu_cxx11enable_ifIXsrSt12is_integerIT_E7valueEdE6typeES3,"axG",@progbits,ZSt4sqrtIiEN9gnu_cxx11enable_ifIXsrSt12is_integerIT_E7valueEdE6typeES3,comdat
	.weak	ZSt4sqrtIiEN9gnu_cxx11enable_ifIXsrSt12is_integerIT_E7valueEdE6typeES3
	.type	ZSt4sqrtIiEN9gnu_cxx11enable_ifIXsrSt12is_integerIT_E7valueEdE6typeES3, @function
ZSt4sqrtIiEN9gnu_cxx11enable_ifIXsrSt12is_integerIT_E7valueEdE6typeES3:
.LFB1989:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	call	sqrt@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1989:
	.size	ZSt4sqrtIiEN9gnu_cxx11enable_ifIXsrSt12is_integerIT_E7valueEdE6typeES3, .-ZSt4sqrtIiEN9gnu_cxx11enable_ifIXsrSt12is_integerIT_E7valueEdE6typeES3
	.text
	.type	Z41_static_initialization_and_destruction_0ii, @function
Z41_static_initialization_and_destruction_0ii:
.LFB2236:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L14
	cmpl	$65535, -8(%rbp)
	jne	.L14
	leaq	ZStL8_ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	ZStL8_ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2236:
	.size	Z41static_initialization_and_destruction_0ii, .-_Z41_static_initialization_and_destruction_0ii
	.type	GLOBAL_sub_I_main, @function
GLOBAL_sub_I_main:
.LFB2237:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	Z41_static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2237:
.size	GLOBALsub_I_main, .-_GLOBAL_sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	GLOBAL_sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3