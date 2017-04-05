;-------------------------------
; Execve Using Stack technique
;-------------------------------

global _start

section .text
    _start:
        xor rax, rax
        push rax

        mov rbx, 0x68732f2f6e69622f
        push rbx
        mov rdi, rsp

        push rax
        mov rdx, rsp
        
        push rdi
        mov rsi, rsp
        add rax, 59
        syscall
