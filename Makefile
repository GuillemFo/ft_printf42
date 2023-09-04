NAME = libftprintf.a

SRC =	ft_printf.c \
		ft_u.c \
		ft_printstring.c \
		ft_printhex.c \
		ft_itoaprint.c

OBJ = $(SRC:.c=.o)

CFLAGS = -Wall -Werror -Wextra -I./ft_printf.h

all: $(NAME)

$(NAME): $(OBJ) ft_printf.h
	ar -crs $(NAME) $(OBJ)

%.o: %.c ft_printf.h Makefile
	cc $(CFLAGS) -c $< -o $@

re: fclean all

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

.PHONY: all re clean fclean