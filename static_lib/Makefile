CC = cc

BUILD_DIR = build
OBJ_DIR = $(BUILD_DIR)/obj
D_DIR = $(BUILD_DIR)/d

vpath %h = include
vpath %o = $(OBJ_DIR)
vpath %d = $(D_DIR)

obj = static_lib.o

dest: prev $(obj)
	ar -crv libxx.a $(OBJ_DIR)/$(obj)

%.d: %.c %.h
	@set -e; rm -f $@; \
	$(CC) -M $(CPPFLAGS) $< > $(D_DIR)/$@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $(D_DIR)/$@.$$$$ > $(D_DIR)/$@; \
	rm -f $(D_DIR)/$@.$$$$

$(obj): %o: %c %d
	$(CC) -c $(CFLAGS) $< -o $(OBJ_DIR)/$@

.PHONY: clean prev

prev:
	-mkdir -p build/obj build/d

clean:
	-rm -rf build
