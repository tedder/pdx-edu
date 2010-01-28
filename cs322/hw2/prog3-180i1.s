	.file	"linux.s"
	.globl	f
f:
	pushl	%ebp
	movl	%esp,%ebp
        movl    8(%ebp),  %esi
        movl    12(%ebp), %edi
        pushl   %ebx

### This is where your code begins ...

## Get the bitmap starting point in eax, push to the stack to free eax.
	movl	$8, %eax
	addl	%esi, %eax
	push	%eax
## Get the bitmap ending point in ebx.
# figure out the size of image1.
# image 1, value 1
        movl	(%esi), %eax
# image 1, value 2
        movl	4(%esi), %ebx
	imull	%ebx, %eax
# get the 4-byte width correct by multiplying the size.
	imull	$4, %eax
# great. the size of image1 is now in eax.
# Add the starting value of the image bitmap to get our bitmap ending point.
	addl	$8, %eax
	addl	%esi, %eax
# Move it to ebx, get our starting point back in eax.
	movl	%eax, %ebx
	popl	%eax
# Copy it across to use again later. Can't push onto the stack,
# we're using it to process our image.
	movl	%eax, %esi

# We'll use ebx (the 'starting point') as our current pixel pointer.
# Put the value of the pointer onto the stack.
pixel:
	pushl	(%eax)
# increment, see if we're done.
	addl	$4, %eax
	cmp	%eax, %ebx
	jg	pixel

# Okay, we've now pushed the first image onto the stack, both
# eax and ebx point at the end of the image. Copy the starting
# point into eax, and start unrolling the image (LIFO) from
# the beginning.
pixeldone: # debug only
	movl	%esi, %eax
unroll:
	popl	(%eax)
# increment, see if we're done.
	addl	$4, %eax
	cmp	%eax, %ebx
	jg	unroll

# Done! Return 1.
alldone:
	movl	$1, %eax

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
