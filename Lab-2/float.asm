.data
    area:   .float 6.0
    height: .float 4.0
    base:   .float 0.0
    two:    .float 2.0
    baseIs: .asciiz "Calculated Base is :"
    unit:   .asciiz  "cm\n"
.text
main:
    l.s     $f2, area
    l.s     $f3, height
    l.s     $f1, two
    div.s   $f12, $f2, $f3
    mul.s   $f12, $f12, $f1
    li    $v0, 2
    syscall

    jr      $ra    