CC = gcc

all : minesweeper

minesweeper: conio.o minesweeper.o
	gcc $^ -o minesweeper

conio.o : conio.c conio.h
	gcc -c -o $^

minesweeper.o : minesweeper.c conio.h
	gcc -c -o $^

clean :
	rm *.o minesweeper
