#include <stdio.h>
#include <string.h>
#include <assert.h>


void check_int(int actual, int expected) {
    assert(actual == expected);
    printf("PASS (Actual: %d, Expected: %d)\n", actual, expected);
}


void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}


void add_bonus(int *score, int bonus) {
    *score += bonus;
    if (*score > 100) {
        *score = 100;
    }
}

void min_max(const int *arr, int size, int *lo, int *hi) {
    if (size <= 0) return;
    *lo = arr[0];
    *hi = arr[0];
    for (int i = 1; i < size; i++) {
        if (arr[i] < *lo) {
            *lo = arr[i];
        }
        if (arr[i] > *hi) {
            *hi = arr[i];
        }
    }
}


struct student
 {
    char name[20];
    int homework;
    int project;
};

struct student bonus_copy(struct student s, int bonus) {
    s.project += bonus;
    if (s.project > 100) s.project = 100;
    return s;
}

void bonus_in_place(struct student *s, int bonus) {
    s->project += bonus;
    if (s->project > 100) {
        s->project = 100;
    }
}

void add_one(int *p) 
{
    *p = *p + 1;
}


int main(void) {
    printf("--- 1. SWAP TEST ---\n");
    int x = 1, y = 2;
    swap(&x, &y);
    check_int(x, 2);
    check_int(y, 1);

    printf("\n--- 2. ADD_BONUS TEST ---\n");
    int s = 95;
    add_bonus(&s, 3);  
    check_int(s, 98);
    add_bonus(&s, 5);  
    check_int(s, 100);

    printf("\n--- 3. MIN_MAX TEST ---\n");
    int scores[5] = {70, 82, 95, 63, 88};
    int lo, hi;
    min_max(scores, 5, &lo, &hi);
    check_int(lo, 63);
    check_int(hi, 95);

    printf("\n--- 4-5. STRUCT BONUS TEST ---\n");
    struct student aki = {"Aki", 80, 90};
    struct student copy = bonus_copy(aki, 5);
    check_int(copy.project, 95);
    check_int(aki.project, 90);

    bonus_in_place(&aki, 5);
    check_int(aki.project, 95);
    bonus_in_place(&aki, 20);
    check_int(aki.project, 100);

    printf("\n(All tests passed)!\n");
    
    int a = 5;
    int b = a;
    
    add_one(&a);
    add_one(&a);
    
    printf("%d %d\n", a, b);

    return 0;
}