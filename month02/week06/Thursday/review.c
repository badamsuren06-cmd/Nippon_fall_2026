#include <stdio.h>
#include "check.h"


int count_inversions(int a[], int n) {
    int inversions = 0;
    for (int i = 0; i < n - 1; i++) {
        for (int j = i + 1; j < n; j++) {
            if (a[i] > a[j]) {
                inversions++;
            }
        }
    }
    return inversions;
}


int is_sorted(int a[], int n) {
    for (int i = 0; i < n - 1; i++) {
        if (a[i] > a[i + 1]) {
            return 0;
        }
    }
    return 1;
}


int insertion_sort(int a[], int n) {
    int shifts = 0;
    for (int i = 1; i < n; i++) {
        int key = a[i];
        int j = i - 1;
        while (j >= 0 && a[j] > key) {
            a[j + 1] = a[j];
            j--;
            shifts++;
        }
        a[j + 1] = key;
    }
    return shifts;
}

void sort_array(int a[], int n) 
{
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (a[j] > a[j + 1]) {
                int temp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = temp;
            }
        }
    }
}


int median(int a[], int n) 
{
    int temp_arr[n];
    for (int i = 0; i < n; i++) {
        temp_arr[i] = a[i];
    }
    sort_array(temp_arr, n);
    
    return temp_arr[n / 2];
}

int main(void) 
{
    printf("--- count_inversions ---\n");
    int a[6] = {5, 2, 8, 1, 9, 3};
    int s[3] = {1, 2, 3};
    checkInt(count_inversions(a, 6), 7);
    checkInt(count_inversions(s, 3), 0);

    printf("--- insertion_sort ---\n");
    int b[6] = {5, 2, 8, 1, 9, 3};
    checkInt(insertion_sort(b, 6), 7);
    checkInt(is_sorted(b, 6), 1);

    printf("--- median ---\n");
    int c[5] = {5, 2, 8, 1, 9};
    int d[3] = {7, 7, 1};
    checkInt(median(c, 5), 5);
    checkInt(median(d, 3), 7);

    return 0;
}