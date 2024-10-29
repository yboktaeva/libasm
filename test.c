#include <string.h>

char *ft_strcpy(char *d, const char *s)
{
    char *p = d;
    while (*s)
    {
        *d++ = *s++;
    }
    *d = 0;
    return p;
}

int main()
{
    char d[6] = "Hello";
    char s[3] = "go";
    ft_strcpy(d, s);
    return 0;
}