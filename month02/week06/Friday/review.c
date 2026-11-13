#include <stdio.h>
#include <string.h>
#include "check.h"

struct student
{
    char name[20];
    int quiz;
    int project;
};

double finalScore(struct student s)
{
    return 0.4 *s.quiz + 0.6 * s.project;
}

int countAbove(struct student s[], int size, double limit)
{
    int c =0;
    for (int i = 0; i < size; i++)
    {
        if(finalScore(s[i]) > limit)
        {
            c = c + 1;
        }
    }
    return c;

}

int totalProject(struct student a[], int size)
{
    int total = 0;
    for (int i = 0; i < size; i++)
    {
        total = total + s[i].project;
    }
    return total;
}

int findByName(struct student a[], int n, char name[])
{
    for (int i = 0; i < n; i++)
    {
        if (strcmp(a[i].name, name) == 0)
        {
            return i;
        }
    }
    return -1;
}
int hasStudent(struct student s[], int n, char name[])
{
    return findByName(s, n, name) != - 1;
}











