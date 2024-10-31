section .text
    ; ssize_t write(int fd, const void *buf, size_t count);
    ; write()  writes  up  to count bytes from the buffer starting at buf to the file referred to by
    ; the file descriptor fd.
    global ft_write
ft_write:
    ; RDI - fd(1 for stdout)
    ; RSI - pointer to buffer
    ; RDX - number of bytes to write(legth of message)
    mov rax, 1
    syscall

    ret