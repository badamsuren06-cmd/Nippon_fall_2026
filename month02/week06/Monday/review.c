#include <stdio.h>

typedef struct 
{
    char name[5];
    int final_score;
    char letter_grade;
} student; 


int count_grade(student group[], int n, char target_grade)
{
    int count = 0; 

    for (int i = 0; i < n; i++)
    {
        if (group[i].letter_grade == target_grade)
        {
            count++;
        }
    }
    return count;
}

void check_int(int actual, int expected) 
{
    if (actual == expected) 
    {
        printf("TEST PASSED (Got: %d, Expected: %d)\n", actual, expected);
    } 
    else 
    {
        printf("TEST FAILED (Got: %d, Expected: %d)\n", actual, expected);
    }
}

int second_max(int scores[], int size)
 {
    int max1 = scores[0];
    int max2 = [1];
    if(scores[1] > scores[0])
    {
        max1 = scores[1];
        max2 = scores[0];
    } 
    for (int i = 2; i < size; i++ )
    {}
        if (scores)

 }
int count_in_range(int a[], int n, int lo, int hi);
{

    int c = 0;
    for (int i = 0; i < n; i++)
    {
        if (lo <= a[i] && a[i] <= hi)
        {
            c = c + 1;
        }
    }
    return c;

}

int main(void)
{
    student group[4] = 
    {
        {"Aki", 95, 'A'},
        {"Bold", 75, 'C'},
        {"Saraa", 55, 'F'},
        {"bata", 82, 'B'}
    };
check_int(count_grade(group, 4, 'A'), 1);
check_int(count_grade(group, 4, 'F'), 1);
check_int(count_grade(group, 4, 'C'), 0);

check_int(count_in_range(scores, 5, 80, 90), 2);
check_int(count_in_range(scores, 5, 0, 100), 5);

return 0;
}

