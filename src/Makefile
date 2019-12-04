obj = main.o test.o

main: ${obj}
	cc -o main ${obj}

test.o: test.h

main.o:

.PHONY: clean
clean:
	-rm main ${obj}
