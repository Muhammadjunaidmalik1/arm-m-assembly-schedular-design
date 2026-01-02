.section .vectors
vector_table:
    .word 0x20001000
    .word reset_handler
    .zero 400

    .section .text
    .align 1
    .type reset_handler, %function

reset_handler:
    mov r1, #7  // # immidiate value , if # followed by hexa decimal value it is address , if decimal its a number
    mov r2, #3

    push {r1, r2} // first push r2 and then r1 on the stack

    // add another value on the registers
    mov r1, #5
    mov r2, #5

    pop {r2, r1} //

    b .