.data
    v0:     .float 27.0
    v1:     .float 9.0
    time:   .float 2.0
    msg_1:  .asciiz "The car will take "
    msg_2:  .asciiz " seconds to slow down to the given final velocity.\n"

.text
main:
    # Initialize Values
    l.s     $f2, v0
    l.s     $f3. v1

    la $a0, msg_1
    addi $v0, $0, 4
    syscall

    # Perform v - u / t and result in f3
    sub.s   $f3, $f2, $f3
    l.s     $f2, time
    div.s	$f12, $f3, $f2

    # Move result to f12 for printing
    # v0 = 2 for print float
    add $v0, $0, 2
    syscall

    la $a0, msg_2
    addi $v0, $0, 4
    syscall

    jr $ra
    