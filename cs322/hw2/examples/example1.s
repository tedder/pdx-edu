	.file	"mac.s"
	.globl	_f
_f:
	pushl	%ebp
	movl	%esp,%ebp
        pushl   %ebx
        movl    8(%ebp), %ebx

### This is where your code begins ...

### Example 1: return the length of the input array in %eax

        movl    $0, %eax        # initialize length count in eax
        jmp     test
loop:   incl    %eax            # increment count
        addl    $4, %ebx        # and move to next array element

test:   movl    (%ebx), %ecx    # load array element
        cmpl    $0, %ecx        # test for end of array
        jne     loop            # repeat if we're not done ...

### This is where your code ends ...

        popl    %ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
