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

class System {
  static TODO a;   # TODO .long	4
  static Spoon g;  # TODO .comm	v_Spoon_c,4
}

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
  static void main()
8 from stack pointer
	subl	$8,%esp

  Spoon.begin(23)
  local = Fork.ping(Spoon.pong(3, 2))
  local2 = 0;

l1:
  for (i = 0; i < 6; 
local.bat(1, 2, i)

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
