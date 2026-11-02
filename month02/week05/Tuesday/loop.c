#include <stdio.h>

int count_divisors(int n) 
{
    int c = 0;
    for (int d = 1; d <= n; d++) {
        if (n % d == 0) {
            c++;
        }
    }
    return c;
}

int digit_sum(int n) 
{
    int s = 0;
    while (n > 0) {
        s += n % 10;
        n /= 10;
    }
    return s;
}

int is_prime(int n) 
{
    if (n < 2) {
        return 0;
    }
    int d = 2;
    while (d * d <= n) {
        if (n % d == 0) {
            return 0;
        }
        d++;
    }
    return 1;
}

int power_loop(int b, int e) {
    int r = 1;
    for (int i = 1; i <= e; i++) {
        r *= b;
    }
    return r;
}

int power_rec(int b, int e) {
    if (e == 0) {
        return 1;
    } else {
        return b * power_rec(b, e - 1);
    }
}

int main(void) {
    printf("count_divisors(12) = %d\n", count_divisors(12));
    printf("digit_sum(9075) = %d\n", digit_sum(9075));
    printf("is_prime(23) = %d\n", is_prime(23));
    printf("power_loop(2, 10) = %d\n", power_loop(2, 10));
    printf("power_rec(5, 3) = %d\n", power_rec(5, 3));
    
    return 0;
}