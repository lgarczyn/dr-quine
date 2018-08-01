# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lgarczyn <lgarczyn@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/22 17:11:22 by lgarczyn          #+#    #+#              #
#    Updated: 2016/04/09 18:26:34 by lgarczyn         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = quine

all: $(NAME)

$(NAME):
	gcc Colleen.c -Wall -Wextra -Werror -o Colleen
	gcc Grace.c -Wall -Wextra -Werror -o Grace
	gcc Sully.c -Wall -Wextra -Werror -o Sully

clean:
	rm -rf Grace_kid*
	rm -rf Sully_*

fclean: clean
	rm -rf Colleen
	rm -rf Grace
	rm -rf Sully

re: fclean all
