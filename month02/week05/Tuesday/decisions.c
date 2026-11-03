#include <stdio.h>

int is_passing(double score) 
{
    if (score >= 60.0) {
        return 1;
    }
    return 0;
}

char letter_grade(double score) 
{
    if (score >= 90.0) {
        return 'A';
    } else if (score >= 80.0) {
        return 'B';
    } else if (score >= 70.0) {
        return 'C';
    } else if (score >= 60.0) {
        return 'D';
    } else {
        return 'F';
    }
}

int in_range(int x, int lo, int hi) {
    if (x >= lo && x <= hi) {
        return 1;
    }
    return 0;
}

int main(void) {
    printf("is_passing(60.0) = %d\n", is_passing(60.0));
    printf("letter_grade(92.6) = %c\n", letter_grade(92.6));
    printf("in_range(5, 1, 10) = %d\n", in_range(5, 1, 10));
    return 0;
}