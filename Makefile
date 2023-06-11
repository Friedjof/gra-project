CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c99 -pedantic -g
LDFLAGS = -lm

SRC=src
OBJ=obj
BIN=bin
SRCS=$(wildcard $(SRC)/*.c)
OBJS=$(patsubst $(SRC)/%.c,$(OBJ)/%.o,$(SRCS))
HDRS=$(wildcard $(SRC)/*.h)
EXEC=main

SUBMITNAME=tmp-submit.zip

all: $(EXEC)

$(EXEC): $(OBJS) $(OBJ) $(HDRS)
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) $(OBJS) -o $(BIN)/$@ $(LDFLAGS)

$(OBJ)/%.o: $(SRC)/%.c $(OBJ)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ):
	mkdir -p $(OBJ)

run: $(EXEC)
	./$(BIN)/$(EXEC)

submit:
	rm -rf $(SUBMITNAME)
	zip -r $(SUBMITNAME) $(BIN)

clean:
	rm -rf $(OBJ) $(BIN) $(SUBMITNAME)