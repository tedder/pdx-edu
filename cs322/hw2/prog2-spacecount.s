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
movl	$8, %eax
addl	%esi, %eax
# great. the ending position is now in eax.


#ebx stores the pointer to the current pixel.
	movl	$8, %ebx
	addl	%esi, %ebx
#ecx stores the number of spaces
	movl	$0, %ecx
# compare against a space (char 32)
testpixel:
	cmp    $32, (%ebx)
# if it isn't equal, leave.
	jne	notspace
# okay, we have a space. Add to our overall count.
yesspace:   ### only used as a debugging breakpoint
	#addl	$3, %ecx
	incl	%ecx

notspace:
	addl	$4, %ebx
	#incl	%ebx

# are we past the end? (need 'end' to be counted)
	cmp	%eax, %ebx
	jle	testpixel

# toss the result into eax.
	movl	%ecx, %eax
# DEBUG: toss the *address* last checked onto eax
	#movl	%ebx, %eax

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
