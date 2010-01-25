	.file	"mac.s"
	.globl	_f
_f:
	pushl	%ebp
	movl	%esp,%ebp
        pushl   %ebx
        movl    8(%ebp), %ebx

### This is where your code begins ...

### Example 4: return the average value of the numbers in the array.
### We're going to divide by the length of the array so it is nice to
### have the assumption stated that the array is not empty....

        movl    $1, %ecx        # ecx will count the number of elements
        movl    (%ebx), %eax    # eax will record the running total

loop:   addl    $4, %ebx        # move to next element in the array
        movl    (%ebx), %edx    # read array element
        cmpl    $0, %edx        # are we done?
        je      done
        addl    %edx, %eax      # add to running total
        incl    %ecx            # increment count
        jmp     loop

        # by some cunning, we've arranged that %edx will be zero when we
        # reach this part of the program, %eax will contain the total, and
        # %ecx will contain the count ... so we can divide and be done :-)
done:   idivl   %ecx            # quotient goes in %eax, as required ...

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
