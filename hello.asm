section .data
    msg db "hello, world", 0x0a
    len equ $-msg

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    lea rsi, [msg]
    mov rdx, len
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
