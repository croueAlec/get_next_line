# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acroue <acroue@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/11 11:51:52 by acroue            #+#    #+#              #
#    Updated: 2023/11/28 17:51:46 by acroue           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	get_next_line.c \
		get_next_line_utils.c

SRCS_BONUS =	get_next_line_bonus.c \
				get_next_line_utils_bonus.c

CC = cc
CFLAGS = -Wall -Wextra -Werror
OBJS = $(SRCS:.c=.o)
OBJS_BONUS = $(SRCS_BONUS:.c=.o)
NAME = get_next_line.a
RM = rm -f

all: ${NAME}

.c.o:
	@${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

clean:
	@${RM} ${OBJS}

fclean: clean
	@${RM} ${NAME}

${NAME} : ${OBJS}
	@ar rcs ${NAME} ${OBJS}

bonus : ${NAME} ${OBJS}
	@ar rcs ${NAME} ${OBJS_BONUS}

re : fclean all
