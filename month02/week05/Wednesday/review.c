#include <stdio.h>


int count_multiples(int n, int k) {
    if (k <= 0) return 0;
    return n / k;
}

int count_multiples(int n, int k) 
{
    if (k <= 0) return 0;
    return n / k;
}

int max3(int a, int b, int c) {
    int max = a;
    if (b > max) {
        max = b;
    }
    if (c > max) {
        max = c;
    }
    return max;
}

