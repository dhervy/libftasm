NAME = libfts.a

SRC = ft_bzero.s \
	ft_strcat.s \
	ft_isalpha.s \
	ft_isdigit.s \
	ft_isalnum.s \
	ft_isascii.s \
	ft_isprint.s \
	ft_toupper.s \
	ft_tolower.s \
	ft_puts.s \
	ft_strlen.s \
	ft_memset.s \
	ft_memcpy.s \
	ft_strdup.s \
	ft_cat.s 


OBJ = $(SRC:.s=.o)
FLAGS =  -Wall -Wextra -Werror
NASMFLAGS = -f macho64
NASM = ~/.brew/bin/nasm

all: $(NAME)

$(NAME): $(OBJ)
		@ar rc $(NAME) $(OBJ)
		@ranlib $(NAME)

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<

clean:
		@rm -rf $(OBJ)
fclean: clean
		@rm -rf $(NAME)

re: fclean all

test: re
	gcc ${FLAGS} -o test main.c $(NAME) -I includes
