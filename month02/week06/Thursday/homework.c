#include <stdio.h>
#include <string.h>

struct student {
    char name[20];
    int quiz;
    int project;
};

double final_score(struct student s) {
    return 0.4 * s.quiz + 0.6 * s.project;
}

/* 1. count_words : char[] -> int   үгс нэг зайгаар тусгаарлагдсан */

int count_words(const char s[]) 
{
    if (s[0] == '\0') 
    {
        return 0;
    }
    int count = 1;
    for (int i = 0; s[i] != '\0'; i++)
    {
        if (s[i] == ' ') 
        {
            count++;
        }
    }
    return count;
}

/* 2. best_project_index : struct student[] int -> int   project хамгийн өндөр, тэнцвэл эхнийх */

int best_project_index(struct student a[], int n) 
{
    int best = 0;
    for (int i = 1; i < n; i++) 
    {
        if (a[i].project > a[best].project) 
        {
            best = i;
        }
    }
    return best;
}

/* 3. count_pass_fail : struct student[] int int* int* -> void */

void count_pass_fail(struct student a[], int n, int *pass, int *fail) 
{
    *pass = 0;
    *fail = 0;
    for (int i = 0; i < n; i++) 
    {
        if (final_score(a[i]) >= 60.0) 
        {
            (*pass)++;
        } else {
            (*fail)++;
        }
    }
}

/* 4. longest_name_index : struct student[] int -> int   нэр хамгийн урт, тэнцвэл эхнийх */

int longest_name_index(struct student a[], int n) 
{
    int best = 0;
    for (int i = 1; i < n; i++) 
    {
        if (strlen(a[i].name) > strlen(a[best].name)) 
        {
            best = i;
        }
    }
    return best;
}


// Тест шалгагч helper функц
void check_int(int got, int expected) 
{
    if (got == expected) 
    {
        printf("PASS: %d\n", got);
    } else {
        printf("FAIL: got %d, expected %d\n", got, expected);
    }
}

int main(void) {
    struct student group[6] = {
        {"Aki", 80, 90}, {"Sora", 60, 60}, {"Mina", 95, 91},
        {"Ren", 45, 55}, {"Bat", 70, 75}, {"Uka", 100, 34}
    };
    struct student two[2] = {{"Ana", 50, 80}, {"Bo", 90, 80}};

    // 1. count_words тест (4 мөр)
    check_int(count_words("hello world"), 2);
    check_int(count_words("a b c"), 3);
    check_int(count_words("one"), 1);
    check_int(count_words(""), 0);

    // 2. best_project_index тест (2 мөр)
    check_int(best_project_index(group, 6), 2);
    check_int(best_project_index(two, 2), 0);

    // 3. count_pass_fail тест (2 мөр)
    int pass;
    int fail;
    count_pass_fail(group, 6, &pass, &fail);
    check_int(pass, 5);
    check_int(fail, 1);

    // 4. longest_name_index тест (2 мөр)
    check_int(longest_name_index(group, 6), 1);
    check_int(longest_name_index(two, 2), 0);

    return 0;
}