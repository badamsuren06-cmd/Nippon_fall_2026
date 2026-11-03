#include <stdio.h>
#include <stdbool.h>

void printGreeting(int times)
{
    for (int i = 1; i <= times; i++) 
    {
        printf("%d. Сайн уу!\n", i);
    }
}
// Дасгал 2: printEvenNumbers(10)
// 2 4 6 8 10
void printEvenNumbers(int limit)
{
    for (int i = 2; i <= limit; i += 2) 
    {
        printf("%d\n", i); 
    }

}

// Дасгал 3: printLetters('a', 'f')
// a b c d e f
//
// printLetters('z', 'z')
// z
void printLetters(char from, char to)
{
    for (char c = from; c <= to; c++) 
    {
        printf("%c\n ", c); 
    }
}

// Дасгал 4: printStarLine(5)
// *****
void printStarLine(int n)
{
    for (int i = 0; i < n; i++) 
    {
        printf("*\n"); 
    }
 
}

// Дасгал 5: countdownBy(20, 5)
// 20 15 10 5 
//
// countdownBy(10, 3)
// 10 7 4 1
void countdownBy(int from, int step)
{
    for (int i = from; i > 0; i -= step) 
    {
        printf("%d\n ", i); 
    }
  
}

// Дасгал 7: printFizzBuzz(15)
// 1
// 2
// Fizz
// 4
// Buzz
// Fizz
// 7
void printFizzBuzz(int n)
{
    for (int i = 1; i <= n; i++) 
    {
        if (i % 15 == 0) 
        {
            printf("FizzBuzz\n");
        }
        else if (i % 3 == 0) 
        {
            printf("Fizz\n");
        } 
        else if (i % 5 == 0)
        {
            printf("Buzz\n");
        } 
        else 
        {
            printf("%d\n", i);
        }
    }
}

void printSpaces(int n)
{
    for (int i = 0; i < n; i++)
    {
        printf(" ");
    }
}

void printPyramid(int height)
{
    for (int i = 1; i <= height; i++)
    {
        printSpaces(height - i);
        for (int j = 0; j < (2 * i - 1); j++)
        {
            printf("*\n");
        }
    }
}


    // printf("Ня Да Мя Лх Пү Ба Бя\n");
    // TODO: firstWeekday удаа "   " (3 зай) хэвлэ
    // TODO: day = 1-ээс daysInMonth хүртэл:
    //       printf("%3d", day);
    //       (firstWeekday + day) % 7 == 0 бол "\n"
    // TODO: Давталтын дараа сүүлийн мөр \n-ээр төгссөн эсэхийг шалгаад, үгүй бол "\n"
// Дасгал 10: printMonthCalendar(6, 30)          (1-ний өдөр Бямба)
//   Ня Да Мя Лх Пү Ба Бя
//                      1
//    2  3  4  5  6  7  8
//    9 10 11 12 13 14 15
//   16 17 18 19 20 21 22
//   23 24 25 26 27 28 29
//   30
//
// printMonthCalendar(0, 28)          (1-ний өдөр Ням)
// Ня Да Мя Лх Пү Ба Бя
//    1  2  3  4  5  6  7
//    8  9 10 11 12 13 14
//   15 16 17 18 19 20 21
//   22 23 24 25 26 27 28
//
// printMonthCalendar(5, 31)          (1-ний өдөр Баасан)
// Ня Да Мя Лх Пү Ба Бя
//                    1  2
//    3  4  5  6  7  8  9
//   10 11 12 13 14 15 16
//   17 18 19 20 21 22 23
//   24 25 26 27 28 29 30
//   31
void printMonthCalendar(int firstWeekday, int daysInMonth)
{
    printf("Ня Да Мя Лх Пү Ба Бя\n");

    for (int i = 0; i < firstWeekday; i++)
    {
        printf("   ");
    }

    for (int day = 1; day <= daysInMonth; day++)
    {
        printf("%3d", day);
       
        if ((firstWeekday + day) % 7 == 0)
        {
            printf("\n");
        }
    }

    if ((firstWeekday + daysInMonth) % 7 != 0)
    {
        printf("\n");
    }
}


int main(void)
{
    printGreeting(3);
    printEvenNumbers(10);
    printLetters('a', 'f');
    printStarLine(5);
    countdownBy(20, 5);
    printFizzBuzz(15);
    printMonthCalendar(6, 30);
    printMonthCalendar(0, 28);
    printMonthCalendar(5, 31);

    return 0;
}