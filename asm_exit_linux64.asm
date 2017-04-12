;----------------
;  Exit syscall
; With Nullbytes
;----------------

global _start

section .text
_start:
    mov rax, 60
    mov rdi, 0x0
    syscall
