; test

global _start
section .text
ft_strlen:
    mov rax, 0              ; rax - return register

.loop:
    cmp BYTE [rdi+rax], 0   ; compare current byte with 0
    je .end                 ; if 0, end of string reached
    inc rax                 ; increment rax(length counter)
    jmp .loop               ; repeat loop

.end:
    ret                     ; return length in rax


_start:
    ; test the function with echo $?
    mov rdi, string
    call ft_strlen

    mov rdi, rax
    mov rax, 60
    syscall

section .data
    string db "hello", 0


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

