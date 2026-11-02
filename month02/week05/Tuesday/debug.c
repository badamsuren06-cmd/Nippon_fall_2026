#include <stdio.h>

int is_sixty(int s) {
    if (s == 60) {
        return 1;
    }
    return 0;
}

int sum_to(int n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) {
        sum = sum + i;
    }
    return sum;
}

double average2(int a, int b) {
    return (a + b) / 2.0;
}

int digit_sum(int n) {
    int s = 0;
    while (n > 0) {
        s = s + (n % 10);
        n = n / 10; 
    }
    return s;
}

int main(void) {
    printf("is_sixty(60): %d\n", is_sixty(60));
    printf("sum_to(4): %d\n", sum_to(4));
    printf("average2(7, 8): %.1f\n", average2(7, 8));
    printf("digit_sum(12): %d\n", digit_sum(12));
    
    return 0;
}