section .data
    l1  db "               I", 10
    l1_len equ $ - l1
    l2  db "             wrote", 10
    l2_len equ $ - l2
    l3  db "            a poem", 10
    l3_len equ $ - l3
    l4  db "         in the shape", 10
    l4_len equ $ - l4
    l5  db "        of a Christmas", 10
    l5_len equ $ - l5
    l6  db "     tree but then forgot", 10
    l6_len equ $ - l6
    l7  db "to water it and only a few", 10
    l7_len equ $ - l7
    l8  db "            days", 10
    l8_len equ $ - l8
    l9  db "           later", 10
    l9_len equ $ - l9
    l10 db "             there", 10
    l10_len equ $ - l10
    l11 db "        were         words", 10
    l11_len equ $ - l11
    l12 db "  all       over", 10
    l12_len equ $ - l12
    l13 db "       the            carpet", 10
    l13_len equ $ - l13

section .text
    global main

; Macro to load parameters and call print
%macro PRINT_LINE 2
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, %1         ; pointer to string
    mov rdx, %2         ; length
    syscall
%endmacro

main:
    PRINT_LINE l1, l1_len
    PRINT_LINE l2, l2_len
    PRINT_LINE l3, l3_len
    PRINT_LINE l4, l4_len
    PRINT_LINE l5, l5_len
    PRINT_LINE l6, l6_len
    PRINT_LINE l7, l7_len
    PRINT_LINE l8, l8_len
    PRINT_LINE l9, l9_len
    PRINT_LINE l10, l10_len
    PRINT_LINE l11, l11_len
    PRINT_LINE l12, l12_len
    PRINT_LINE l13, l13_len

    ; Exit program
    mov rax, 60         ; sys_exit
    xor rdi, rdi        ; exit code 0
    syscall