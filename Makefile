NAME=libasm.a
SOURCES=ft_strlen.asm\
		ft_strcpy.asm \
		ft_strcmp.asm \
		ft_write.asm \
		ft_read.asm \
		ft_strdup.asm

AS=nasm
ASFLAGS=-f elf64 -g
OBJECTS=$(SOURCES:.asm=.o)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

%.o: %.asm
	$(AS) $(ASFLAGS) $< -o $@

all: $(NAME)

clean:
	rm -rf $(OBJECTS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re