    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    nop
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    je	L6
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movl	$0, %eax
    jmp	L1
L3:
    movq	-8(%rbp), %rax
    jmp	L1
L6:
L1:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L8
L9:
    addq	$1, -8(%rbp)
L8:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L9
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L12:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L12
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	memcmp
memcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
    .comm	optab,10,8
    .comm	buf,10,8
    .globl	execute
execute:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, %rax
    movl	$L46, %ebx
    movq	$buf, -16(%rbp)
    testq	%rax, %rax
    jne	L46
    movl	$0, -20(%rbp)
    jmp	L48
L49:
    movl	-20(%rbp), %eax
    cltq
    movq	tab2418(,%rax,8), %rax
    movq	%rax, %rdx
    movq	%rbx, %rax
    subq	%rax, %rdx
    movq	%rdx, %rax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    cltq
    movw	%dx, optab(%rax,%rax)
    addl	$1, -20(%rbp)
L48:
    cmpl	$2, -20(%rbp)
    jle	L49
    jmp	L50
L46:
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movb	$120, (%rdx)
    movq	%rax, %rdx
    leaq	2(%rdx), %rax
    movzwl	(%rdx), %edx
    movswq	%dx, %rdx
    addq	%rbx, %rdx
    nop
L52:
    jmp	%rdx
L51:
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movb	$121, (%rdx)
    movq	%rax, %rdx
    leaq	2(%rdx), %rax
    movzwl	(%rdx), %edx
    movswq	%dx, %rdx
    addq	%rbx, %rdx
    jmp	L52
L53:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movb	$122, (%rax)
    movq	-16(%rbp), %rax
    movb	$0, (%rax)
    nop
L50:
    popq	%rbx
    popq	%rbp
    ret
    .comm	p,10,8
    .section	.rodata
LC0:
    .string	"xyxyz"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %edi
    movl	$0, %eax
    call	execute
    movzwl	optab + 2(%rip), %eax
    movw	%ax, p(%rip)
    movzwl	optab(%rip), %eax
    movw	%ax, p + 2(%rip)
    movzwl	optab + 2(%rip), %eax
    movw	%ax, p + 4(%rip)
    movzwl	optab + 4(%rip), %eax
    movw	%ax, p + 6(%rip)
    movl	$p, %edi
    movl	$0, %eax
    call	execute
    movl	$LC0, %esi
    movl	$buf, %edi
    call	strcmp
    testl	%eax, %eax
    je	L55
    call	abort
L55:
    movl	$0, %edi
    call	exit
    .data
tab2418:
    .quad	L46
    .quad	L51
    .quad	L53
