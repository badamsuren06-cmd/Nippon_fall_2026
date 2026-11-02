#include <stdio.h>

// if else 
// (cond)

// racket дээр age гэдэг параметраас хамаараад 
// 0 < age <= 12 baby
// 13 < age <= 19 teenager 
// 20 < age <= 65 adult
// 65 < age senior
// if (0 < age && age <= 12)
//
void getAgeCategory(int age)
{
    if (0 < age && age <= 12)
    {
        printf("baby\n");
    }
    else if (12 < age && age <= 19) // 13 болон түүнээс дээш
    {
        printf("teenager\n");
    }
    else if (19 < age && age <= 65) // 20 болон түүнээс дээш, 65 хүртэл
    {
        printf("adult\n");
    }
    else if (65 < age)              // 65-аас дээш
    {
        printf("senior\n");
    }
    else
    {
        printf("invalid age\n");    // Семмиколор (;) нэмсэн
    }
}

int main(void)
{
    getAgeCategory(5);    // baby
    getAgeCategory(15);   // teenager
    getAgeCategory(30);   // adult
    getAgeCategory(70);   // senior
    getAgeCategory(-1);   // invalid age
    getAgeCategory(1000); // senior (эсвэл та дээд хязгаар тавьж болно)
    
    return 0;
}