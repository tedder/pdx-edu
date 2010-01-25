.PHONY	: all clean

all	: example1 example2 example3 example4 example5 example6
	./example1 "Length of Array"
	./example2 "Largest Number in Array"
	./example3 "Position of Largest Number in Array"
	./example4 "Average of Numbers in Array"
	./example5 "Reverse Numbers in Array"
	./example6 "Sort Numbers in Array"

example1: example1.s main.c
	gcc -m32 -o example1 main.c example1.s

example2: example2.s main.c
	gcc -m32 -o example2 main.c example2.s

example3: example3.s main.c
	gcc -m32 -o example3 main.c example3.s

example4: example4.s main.c
	gcc -m32 -o example4 main.c example4.s

example5: example5.s main.c
	gcc -m32 -o example5 main.c example5.s

example6: example6.s main.c
	gcc -m32 -o example6 main.c example6.s

clean	:
	rm example1 example2 example3 example4 example5 example6

