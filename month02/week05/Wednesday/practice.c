#include <stdio.h>

int count_digits(int n) {
    if (n == 0) return 1;
    if (n < 0) n = -n; // Сөрөг тоог эерэг болгох

    int count = 0;
    while (n > 0) {
        count++;
        n /= 10;
    }
    return count;
}

int gcd(int a, int b) 
{
    while (b != 0) 
    {
        int temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

int is_perfect(int n) {
    if (n <= 1) return 0;
    
    int sum = 0;
    for (int i = 1; i <= n / 2; i++) 
    {
        if (n % i == 0) 
        {
            sum += i;
        }
    }
    
    return (sum == n) ? 1 : 0;
}

int main(void) 
{
    int x = 5; 
    return x;
}

int main(void) 
{
    int total = 10;
    return total; 
}

int main(void) 
{
    printf("%f\n", 3.5);
    return 0;
}

int twice(int x) 
{
    int y = x * 2;
    return y;
}

int main(void)
{
    printf("hi\n");
    return 0;
}