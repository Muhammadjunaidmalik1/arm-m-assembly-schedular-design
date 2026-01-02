.section .vectors
vector_table:
    .word 0xABC0
    .word reset_handler
    .zero 400

    .section .text
    .align 1
    .type reset_handler, %function

reset_handler:
    mov r1, #7  // # immidiate value , if # followed by hexa decimal value it is address , if decimal its a number
    mov r2, #3
    add r3, r1, r2  // Addition

    b junaid

junaid2:

    sub r4, r1, r2 // subtract

    b end

junaid:
    mov r5, r3
    lsl r6, r5, #2 // logical shift

    b junaid2

end:
    bl .