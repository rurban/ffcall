	.text
.globl ___builtin_avcall
___builtin_avcall:
LFB2:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	pushq	%rbx
LCFI2:
	subq	$296, %rsp
LCFI3:
	movq	%rdi, -72(%rbp)
	movq	%rsp, %rax
	subq	$2048, %rax
	movq	%rax, %rsp
	movq	%rsp, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %r10
	movq	-72(%rbp), %rax
	addq	$176, %rax
	movq	%r10, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %r10
	movq	-72(%rbp), %rax
	addq	$112, %rax
	movq	%r10, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	movl	%eax, -24(%rbp)
	movq	$0, -48(%rbp)
	jmp	L2
L3:
	movq	-48(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %r11
	addq	-40(%rbp), %r11
	movq	-48(%rbp), %r10
	movq	-72(%rbp), %rax
	movq	176(%rax,%r10,8), %rax
	movq	%rax, (%r11)
	incq	-48(%rbp)
L2:
	movl	-20(%rbp), %eax
	cltq
	cmpq	-48(%rbp), %rax
	jg	L3
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %r8
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %r9
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$13, %eax
	jne	L5
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	cmpl	$7, -24(%rbp)
	jle	L7
	movq	-72(%rbp), %rax
	movsd	168(%rax), %xmm8
	movsd	%xmm8, -288(%rbp)
	jmp	L9
L7:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -288(%rbp)
L9:
	cmpl	$6, -24(%rbp)
	jle	L10
	movq	-72(%rbp), %rax
	movsd	160(%rax), %xmm8
	movsd	%xmm8, -280(%rbp)
	jmp	L12
L10:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -280(%rbp)
L12:
	cmpl	$5, -24(%rbp)
	jle	L13
	movq	-72(%rbp), %rax
	movsd	152(%rax), %xmm8
	movsd	%xmm8, -272(%rbp)
	jmp	L15
L13:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -272(%rbp)
L15:
	cmpl	$4, -24(%rbp)
	jle	L16
	movq	-72(%rbp), %rax
	movsd	144(%rax), %xmm8
	movsd	%xmm8, -264(%rbp)
	jmp	L18
L16:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -264(%rbp)
L18:
	cmpl	$3, -24(%rbp)
	jle	L19
	movq	-72(%rbp), %rax
	movsd	136(%rax), %xmm8
	movsd	%xmm8, -256(%rbp)
	jmp	L21
L19:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -256(%rbp)
L21:
	cmpl	$2, -24(%rbp)
	jle	L22
	movq	-72(%rbp), %rax
	movsd	128(%rax), %xmm8
	movsd	%xmm8, -248(%rbp)
	jmp	L24
L22:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -248(%rbp)
L24:
	cmpl	$1, -24(%rbp)
	jle	L25
	movq	-72(%rbp), %rax
	movsd	120(%rax), %xmm8
	movsd	%xmm8, -240(%rbp)
	jmp	L27
L25:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -240(%rbp)
L27:
	cmpl	$0, -24(%rbp)
	jle	L28
	movq	-72(%rbp), %rax
	movsd	112(%rax), %xmm8
	movsd	%xmm8, -232(%rbp)
	jmp	L30
L28:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -232(%rbp)
L30:
	movsd	-288(%rbp), %xmm7
	movsd	-280(%rbp), %xmm6
	movsd	-272(%rbp), %xmm5
	movsd	-264(%rbp), %xmm4
	movsd	-256(%rbp), %xmm3
	movsd	-248(%rbp), %xmm2
	movsd	-240(%rbp), %xmm1
	movsd	-232(%rbp), %xmm0
	movl	$8, %eax
	call	*-296(%rbp)
	movaps	%xmm0, %xmm8
	movq	-304(%rbp), %rax
	movss	%xmm8, (%rax)
	jmp	L31
L5:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$14, %eax
	jne	L32
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	cmpl	$7, -24(%rbp)
	jle	L34
	movq	-72(%rbp), %rax
	movsd	168(%rax), %xmm8
	movsd	%xmm8, -208(%rbp)
	jmp	L36
L34:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -208(%rbp)
L36:
	cmpl	$6, -24(%rbp)
	jle	L37
	movq	-72(%rbp), %rax
	movsd	160(%rax), %xmm8
	movsd	%xmm8, -200(%rbp)
	jmp	L39
L37:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -200(%rbp)
L39:
	cmpl	$5, -24(%rbp)
	jle	L40
	movq	-72(%rbp), %rax
	movsd	152(%rax), %xmm8
	movsd	%xmm8, -192(%rbp)
	jmp	L42
L40:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -192(%rbp)
L42:
	cmpl	$4, -24(%rbp)
	jle	L43
	movq	-72(%rbp), %rax
	movsd	144(%rax), %xmm8
	movsd	%xmm8, -184(%rbp)
	jmp	L45
L43:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -184(%rbp)
L45:
	cmpl	$3, -24(%rbp)
	jle	L46
	movq	-72(%rbp), %rax
	movsd	136(%rax), %xmm8
	movsd	%xmm8, -176(%rbp)
	jmp	L48
L46:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -176(%rbp)
L48:
	cmpl	$2, -24(%rbp)
	jle	L49
	movq	-72(%rbp), %rax
	movsd	128(%rax), %xmm8
	movsd	%xmm8, -168(%rbp)
	jmp	L51
L49:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -168(%rbp)
L51:
	cmpl	$1, -24(%rbp)
	jle	L52
	movq	-72(%rbp), %rax
	movsd	120(%rax), %xmm8
	movsd	%xmm8, -160(%rbp)
	jmp	L54
L52:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -160(%rbp)
L54:
	cmpl	$0, -24(%rbp)
	jle	L55
	movq	-72(%rbp), %rax
	movsd	112(%rax), %xmm8
	movsd	%xmm8, -152(%rbp)
	jmp	L57
L55:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -152(%rbp)
L57:
	movsd	-208(%rbp), %xmm7
	movsd	-200(%rbp), %xmm6
	movsd	-192(%rbp), %xmm5
	movsd	-184(%rbp), %xmm4
	movsd	-176(%rbp), %xmm3
	movsd	-168(%rbp), %xmm2
	movsd	-160(%rbp), %xmm1
	movsd	-152(%rbp), %xmm0
	movl	$8, %eax
	call	*-216(%rbp)
	movapd	%xmm0, %xmm8
	movq	-224(%rbp), %rax
	movsd	%xmm8, (%rax)
	jmp	L31
L32:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpl	$7, -24(%rbp)
	jle	L58
	movq	-72(%rbp), %rax
	movsd	168(%rax), %xmm8
	movsd	%xmm8, -136(%rbp)
	jmp	L60
L58:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -136(%rbp)
L60:
	cmpl	$6, -24(%rbp)
	jle	L61
	movq	-72(%rbp), %rax
	movsd	160(%rax), %xmm8
	movsd	%xmm8, -128(%rbp)
	jmp	L63
L61:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -128(%rbp)
L63:
	cmpl	$5, -24(%rbp)
	jle	L64
	movq	-72(%rbp), %rax
	movsd	152(%rax), %xmm8
	movsd	%xmm8, -120(%rbp)
	jmp	L66
L64:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -120(%rbp)
L66:
	cmpl	$4, -24(%rbp)
	jle	L67
	movq	-72(%rbp), %rax
	movsd	144(%rax), %xmm8
	movsd	%xmm8, -112(%rbp)
	jmp	L69
L67:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -112(%rbp)
L69:
	cmpl	$3, -24(%rbp)
	jle	L70
	movq	-72(%rbp), %rax
	movsd	136(%rax), %xmm8
	movsd	%xmm8, -104(%rbp)
	jmp	L72
L70:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -104(%rbp)
L72:
	cmpl	$2, -24(%rbp)
	jle	L73
	movq	-72(%rbp), %rax
	movsd	128(%rax), %xmm8
	movsd	%xmm8, -96(%rbp)
	jmp	L75
L73:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -96(%rbp)
L75:
	cmpl	$1, -24(%rbp)
	jle	L76
	movq	-72(%rbp), %rax
	movsd	120(%rax), %xmm8
	movsd	%xmm8, -88(%rbp)
	jmp	L78
L76:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -88(%rbp)
L78:
	cmpl	$0, -24(%rbp)
	jle	L79
	movq	-72(%rbp), %rax
	movsd	112(%rax), %xmm8
	movsd	%xmm8, -80(%rbp)
	jmp	L81
L79:
	xorpd	%xmm8, %xmm8
	movsd	%xmm8, -80(%rbp)
L81:
	movsd	-136(%rbp), %xmm7
	movsd	-128(%rbp), %xmm6
	movsd	-120(%rbp), %xmm5
	movsd	-112(%rbp), %xmm4
	movsd	-104(%rbp), %xmm3
	movsd	-96(%rbp), %xmm2
	movsd	-88(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	movl	$8, %eax
	call	*-144(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	je	L31
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	L83
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movq	%rax, (%r10)
	jmp	L31
L83:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	L85
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movb	%al, (%r10)
	jmp	L31
L85:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$3, %eax
	jne	L87
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movb	%al, (%r10)
	jmp	L31
L87:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$4, %eax
	jne	L89
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movb	%al, (%r10)
	jmp	L31
L89:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$5, %eax
	jne	L91
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movw	%ax, (%r10)
	jmp	L31
L91:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$6, %eax
	jne	L93
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movw	%ax, (%r10)
	jmp	L31
L93:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$7, %eax
	jne	L95
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movl	%eax, (%r10)
	jmp	L31
L95:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$8, %eax
	jne	L97
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movl	%eax, (%r10)
	jmp	L31
L97:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$9, %eax
	jne	L99
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movq	%rax, (%r10)
	jmp	L31
L99:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$10, %eax
	jne	L101
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movq	%rax, (%r10)
	jmp	L31
L101:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$11, %eax
	jne	L103
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movq	%rax, (%r10)
	jmp	L31
L103:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$12, %eax
	jne	L105
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movq	%rax, (%r10)
	jmp	L31
L105:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$15, %eax
	jne	L107
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movq	%rax, (%r10)
	jmp	L31
L107:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$16, %eax
	jne	L31
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L110
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$1, %rax
	jne	L112
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%r10)
	jmp	L31
L112:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$2, %rax
	jne	L115
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, (%r10)
	jmp	L31
L115:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$4, %rax
	jne	L117
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%r10)
	jmp	L31
L117:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$8, %rax
	jne	L119
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%r10)
	jmp	L31
