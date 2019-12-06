#include <stdio.h>

#include <static_lib.h>
#include <dynamic_lib.h>

int main() {
    printf("%d\n", lib_func1(2, 3, 4));
    printf("%d\n", dylib_func1(2, 3, 4));
}
