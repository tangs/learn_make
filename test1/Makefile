# LDFLAGS = ../lib/include
LIB = -L../static_lib/
CPPFLAGS = -I../static_lib/include -L../static_lib/

# libs = ../lib/lib.a

main: main.o
	gcc $(CPPFLAGS) -o main main.c -lxx

main.o: main.c
	gcc $(CPPFLAGS) -c main.c -o main.o

.PHONY: clean
clean:
	rm main
