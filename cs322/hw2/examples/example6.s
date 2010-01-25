	.file	"mac.s"
	.globl	_f
_f:
	pushl	%ebp
	movl	%esp,%ebp
        pushl   %ebx
        movl    8(%ebp), %ebx

### This is where your code begins ...

### Example 6: Sort the elements in the array into increasing order.
### We'll use a form of selection sort here, but any other sort
### algorithm would be ok instead.

sort:   movl    (%ebx), %eax    # get value at start of array
        cmpl    $0, %eax        # are we done?
        je      done

        movl    %ebx, %edx      # prepare to scan forward over array
scan:   addl    $4, %edx
        movl    (%edx), %ecx
        cmpl    $0, %ecx        # reached end of array?
        je      save
        cmpl    %eax, %ecx      # is this smaller than previous minimum?
        jnl     scan
        movl    %eax, (%edx)    # save previous smallest back in array
        movl    %ecx, %eax      # and move new smallest into eax
        jmp     scan

save:   movl    %eax, (%ebx)    # save smallest number at front of array
        addl    $4, %ebx        # now sort the rest of the array
        jmp     sort

done:   # the problem description doesn't specify what value should be
        # returned in %eax so we won't worry about it here ...

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
