	.file	"linux.s"
	.globl	f
f:
	pushl	%ebp
	movl	%esp,%ebp
        movl    8(%ebp),  %esi
        movl    12(%ebp), %edi
        pushl   %ebx

### This is where your code begins ...

# Using an unrolled loop to solve this. No reason for the overhead of a
# loop for loop iterations == 2.

## START IMAGE1
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
# great. the ending position is now in eax.


#ebx stores the pointer to the current pixel.
	movl	$8, %ebx
	addl	%esi, %ebx
#ecx stores the number of spaces
	movl	$0, %ecx
# compare against a space (char 32)
testpixel:
	cmpl    $32, (%ebx)
# if it isn't equal, leave.
	jne	notspace
# okay, we have a space. Add to our overall count.
yesspace:   ### only used as a debugging breakpoint
	incl	%ecx

notspace:
	addl	$4, %ebx
	#incl	%ebx

# are we past the end? (need 'end' to be counted)
	cmp	%eax, %ebx
	jle	testpixel

done:   ### Debug breakpoint only
# toss the result onto the stack. We'll add it at the end.
	push	%ecx
## END IMAGE1


## START IMAGE2
# figure out the size of image2
# image 2, value 1
        movl	(%edi), %eax
# image 2, value 2
        movl	4(%edi), %ebx
	imull	%ebx, %eax
# get the 4-byte width correct by multiplying the size.
	imull	$4, %eax
# great. the size of image1 is now in eax.
# Add the starting value of the image bitmap to get our bitmap ending point.
	addl	$8, %eax
	addl	%edi, %eax
# great. the ending position is now in eax.


#ebx stores the pointer to the current pixel.
	movl	$8, %ebx
	addl	%edi, %ebx
#ecx stores the number of spaces
	movl	$0, %ecx
# compare against a space (char 32)
testpixel2:
	cmpl    $32, (%ebx)
# if it isn't equal, leave.
	jne	notspace2
# okay, we have a space. Add to our overall count.
yesspace2:   ### only used as a debugging breakpoint
	incl	%ecx

notspace2:
	addl	$4, %ebx
	#incl	%ebx

# are we past the end? (need 'end' to be counted)
	cmp	%eax, %ebx
	jle	testpixel2

done2:   ### Debug breakpoint only
# toss the result into eax.
	movl	%ecx, %eax
## END IMAGE2

# pull the previous result, add it to the current one.
	pop	%ecx
	addl	%ecx, %eax

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
