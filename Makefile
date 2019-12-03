objs = main.o test.o

main: ${objs}
	cc -o main ${objs}
	
test.o: src/test.h src/test.c
	cc -c src/test.c

main.o: test.o src/main.c
	cc -c src/main.c

clean:
	rm -rf ${objs} main
