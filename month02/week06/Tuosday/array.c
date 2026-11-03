#include <stdio.h>

int sumOddTo(int limit)
{
    int sum = 0;

    for (int i = 0; i < limit; i++) 
    {
        if (i % 2 == 1)
        {
            sum += i;
        }
    }
    return sum; 
}

int main(void)
{
    int numbers[4] = {1, 2, 4, 5};
    
    printf("%d\n", numbers[2]);

    int scores[5] = {70, 82, 95, 63, 88}; 

    printf("%d\n", scores[4]);
    printf("%d\n", scores[2]);
    printf("%d\n", scores[0]);


    //array value change
    // 63 -> 85

    printf("before change: %d\n", scores[3]);
    scores[3] = 85;
    printf("after change: %d\n", scores[3]);

    // 70 -> 95
    printf("before change: %d\n", scores[0]);
    scores[0] = 95;
    printf("after change: %d\n", scores[0]);

    // print all value of arrays

    char englishAlphabet[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    
    for(int i = 0; i < 26; i++)
    {
        printf("%c ", englishAlphabet[i]);
    }   

    for(int i = 1; i <= 26; i++)
    {
       if(i == 1)
       {
        printf("%c ", englishAlphabet[0]);
       }
       else if(i == 2)
       {
        printf("%c ", englishAlphabet[1]);
       }
       else if(i == 3)
       {
        printf("%c ", englishAlphabet[2]);
       }
       else
         {
          printf("%d-th letter: %c\n", i, englishAlphabet[i-1]);
         }
    }

    // size of array
    int size = sizeof(englishAlphabet);
    printf("%d\n", size);

    int tennumbers [10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    printf("before\n");
    int tenNumbersSize = sizeof(tennumbers)/sizeof(tennumbers[0]);
    
    for(int i = 0; i < tenNumbersSize; i++)
    {
        printf("%d ", tennumbers[i]);
    }

    for(int i = 1; i <= tenNumbersSize; i++)
    {
        tennumbers[i - 1] = i * 2;
    }
    
    printf("after\n");

    for(int i = 0; i < tenNumbersSize; i++)
    {
        printf("%d ", tennumbers[i]);
    }


    printf("\n");
    return 0;
}