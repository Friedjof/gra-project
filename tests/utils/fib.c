#include <criterion/criterion.h>

#include "utils.h"

Test(fibtests, some_values) {
    cr_assert_eq(fib(10), 55);
    cr_assert_eq(fib(11), 89);
    cr_assert_eq(fib(12), 144);
    cr_assert_eq(fib(13), 233);
}

Test(fibtests, zero) {
    cr_assert_eq(fib(0), 0);
}