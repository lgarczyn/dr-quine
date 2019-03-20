# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lgarczyn <lgarczyn@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/22 17:11:22 by lgarczyn          #+#    #+#              #
#    Updated: 2018/01/26 00:20:12 by lgarczyn         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = QUINE_ASM

SRC = Colleen.s Grace.s Sully.s

OUT = $(basename $(SRC))

OBJ = $(addsuffix .o, $(basename $(SRC)))

all: $(NAME)

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	FLAGS_NASM = -f elf64
	FLAGS = -D LINUX
	FLAGS_GCC = -no-pie
else
	ifeq ($(UNAME_S),Darwin)
		FLAGS_NASM = -f macho64 --prefix _
	else
		$(error Incompatible Platform)
	endif
endif

$(NAME):$(OUT)

$(OBJ): %.o: %.s
	nasm $(FLAGS_NASM) $(FLAGS) -o $@ $<

$(OUT): %: %.o
	gcc $(FLAGS_GCC) $(FLAGS) -o  $@ $<

clean:
	rm -rf $(OBJ)
	rm -f Grace_kid.s
	rm -rf Sully_*

fclean: clean
	rm -f $(OUT)

re: fclean all
