;------------------------------
;  STACK TECHNIQUE SHELLCODE  
;------------------------------

section .text
global _start

    _start:
        push 0x0a646c72
        mov rbx, 0x6f57206f6c6c6548
        push rbx
        xor rax, rax
        add rax, 1
        mov rdi, rax
        mov rsi, rsp
        mov rdx, 0xc
        syscall

        xor rax, rax
        add rax, 60
        xor rdi, rdi
        syscall
