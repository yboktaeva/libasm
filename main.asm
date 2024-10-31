section .text
    extern ft_write
    global _start

_start:
    lea rsi, [rel message]
    mov rdi, 1
    mov rdx, message_len
    call ft_write

    ; exit program
    mov rax, 60
    xor rdi, rdi
    syscall

message: db "Hello, world!", 10
message_len: equ $ - message

