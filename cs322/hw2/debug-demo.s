	.file	"linux.s"
	.globl	f
f:
	pushl	%ebp
	movl	%esp,%ebp
        movl    8(%ebp),  %esi
        movl    12(%ebp), %edi
        pushl   %ebx

### This is where your code begins ...

# image 1, value 1
        movl	(%esi), %eax
# image 1, value 2
        movl	4(%esi), %ebx
step1:
	imull	%ebx, %eax
	movl	$0, %eax
	movl	(%eax), %ebx


### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
