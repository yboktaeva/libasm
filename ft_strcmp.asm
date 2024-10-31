section .text
    ; int strcmp(const char *s1, const char *s2);
    ; strcmp() returns an integer indicating the result of the comparison, as follows:
    ; 0, if the s1 and s2 are equal;
    ; a negative value if s1 is less than s2;
    ; a positive value if s1 is greater than s2.
    ; custom strcmp function in assembly using AL register (the lower bits of the RAX register)
    ; for byte-level operations to handle each character from the source string individually.
    global ft_strcmp

ft_strcmp:
    ; RDI = pointer(s1)
    ; RSI = pointer(s2)
    ; return value in RAX: 0 if equal, <0 if s1 < s2, >0 if s1 > s2

    xor rax, rax        ; clear RAX to hold result

.loop:
    mov al, byte[rdi]   ; load byte from s2 in AL
    mov cl, byte[rsi]   ; load byte from s2 in CL
    cmp al, cl          ; compare bytes from s1 and s2
    jne .not_equal
    
    ; if bytes are equal, check for end of both strings
    test al, al         ; check if null terminator
    je .end             ; if yes, strings are equal

    ; increment two pointers
    inc rdi
    inc rsi
    jmp .loop           ; continue comparing

.not_equal:
    sub rax, rcx        ; RAX = AL - CL (difference between s1 and s2)

.end:
    ret                 ; return RAX holding the result