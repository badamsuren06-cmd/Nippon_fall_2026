#include <stdio.h>
#include <assert.h>

/* check_int : бүхэл тоо тэнцүү бол PASS (C-ийн check-expect) */
void check_int(int actual, int expected) {
    if (actual == expected) {
        printf("PASS\n");
    } else {
        printf("FAIL: %d гарсан, %d хүлээсэн\n", actual, expected);
    }
}

/* check_double : зөрүү 0.001-ээс бага бол PASS (L8: double яг биш) */
void check_double(double actual, double expected) {
    double diff = actual - expected;
    if (diff < 0.001 && diff > -0.001) {
        printf("PASS\n");
    } else {
        printf("FAIL: %f гарсан, %f хүлээсэн\n", actual, expected);
    }
}
int main(void) {
    int a = 7;
    int b = 2;
    printf("%d\n", a / b);
    printf("%d\n", a % b);
    printf("%.1f\n", 7.0 / 2);
    printf("%d\n", 1234 % 10);
    printf("%d\n", 1234 / 10);

    int score = 50;
    score = score + 10;
    printf("%d\n", score);

    double x = 0.1 + 0.2;
    printf("%.17f\n", x);
    return 0;
}
/* cube : int -> int */
/* last_digit : int -> int   (L7: n mod 10) */
/* final_score : int int -> double   (quiz 40%, project 60%) */


int cube(int x)
{
    return x * x * x;
}

int last_digit(int n)
{
    return n % 10;
}

double final_score(int quiz, int project)
{
    return 0.4 * quiz + 0.6 * project;
}
int main(void)
{
    check_int(cube(3), 27);
    check_int(cube(-2), -8);
    check_int(last_digit(1234), 4);
    check_int(last_digit(7), 7);
    check_double(final_score(80, 90), 86.0);
    check_double(final_score(60, 60), 60.0);
    check_double(final_score(95, 91), 92.6);
    return 0;
}