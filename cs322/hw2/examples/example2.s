	.file	"mac.s"
	.globl	_f
_f:
	pushl	%ebp
	movl	%esp,%ebp
        pushl   %ebx
        movl    8(%ebp), %ebx

### This is where your code begins ...

### Example 2: return the largest number from the array in %eax
### We've been told that it's ok to assume that the array is nonempty ...

        movl    (%ebx), %eax    # get the first element in the array
loop:   addl    $4, %ebx        # move to the next element
        movl    (%ebx), %ecx    # load next array element
        cmpl    $0, %ecx        # end of the array?
        je      done
        cmpl    %ecx, %eax      # compare ecx with largest so far (%eax)
        jnl     loop            # continue if %eax still largest
        movl    %ecx, %eax      # we've found a new largest value
        jmp     loop
done:

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
