#include <stdio.h>

int square_sum(int a, int b) 
{
    return a * a + b * b;
}

int tens_digit(int n) {
    return (n / 10) % 10;
}

double average2(int a, int b) {
    return (a + b) / 2.0;
}

int main(void) {
    printf("square_sum(3, 4) = %d\n", square_sum(3, 4));
    printf("tens_digit(1234) = %d\n", tens_digit(1234));
    printf("average2(7, 8) = %.1f\n", average2(7, 8));
    
    return 0;
}
