    .section	.textunlikely,"ax",@progbits
LCOLDB0:
    .text
LHOTB0:
    .globl	direct
direct:
    imull	%edi, %edi
    vxorpd	%xmm0, %xmm0, %xmm0
    vcvtsi2sd	%edi, %xmm0, %xmm0
    ret
    .section	.textunlikely
LCOLDE0:
    .text
LHOTE0:
    .section	.textunlikely
LCOLDB1:
    .text
LHOTB1:
    .globl	memcmp
memcmp:
    leaq	-1(%rdx), %r8
    testq	%rdx, %rdx
    je	L7
    movzbl	(%rdi), %edx
    movzbl	(%rsi), %ecx
    cmpb	%dl, %cl
    jne	L4
    xorl	%eax, %eax
    jmp	L5
L6:
    movzbl	1(%rdi,%rax), %edx
    addq	$1, %rax
    movzbl	(%rsi,%rax), %ecx
    cmpb	%cl, %dl
    jne	L4
L5:
    cmpq	%r8, %rax
    jne	L6
L7:
    xorl	%eax, %eax
    ret
L4:
    movzbl	%dl, %eax
    subl	%ecx, %eax
    ret
    .section	.textunlikely
LCOLDE1:
    .text
LHOTE1:
    .section	.textunlikely
LCOLDB2:
    .text
LHOTB2:
    .globl	__stack_chk_fail
__stack_chk_fail:
    movq $-1, %rax
    jmp %rax
    
    ret
    .section	.textunlikely
LCOLDE2:
    .text
LHOTE2:
    .section	.textunlikely
LCOLDB3:
    .text
LHOTB3:
    .globl	exit
exit:
    movq $-1, %rax
    jmp %rax
    
    ret
    .section	.textunlikely
LCOLDE3:
    .text
LHOTE3:
    .section	.textunlikely
LCOLDB4:
    .text
LHOTB4:
    .globl	abort
abort:
    movq $-1, %rax
    jmp %rax
    
    ret
    .section	.textunlikely
LCOLDE4:
    .text
LHOTE4:
    .section	.textunlikely
LCOLDB5:
    .text
LHOTB5:
    .globl	memset
memset:
    leaq	(%rdi,%rdx), %r8
    movq	%rdi, %rax
    movq	%rdi, %rcx
    testq	%rdx, %rdx
    je	L21
L18:
    addq	$1, %rcx
    movb	%sil, -1(%rcx)
    cmpq	%r8, %rcx
    jne	L18
L21:
    ret
    .section	.textunlikely
LCOLDE5:
    .text
LHOTE5:
    .section	.textunlikely
LCOLDB6:
    .text
LHOTB6:
    .globl	memcpy
memcpy:
    movq	%rdi, %rax
    xorl	%ecx, %ecx
    testq	%rdx, %rdx
    je	L29
L26:
    movzbl	(%rsi,%rcx), %r8d
    movb	%r8b, (%rax,%rcx)
    addq	$1, %rcx
    cmpq	%rdx, %rcx
    jne	L26
L29:
    ret
    .section	.textunlikely
LCOLDE6:
    .text
LHOTE6:
    .section	.textunlikely
LCOLDB7:
    .text
LHOTB7:
    .globl	free
free:
    ret
    .section	.textunlikely
LCOLDE7:
    .text
LHOTE7:
    .section	.textunlikely
LCOLDB8:
    .text
LHOTB8:
    .globl	isprint
isprint:
    movl	%edi, %edx
    movl	$1, %eax
    andl	$-33, %edx
    subl	$65, %edx
    cmpl	$25, %edx
    jbe	L34
    subl	$48, %edi
    xorl	%eax, %eax
    cmpl	$9, %edi
    setbe	%al
L34:
    ret
    .section	.textunlikely
LCOLDE8:
    .text
LHOTE8:
    .section	.textunlikely
LCOLDB9:
    .text
LHOTB9:
    .globl	broken
broken:
    movq	%rdi, %rdx
    xorl	%eax, %eax
    movl	%esi, %edi
    jmp	%rdx
    .section	.textunlikely
LCOLDE9:
    .text
LHOTE9:
    .section	.textunlikely
LCOLDB11:
    .section	.textstartup,"ax",@progbits
LHOTB11:
    .globl	main
.globl _start
_start:
    subq	$8, %rsp
    movl	$2, %esi
    movl	$direct, %edi
    call	broken
    vucomisd	LC10(%rip), %xmm0
    jp	L39
    jne	L39
    xorl	%eax, %eax
    addq	$8, %rsp
    ret
L39:
    call	abort
    .section	.textunlikely
LCOLDE11:
    .section	.textstartup
LHOTE11:
    .section	.rodatacst8,"aM",@progbits,8
LC10:
    .long	0
    .long	1074790400
