# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: secullod <secullod@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/17 20:19:01 by secullod          #+#    #+#              #
#    Updated: 2020/12/17 20:19:07 by secullod         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libasm.a

SRCS		= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS		= $(SRCS:.s=.o)

%.o:		%.s
		nasm -f elf64 $<

$(NAME):	$(OBJS)
		ar rcs $(NAME) $(OBJS)

all:		$(NAME)

clean:
		rm -f $(OBJS)

fclean:		clean
		rm -f $(NAME)

re:		fclean all

test:		all
		gcc -L -lasm main.c libasm.a -I.  && ./a.out
		rm -rf a.out

.PHONY: 	all clean fclean re test
