#include <stdio.h>

void print_rect(int w, int h) 
{
    for (int i = 0; i < h; i++) {
        for (int j = 0; j < w; j++) {
            printf("*");
        }
        printf("\n"); 
    }
}

void print_score_bar(int score) {
    int count = score / 10;
    for (int i = 0; i < count; i++) {
        printf("*");
    }
    printf("\n"); 
}

int main(void) {
    print_rect(4, 2);
    print_score_bar(73);
    return 0;
}