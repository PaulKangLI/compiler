.data

	a:  .quad
	b:	.quad
	c:	.quad
	d:	.quad
	e:	.quad
	f:	.quad
	g:	.quad
	h:	.quad
	i:	.quad
	j:	.quad
	k:	.quad
	l:	.quad
	m:	.quad
	n:	.quad
	o:	.quad
	p:	.quad
	q:	.quad
	r:	.quad
	s:	.quad
	t:	.quad
	u:	.quad
	v:	.quad
	w:	.quad
	x:	.quad
	y:	.quad
	z:	.quad

.text
.global _main
_main:
	pushq	$732
	popq	a
	pushq	$2684
	popq	b
L000:
	pushq	a
	pushq	b
	popq	%rbx
	popq	%rax
	xorq	%rcx, %rcx
                              	cmpq	%rbx, %rax
                              	setne	%ch
                              	pushq	%rcx
	popq	%rcx
	jecxz	L001
	pushq	a
	pushq	b
	popq	%rbx
	popq	%rax
	xorq	%rcx, %rcx
                              	cmpq	%rbx, %rax
                              	setg	%ch
                              	pushq	%rcx
	popq	%rcx
	jecxz	L002
	pushq	a
	pushq	b
	popq	%rbx
	popq	%rax
	subq	 %rbx, %rax
                              	pushq	%rax
	popq	a
	jmp	L003
L002:
	pushq	b
	pushq	a
	popq	%rbx
	popq	%rax
	subq	 %rbx, %rax
                              	pushq	%rax
	popq	b
L003:
	jmp	L000
L001:
	pushq	a
	pushq	$int
	call	printf
	pushq	a
	pushq	b
	call gcd
                        	pushq	%rax
	pushq	$int
	call	printf
mov $60, %rax
mov $2, %rdi
sysenter
