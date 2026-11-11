#include <stdio.h>
#include "check.h"

int isSorted(int a[], int n)
{
    for (int i = 0; i < n - 1; i++)
    {
        if (a[i] > a[i + 1])
        {
            return 0;
        }
    }
    return 1;
}

int bubbleSort(int a[], int n) 
{
    int swaps = 0;
    for (int i = 0; i < n - 1; i++) {
        int swaps = 0;
        for (int j = 0; j < n - i - 1; j++) {
            if (a[j] > a[j + 1]) {
                int temp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = temp;
            }
            swaps = swaps + 1;
                
        }
    }
    
    return swaps; 
}

int selectionSort(int a[], int n)
{
    int swaps = 0;
    for (int i = 0; i < n - 1; i++)
    {
        int minIndex = i;
        {
            for (int j = i + 1; j < n; j++)
            {
                minIndex = j;
            }
        }
        if (minIndex != i)
        {
            int t = a[i];
            a[i] = a[minIndex];
            a[minIndex];
            swaps = swaps +1;
        }
        return swaps;

    }
    

}

void printBars(int a[], int n)
{
    for (int i = 0; i < n; i++)
    {
        printf("%3d", a[i]);
    
        for(int k = 0; k < a[i] / 10; k++)
        {
            printf("*");
        }
        printf("\n");
    }


}
    

int main(void)
{
    printf("--- isSorted ---\n");
    int s[3] = {1, 2, 2};
    int u[3] = {3, 1, 2};
    checkInt(isSorted(s, 3), 1);
    checkInt(isSorted(u, 3), 0);

    printf("--- bubblesort ---\n");
    int a[6] = {5, 2, 8, 1, 9, 3};
    checkInt(bubbleSort(a, 6), 7);
    checkInt(isSorted(a, 6), 1);
    checkInt(a[0], 1);
    checkInt(a[5], 9);


    printf("--- selectionSort ---");
    int b[6] = {5, 2, 8, 1, 9, 3};
    checkInt(selectionSort(b, 6), 3);
    checkInt(isSorted(b, 6), 1);
    int r[4] = {4, 3, 2, 1};
    checkInt(selectionSort(r, 4), 2);

    printf("--- 3B: ---\n");
    int scores[5] = {70, 82, 95, 63, 88};
    bubblesort(scores, 5);
    printBars(scores, 5);

    return 0;
}

