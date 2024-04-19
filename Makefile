# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jetan <jetan@student.42kl.edu.my>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/30 17:51:00 by jetan             #+#    #+#              #
#    Updated: 2024/02/21 09:55:24 by jetan            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CFLAGS = -Wall -Wextra -Werror -I../

SRCS =	ft_printf.c \
		ft_print_char.c \
		ft_print_num_base.c \
		ft_print_nbr.c \
		ft_print_ptr.c \
		ft_print_str.c \
		ft_print_percent.c
		
SRCS_FILE = $(addprefix src/, $(SRCS))

OBJS = $(SRCS_FILE:%.c=%.o)

LIBFT = ./libft/libft.a

all: $(NAME)

$(NAME): $(OBJS)
	$(MAKE) bonus -C ./libft
	cp libft/libft.a $(NAME)
	ar rcs $(NAME) $(OBJS)

clean:
	$(MAKE) clean -C ./libft
	rm -f $(OBJS)

fclean: clean
	$(MAKE) fclean -C ./libft
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