L119:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movl	%eax, -28(%rbp)
	jmp	L121
L122:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	(%r10,%rax), %r11
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	leaq	(%r10,%rax), %rax
	movq	(%rax), %rax
	movq	%rax, (%r11)
L121:
	decl	-28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	L122
	jmp	L31
L110:
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	L31
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$1, %rax
	jne	L124
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movb	%al, (%r10)
	jmp	L31
L124:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$2, %rax
	jne	L126
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movw	%ax, (%r10)
	jmp	L31
L126:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$4, %rax
	jne	L128
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movl	%eax, (%r10)
	jmp	L31
L128:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$8, %rax
	jne	L130
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movq	%rax, (%r10)
	jmp	L31
L130:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$16, %rax
	jne	L31
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %r10
	movq	-48(%rbp), %rax
	movq	%rax, (%r10)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	8(%rax), %r10
	movq	-56(%rbp), %rax
	movq	%rax, (%r10)
L31:
	movq	%rsp, %rax
	addq	$2048, %rax
	movq	%rax, %rsp
	movl	$0, %eax
	addq	$296, %rsp
	popq	%rbx
	leave
	ret
LFE2:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
.globl ___builtin_avcall.eh
___builtin_avcall.eh:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB2-.
	.set L$set$2,LFE2-LFB2
	.quad L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI0-LFB2
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$5,LCFI3-LCFI1
	.long L$set$5
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE1:
	.subsections_via_symbols
