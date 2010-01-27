	.file	"linux.s"
	.globl	f
f:
	pushl	%ebp
	movl	%esp,%ebp
        movl    8(%ebp),  %esi
        movl    12(%ebp), %edi
        pushl   %ebx

### This is where your code begins ...

# Are the images the same size? If not, skip to the end.

# figure out the size of image1.
# image 1, value 1
        movl	(%esi), %eax
# image 1, value 2
        movl	4(%esi), %ebx
	imull	%ebx, %eax
# eax now contains the size of image1.

## START IMAGE2
# figure out the size of image2
# image 2, value 1
        movl	(%edi), %ecx
# image 2, value 2
        movl	4(%edi), %ebx
	imull	%ebx, %ecx
# ecx now contains the size of image2.


	cmp	%eax, %ecx
	jne	wrongsize



# successfully done, but we need to skip the 'wrongsize' return value.
	movl	$42, %eax
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
