	.file	"mac.s"
	.globl	_f
_f:
	pushl	%ebp
	movl	%esp,%ebp
        pushl   %ebx
        movl    8(%ebp), %ebx

### This is where your code begins ...

### Example 5: Reverse the order of the elements in the array,
### without using any additional storage.  This requires a
### little more algorithmic sophistication ...

### First we'll search to the end of the array to find the address
### of the last array element in %edx:

        movl    %ebx, %edx      # initialize %edx at start of array
loop1:  addl    $4, %edx        # move to next array element
        movl    (%edx), %eax    # read in array element
        cmpl    $0, %eax        # are we done?
        jne     loop1
        # At this point, %edx holds the address of the zero element
        subl    $4, %edx        # adjust %edx to point to the last element

### Our next step is to swap pairs of elements, exchanging the value
### in memory at %ebx with the value in memory at %edx.  After each
### exchange, we add $4 to %ebx and subtract $4 from %edx.  This
### process stops when %ebx >= %edx, at which point we can be sure
### that the array has been reversed:

loop2:  cmpl    %edx, %ebx      # compare pointers at two ends of array
        jnl     done
        movl    (%ebx), %ecx    # read values from each end of the array
        movl    (%edx), %eax
        movl    %eax, (%ebx)    # write them back in reverse order
        movl    %ecx, (%edx)
        addl    $4, %ebx        # adjust pointers at each end of array
        subl    $4, %edx
        jmp     loop2           # and repeat ...

done:   # the problem description doesn't specify what value should be
        # returned in %eax so we won't worry about it here ...

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
