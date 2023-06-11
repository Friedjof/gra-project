CFLAGS = -W -Wall -Werror -Wextra
CPPFLAGS = -I./include/
LIBS = -lutils

SRC = $(shell find ./src/ -type f -name "*.c")
OBJ = $(SRC:.c=.o)
BIN = project

all: $(BIN)

$(BIN): $(OBJ)
	make -C $(shell find ./lib/ -maxdepth 1 -type d -not -name "lib")
	$(CC) $(OBJ) -o $(BIN) -L./lib/ $(LIBS)

run: $(BIN)
	clear && echo "====================================================================================================" && ./$(BIN) && echo "===================================================================================================="

lxhalle_run: $(BIN)
	./$(BIN)

build_test: fclean
	make -C $(shell find ./lib/ -maxdepth 1 -type d -not -name "lib")
	$(CC) $(shell find ./tests/ -type f -name "*.c") $(CPPFLAGS) -o unit_tests -L./lib/ $(LIBS) -lcriterion

test: build_test
	clear && echo "====================================================================================================" && echo "Running unit tests..." && ./unit_tests && rm unit_tests

lxhalle_test: build_test
	./unit_tests && rm unit_tests

clean:
	$(RM) $(shell find ./ -type f -name "*.o") *.gcno *.gcda

fclean: clean
	$(RM) $(BIN) unit_tests $(shell find ./ -type f -name "*.a")

re: fclean all

check:
	@echo "Hello, from Makefile!"