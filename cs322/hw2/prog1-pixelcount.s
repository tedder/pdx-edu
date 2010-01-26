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
	imull	%ebx, %eax
# move to ecx so we can use eax and ebx for the second calculation.
	movl	%eax, %ecx
# image 2, value 1
	movl	(%edi), %eax
# image 2, value 2
	movl	4(%edi), %ebx
	imull	%ebx, %eax
# add the two image sizes together
	addl	%ecx, %eax

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
