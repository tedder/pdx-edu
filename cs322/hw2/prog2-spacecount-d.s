	.file	"linux.s"
	.globl	f
f:
	pushl	%ebp
	movl	%esp,%ebp
        movl    8(%ebp),  %esi
        movl    12(%ebp), %edi
        pushl   %ebx

### This is where your code begins ...

# figure out the size of image1.
# image 1, value 1
        movl	(%esi), %eax
# image 1, value 2
        movl	4(%esi), %ebx
	imull	%ebx, %eax
# great. the size of image1 is now in eax.
# Add the starting value of the image bitmap to get our bitmap ending point.
#movl	8(%esi), %eax
movl	%esi, %eax
addl	$8, %eax
# great. the ending position is now in eax.

movl	(%eax),%eax

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
