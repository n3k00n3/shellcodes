;---------------------------------------
; RIP - RELATIVE ADDRESSING TECHNIQUE
;   Available in 64-bit mode only
;---------------------------------------

global _start 
default rel
section .text

_start:
    jmp realStart
    hello: db 'Hello world', 0xa

realStart:
    xor rax, rax
    add rax, 1	
	  mov rdi, rax
	  lea rsi, [hello] 
	  xor rdx, rdx
	  add rdx, 12
	  syscall
 
	  xor rax, rax
	  add rax, 60
	  xor rdi, rdi
	  syscall
