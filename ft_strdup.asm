section .text
    ; char *strdup(const char *s);
    ; The  strdup() function returns a pointer to a new string which is a duplicate of the string s.
    ; Memory for the new string is obtained with malloc, and can be freed with free.
    ; On success, the strdup() function returns a pointer to the duplicated string.  It returns NULL
    ; if insufficient memory was available, with errno set to indicate the cause of the error.
    global ft_strdup
ft_strdup:
