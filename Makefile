CC = gcc

objs = a.o test.o main.o
# mainObj = main.o

vpath %h = header
vpath %c = src

main: $(objs) main.o
	$(CC) -o main $(objs)

# $(mainObj): %.o: %.c
# 	$(CC) -c $(CFLAGS) $< -o $@

%.d: %.c %.h
	@set -e; rm -f $@; \
	$(CC) -M $(CPPFLAGS) $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$

$(objs): %.o: %.c %.d
	$(CC) -c $(CFLAGS) $< -o $@

.PHONY: clean
clean:
	-rm *.o *.d main
