;-------------------------
;  JMP-CALL-POP SHELLCODE  
;-------------------------

section .text
global _start

    _start:
        jmp call_shellcode
   
    shellcode:
    
        pop rsi
        
        xor rax, rax
        mov al,  1
        mov rdi, rax
        mov rdx, rdi
        add rdx, 0xb
        syscall

        xor rax, rax
        mov rax, 60
        xor rdi, rdi
        syscall

    call_shellcode:
        call shellcode        
        hello_world: db "Hello World", 0xa
