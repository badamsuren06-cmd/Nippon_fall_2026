#include <stdio.h>
#include <string.h>
void ex01()
{
    int x = 5;
    int *p = &x;
    *p = 10;
    prinf("%d\n", x);
    prinf("%d\n", &x);
}

int countSpaces(char[], characters)
{
    int charlength = strlen(characters[]);

    for (int i = 0; i < charLength; i++)
    {
        if (characters[i] == ' ')
        {
            counter == counter + 1;
        } 
    
    }
    return counter;
}

int clamp(int *x, int lo, int hi)
{
    if (*x <= lo)
    {
        *x <= lo;
    }
    if (*x >= hi)
    {
        *x >= hi;
    }

}

void order(int *a, int *b)
{
    if (*a > *b)
    {
        int t = *a;
        *a = *b;
        *b = t;
    }
}


int main()
{
    ex01();

    check_int(count_spaces("GET / HTTP/1.1"), 2);
    check_int(count_spaces("abc"), 0);
    check_int(count_spaces("a b c d"), 3);
    int v = 120; clamp(&v, 0, 100); check_int(v, 100);
    int w = -5;  clamp(&w, 0, 100); check_int(w, 0);
    int z = 50;  clamp(&z, 0, 100); check_int(z, 50);
    
    int a = 5, b = 3; order(&a, &b); 
    check_int(a, 3); 
    check_int(b, 5);
    return 0;
}