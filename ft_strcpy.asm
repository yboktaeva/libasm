;   custom strcpy function in assembly

global _ft_strcpy

section .text
    ; RDI = dest pointer(d)
    ; RDI = src pointer(s)
    ; return dest pointer (d) in RAX
ft_strcpy:

    mov rax, rdi    ; store dest pointer in RAX to return later

.loop:
    
.end: