#include <stdio.h>
#include <string.h>

/* 1. is_same : char[] char[] -> int   агуулга ижил бол 1 */

int is_same(char a[], char b[]) 
{
    return strcmp(a, b) == 0;
}

/* 2. reverse_str : char[] -> void */

void reverse_str(char s[]) 
{
    int n = strlen(s);
    for (int i = 0; i < n / 2; i++) 
    {
        char t = s[i];
        s[i] = s[n - 1 - i];
        s[n - 1 - i] = t;
    }
}

/* 3. count_vowels : char[] -> int */

int count_vowels(char s[]) 
{
    int k = 0;
    for (int i = 0; s[i] != '\0'; i++) 
    {
        char c = s[i];
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') 
        {
            k = k + 1;
        }
    }
    return k;
}

/* 4. caesar : char[] int -> void */

void caesar(char s[], int k) 
{
    for (int i = 0; s[i] != '\0'; i++) 
    {
        if (s[i] >= 'a' && s[i] <= 'z') 
        {
            s[i] = (s[i] - 'a' + k) % 26 + 'a';
        }
    }
}

void check_int(int actual, int expected) {
    if (actual == expected) {
        printf("PASS\n");
    } else {
        printf("FAIL (Expected %d, got %d)\n", expected, actual);
    }
}

void check_str(char actual[], char expected[]) {
    if (strcmp(actual, expected) == 0) {
        printf("PASS\n");
    } else {
        printf("FAIL (Expected %s, got %s)\n", expected, actual);
    }
}


int main(void)
{
    char x[] = "cat";
    char y[] = "cat";

    check_int(is_same(x, y), 1);

    char r[] = "abc"; reverse_str(r); check_str(r, "cba");
    
    check_int(count_vowels("sky"), 0);
    
    char z[] = "xyz"; caesar(z, 3); check_str(z, "abc");
}