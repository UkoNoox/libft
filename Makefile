# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ugdaniel <ugdaniel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 12:23:21 by ugdaniel          #+#    #+#              #
#    Updated: 2020/11/23 13:23:16 by ugdaniel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a
HEADERS	=	libft.h
SRCS	=	ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memccpy.c \
			ft_memmove.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_strlen.c \
			ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_strncmp.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_strnstr.c \
			ft_atoi.c \
			ft_calloc.c \
			ft_strdup.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_strmapi.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c
SRCSBON	=	ft_lstadd_front.c \
			ft_lstnew.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c

CC		=	clang
FLAGS	=	-Wall -Wextra -Werror
OBJS	=	$(SRCS:c=o)
OBJSBON	=	$(SRCSBON:c=o)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(FLAGS) -I $(HEADERS) -o $@ -c $< 

all: $(NAME)

bonus: $(OBJS) $(OBJSBON)
	ar rcs $(NAME) $(OBJS) $(OBJSBON)

clean:
	rm -f $(OBJS) $(OBJSBON)

fclean: clean
	rm -f $(NAME)

re: fclean all

so:
	$(CC) -fPIC $(FLAGS) -c $(SRCS) $(SRCSBON)
	$(CC) -shared -o libft.so $(OBJS) $(OBJSBON)

.PHONY: all so bonus clean fclean re