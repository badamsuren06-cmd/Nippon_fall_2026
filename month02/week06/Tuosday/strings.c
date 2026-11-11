#include <stdio.h>
#include <string.h>

void reverse_str(char s[])
{ int n = strlen(s);
     for (int i = 0; i < n / 2; i++) 
{ char t = s[i]; s[i] = s[n - 1 - i];
     s[n - 1 - i] = t; 
}
}


int count_char(char s[], char c)
{
    int k = 0; for (int i = 0; s[i] != '\0'; i++)
    {
        if (s[i] == c) 
    { 
        k = k + 1;
    }
    }
    return k;
}


int is_palindrome_str(char s[]) {
    int n = strlen(s);
    for (int i = 0; i < n / 2; i++) {
        if (s[i] != s[n - 1 - i]) {
            return 0;
        }
    }
    return 1;
}

int count_vowels(char s[]) {
    int k = 0;
    for (int i = 0; s[i] != '\0'; i++) {
        char c = s[i];
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            k = k + 1;
        }
    }
    return k;
}

void caesar(char s[], int k) {
    for (int i = 0; s[i] != '\0'; i++) {
        if (s[i] >= 'a' && s[i] <= 'z') {
            s[i] = (s[i] - 'a' + k) % 26 + 'a';
        }
    }
}

int replace_char(char s[], char from, char to) {
    int k = 0;
    for (int i = 0; s[i] != '\0'; i++) {
        if (s[i] == from) {
            s[i] = to;
            k = k + 1;
        }
    }
    return k;
}


void check_int(int actual, int expected) {
    if (actual == expected) printf("PASS\n");
    else printf("FAIL (Expected %d, got %d)\n", expected, actual);
}

void check_str(char actual[], char expected[]) {
    if (strcmp(actual, expected) == 0) printf("PASS\n");
    else printf("FAIL (Expected %s, got %s)\n", expected, actual);
}

int main(void) 
{
   
    check_int(is_palindrome_str("level"), 1);
    check_int(is_palindrome_str("abba"), 1);
    check_int(is_palindrome_str("abc"), 0);
    check_int(is_palindrome_str(""), 1);

   
    check_int(count_vowels("banana"), 3);
    check_int(count_vowels("education"), 5);
    check_int(count_vowels("sky"), 0);

    
    char s1[] = "abc";      caesar(s1, 1);  check_str(s1, "bcd");
    char s2[] = "xyz";      caesar(s2, 3);  check_str(s2, "abc");
    char s3[] = "hi there"; caesar(s3, 13); check_str(s3, "uv gurer");

    
    char s4[] = "banana";   check_int(replace_char(s4, 'a', 'o'), 3); check_str(s4, "bonono");
    char s5[] = "sky";      check_int(replace_char(s5, 'a', 'o'), 0); check_str(s5, "sky");

    return 0;
}