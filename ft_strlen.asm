; custom strlen function in assembly

global _ft_strlen
section .text
ft_strlen:
    xor rax, rax             ; rax - return register

.loop:
    cmp BYTE [rdi+rax], 0   ; compare current byte with 0
    je .end                 ; if 0, end of string reached
    inc rax                 ; increment rax(length counter)
    jmp .loop               ; repeat loop

.end:
    ret                     ; return length in rax



;     mov rdi, 1          ; rdi - 1er argument
;     mov rsi, msg        ; rsi - 2er argument
;     mov rdx, msglen     ; rdx 3er argument
;     syscall

; ; now exit

;     mov rax, 60
;     xor rdi, 0
;     syscall
; section .rodata:
;     msg: db "Hello, world!", 10
;     msglen: equ $ - msg

