# LDFLAGS = ../lib/include
CPPFLAGS = -I../static_lib/include -I../dynamic_lib/include\
	-L../static_lib/ -L../dynamic_lib/

# libs = ../lib/lib.a

main: main.o
	gcc $(CPPFLAGS) -o main main.c -lxx -ldynamic

main.o: main.c
	gcc $(CPPFLAGS) -c main.c -o main.o

.PHONY: clean
clean:
	rm main
