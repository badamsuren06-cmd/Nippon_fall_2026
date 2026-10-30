#include <stdio.h>

int square_sum(int a, int b)
{
    return (a * a) + (b * b);
}

int tens_digit(int x)
{
    return (x / 10) % 10;
}

double average2(int a, int b) 
{
    return (double)(a + b) / 2.0;
}

int main(void)
{
    // square_sum тестүүд
    check_int(square_sum(3, 4), 25);
    check_int(square_sum(0, 5), 25);
    check_int(square_sum(-2, 1), 5);

    // tens_digit тестүүд
    check_int(tens_digit(1234), 3);
    check_int(tens_digit(57), 5);
    check_int(tens_digit(7), 0);

    // average2 тестүүд
    check_double(average2(7, 8), 7.5);
    check_double(average2(60, 60), 60.0);
    return 0;
}