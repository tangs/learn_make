# LDFLAGS = ../lib/include
# HEADER = -L./../lib/include

libs = ../lib/lib.a

main: main.o $(libs)
	cc -o main main.c $(libs)

main.o: main.c
	cc -c main.c -o main.o

.PHONY: clean
clean:
	rm main
