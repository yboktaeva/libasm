section .text
    ; size_t strlen(const char *s);
    ; The  strlen() function calculates the length of the string pointed to by s,
    ; excluding the terminating null byte ('\0').
    ; custom ft_strlen function in assembly
    global ft_strlen
ft_strlen:
    xor rax, rax            ; rax - return register

.loop:
    cmp BYTE [rdi+rax], 0   ; compare current byte with 0
    je .end                 ; if 0, end of string reached
    inc rax                 ; increment rax(length counter)
    jmp .loop               ; repeat loop

.end:
    ret                     ; return length in rax