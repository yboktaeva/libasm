section .text
    ; char *strcpy(char *dest, const char *src);
    ; custom strcpy function in assembly using AL register (the lower bits of the RAX register)
    ; for byte-level operations to handle each character from the source string individually.
    global ft_strcpy

ft_strcpy:
    ; RSI = src pointer(s)
    ; RDI = dest pointer(d)
    ; return dest pointer (d) in RAX

    mov rax, rdi        ; store dest pointer in RAX to return later

.loop:
    mov al, byte[rsi]   ; load byte from source into Al
    mov byte[rdi], al   ; store byte in dest
    inc rsi             ; move to the next byte in src
    inc rdi             ; move to the next byte in dest
    test al, al         ; check if the byte was end of string
    jnz .loop           ; if not zero keep copying

    ret                 ; return RAX holding the original dest pointer