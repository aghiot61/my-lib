# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tchaves <tchaves@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/17 10:41:14 by tchaves           #+#    #+#              #
#    Updated: 2023/10/17 18:44:16 by tchaves          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS    = ft_isascii.c ft_isprint.c ft_isalpha.c ft_isdigit.c ft_isalnum.c \
            ft_tolower.c ft_toupper.c ft_strlen.c ft_strlcpy.c ft_strlcat.c \
            ft_strchr.c ft_strrchr.c  ft_strncmp.c ft_atoi.c \
            ft_memset.c ft_bzero.c ft_strnstr.c ft_memcpy.c ft_memmove.c \
            ft_memchr.c ft_memcmp.c ft_strdup.c ft_calloc.c ft_itoa.c \
            ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
            ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_strmapi.c \
            ft_striteri.c

OBJS = $(SRCS:.c=.o)

CC = gcc

RM = rm -f

CFLAGS = -Wall -Wextra -Werror -I.

$(NAME) : $(OBJS)
	ar rc ${NAME} ${OBJS}
	ranlib ${NAME}

.c.o:
	$(CC) ${CFLAGS} -c $< -o ${<:.c=.o}

all : ${NAME}

clean :
	$(RM) $(OBJS)
	
fclean : clean
	$(RM) $(NAME)
	
re : fclean all

.PHONY: all clean re fclean
