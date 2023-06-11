CFLAGS = -W -Wall -Werror -Wextra

SRC	= $(wildcard *.c)
OBJ = $(SRC:.c=.o)
LIB	= libutils.a

all: $(LIB)

$(LIB):
	$(CC) -c $(SRC)
	ar src $(LIB) $(OBJ)
	mv $(LIB) ..