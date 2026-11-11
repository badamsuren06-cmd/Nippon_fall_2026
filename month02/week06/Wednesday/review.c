#include <stdio.h>
#include <ctype.h>
#include "check.h"

// countUpper: char[] -> int

int countUpper(char s[])
{
    int count = 0;
    
    for (int i = 0; s[i] != "\0"; i++)
    {
        if (s[i] >= 'A' && s[i] <= 'Z')
        {
            count++;
        }
    }
    return count;
}

int indexOfChar(char s[], char c)
{
    for (int i = 0; s[i] != '\0'; i++)
    {
        if (s[i] == c)
        {
            return i;
        }
    }
    return -1;
}

void toLower(char s[])
{
    for (int i = 0; s[i] != '\0'; i++)
    {
        s[i] = tolower(s[i]);
    }
}

void checkString(const char *actual, const char *expected) {
    if (strcmp(actual, expected) == 0) {
        printf("Test PASSED: Got '%s'\n", actual);
    } else {
        printf("Test FAILED: Got '%s', Expected '%s'\n", actual, expected);
    }
}

int main(void)
{
    printf("--- countUpper ---\n");
    checkInt(countUpper("Hello World"), 2);
    checkInt(countUpper("abc"), 0);
    checkInt(countUpper("ABC"), 3);


    printf("--- indexOfChar ---\n");
    checkInt(indexOfChar("banana", 'n'), 2);
    checkInt(indexOfChar("abc", 'z'), -1);
    checkInt(indexOfChar("", 'a'), -1);

    printf("--- toLower ---\n");
    char a[] = "Hello";
    toLower(a);
    checkString(a, "hello");
    char b[] = "ABC";
    tolower(b);
    checkString(b, "abc");




    return 0;
}