global _start

section .text
_start:
    xor rax, rax
    mov rdi, rax
    add al, 0x3c
    syscall
