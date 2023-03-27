#proje ismi
NAME	=	mathlib.a

#derleyici + derleme ekleri
# -I (include) Specifies a directory dir to search for included makefiles.
CC	=	gcc
CFLAGS	=	-Wall -Wextra -Werror
RM	=	del /Q #rm -f in Unix / Linux

#.c uzantılı dosyalar


#Object dosyaları
OBJ	=	$(SRC:.c=.o)


all:	$(NAME)


$(NAME):	$(OBJ)
			ar rcs $(NAME) $(OBJ)

clean:
			$(RM) $(OBJ)

fclean:	clean
			$(RM) $(NAME)

re:	fclean $(NAME)


.PHONY: all clean fclean re
