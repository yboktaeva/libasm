section .text
    ; ssize_t read(int fd, void *buf, size_t count);
    ; read() attempts to read up to count bytes from file descriptor fd into the buffer starting at buf.
    global ft_read
ft_read:
    ; RDI - fd(0 for stdin)
    ; RSI - pointer to buffer
    ; RDX - number of bytes to read
    mov 

    ret