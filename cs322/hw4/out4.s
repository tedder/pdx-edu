	.file	"hw4.j"
	.globl	Main_main
Fork_ping:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	$Fork_0
	call	new_object
	addl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	8(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,4(%ecx)
	movl	-4(%ebp),%eax
	movl	%ebp,%esp
	popl	%ebp
	ret
Fork_bat:
	pushl	%ebp
	movl	%esp,%ebp
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	imull	$2,%eax
	movl	12(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$8,%eax
	jng	l0
	movl	$4,%eax
	movl	%ebp,%esp
	popl	%ebp
	ret
l0:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	pushl	%eax
	movl	12(%ebp),%eax
	movl	4(%eax),%eax
	pushl	%eax
	movl	(%eax),%eax
	movl	4(%eax),%eax
	movl	8(%ebp),%ecx
	pushl	%ecx
	call	*%eax
	movl	%eax,%ecx
	addl	$8,%esp
	popl	%eax
	addl	%ecx,%eax
	movl	%ebp,%esp
	popl	%ebp
	ret
Fork_0:
	.long	12
	.long	Fork_bat
Knife_bat:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	%ebp,%esp
	popl	%ebp
	ret
Knife_0:
	.long	4
	.long	Knife_bat
System_0:
	.long	4
	.comm	v_Spoon_c,4
Spoon_begin:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	%eax,v_Spoon_c
	movl	%ebp,%esp
	popl	%ebp
	ret
Spoon_retr:
	pushl	%ebp
	movl	%esp,%ebp
	movl	v_Spoon_c,%eax
	movl	%ebp,%esp
	popl	%ebp
	ret
Spoon_pong:
	pushl	%ebp
	movl	%esp,%ebp
	movl	v_Spoon_c,%eax
	addl	$1,%eax
	movl	%eax,v_Spoon_c
	pushl	$Spoon_0
	call	new_object
	addl	$4,%esp
	movl	%ebp,%esp
	popl	%ebp
	ret
Spoon_0:
	.long	4
	.long	Knife_bat
Main_main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$5,%eax
	imull	$4,%eax
	addl	$3,%eax
	pushl	%eax
	call	Spoon_begin
	addl	$4,%esp
	movl	$3,%eax
	pushl	%eax
	movl	$2,%eax
	pushl	%eax
	call	Spoon_pong
	pushl	%eax
	call	Fork_ping
	addl	$8,%esp
	pushl	%eax
	call	Fork_ping
	addl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,%eax
	movl	%eax,-8(%ebp)
l1:
	movl	-8(%ebp),%eax
	cmpl	$6,%eax
	jnl	l2
	movl	$1,%eax
	movl	$2,%ecx
	pushl	%ecx
	pushl	%eax
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	(%eax),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	pushl	%ecx
	call	*%eax
	movl	%eax,%esi
	addl	$8,%esp
	popl	%eax
	popl	%ecx
	imull	%esi,%ecx
	addl	%ecx,%eax
	pushl	%eax
	call	System_out
	addl	$4,%esp
	movl	-8(%ebp),%eax
	addl	$1,%eax
	movl	%eax,-8(%ebp)
	jmp	l1
l2:
	call	Spoon_retr
	pushl	%eax
	call	System_out
	addl	$4,%esp
	movl	%ebp,%esp
	popl	%ebp
	ret
Main_0:
	.long	4
