CC = gcc
CFLAGS = -Wall -Wextra

all: build
build: main.c
	$(CC) $(CFLAGS) -o ./main main.c

run: build
	./main

clean:
	rm -f ./main