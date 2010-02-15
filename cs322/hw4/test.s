	.file	"test.j"
	.globl	Main_main
System_0:
	.long	4
Main_0:
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
Fork_bat:
	pushl	%ebp
	movl	%esp,%ebp
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	imull	$2,%eax
	movl	12(%ebp),%ecx
	movl	%eax,8(%ecx)
l0:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$8,%eax
	jl	l0
	movl	$4,%eax
	movl	%ebp,%esp
	popl	%ebp
	ret
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
Fork_0:
	.long	12
	.long	Fork_bat
