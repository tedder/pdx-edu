	.file	"linux.s"
	.globl	f
f:
	pushl	%ebp
	movl	%esp,%ebp
        movl    8(%ebp),  %esi
        movl    12(%ebp), %edi
        pushl   %ebx

### This is where your code begins ...


## START SIZE TEST
# Are the images the same size? If not, skip to the end.

# figure out the size of image1.
# image 1, value 1
        movl	(%esi), %eax
# image 1, value 2
        movl	4(%esi), %ebx
	imull	%ebx, %eax
# eax now contains the size of image1.

# figure out the size of image2
# image 2, value 1
        movl	(%edi), %ecx
# image 2, value 2
        movl	4(%edi), %ebx
	imull	%ebx, %ecx
# ecx now contains the size of image2.

# compare, make sure they are the same size
	cmp	%eax, %ecx
	jne	wrongsize

# save off the size of image2, we'll use it later.
	pushl	%ecx

## END SIZE TEST


## Copy image2 to image1
# make ebx be one past the ending position of image1 (eax is the size of image1)
	movl	%eax, %ebx
	imull	$4, %ebx
	addl	$8, %ebx
        addl	%esi, %ebx

# done with esi, put it on the stack so we can use that register.
	pushl	%esi

# make eax be the starting position of image1
# NOTE: tried using "movl 8(%esi), %eax", couldn't get it to work.
        movl	%esi, %eax
	addl	$8, %eax

# make ecx be the starting position of image2
        movl	%edi, %ecx
	addl	$8, %ecx

# copy pixel of image2 to image1, using %esi as an intermediary.
copy:
	movl	(%ecx), %esi
	movl	%esi, (%eax)

# bump up both pointers
	addl	$4, %eax
	addl	$4, %ecx

# is eax > ebx? we're done.
	cmp	%eax, %ebx
	jg	copy


# successful, but we need to skip the 'wrongsize' return value
# and restore registers.
	popl	%esi
	movl	$1, %eax
	jmp	done

# wrongsize retval
wrongsize:
	movl	$0, %eax

# we're out of here.
done:

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
