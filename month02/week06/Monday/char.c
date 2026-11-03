#include <stdio.h>
#include <stdbool.h>

bool checkIsDigitChar(char c)
{
   
    if (c >= '0' && c <= '9')
    {
        return true;
    }
    else
    {
        return false;
    }
}

char getTemperatureStatus(double temp)
{
    if (temp < 0.0)
    {
        return 'c';
    }
    else if (temp <= 30.0)
    {
        return 'n';
    }
    else
    {
        return 'H';
    }
}

char getGrade(int score)
{
    if (score >= 90)
    {
        return 'A';
    }
    else if (score >= 80)
    {
       return 'B';
    }
    else if (score >= 70)
    {
        return 'C';
    }
    else if (score >= 60)
    {
        return 'D';
    }
    else
    {
        return 'F';
    }
}

bool isLeapYear(int year)
{
    if (year % 400 == 0)
    {
        return true;
    }
    else if (year % 100 == 0)
    {
        return false;
    }
    else if (year % 4 == 0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

int calculateTicketPrice(int age, bool isWeekend) 
{
    int price = 0; 

    if (age <= 5) 
    {
        price = 0;
    }
    else if (age <= 17)
    {
        price = 5000;
    }
    else if (age <= 64)
    {
        price = 10000; 
    }
    else
    {
        price = 6000;
    }

    if (isWeekend && price > 0)
    {
        price = price + 2000;
    }

    return price;
}

void printcountdown(int n)
{
    for(int i = n; i >= 1; i = i - 1)
    {
        printf("%d ", i); 
    }

    printf("Start!\n");
}

int sumOfRange(int from, int to)
{
    int sum = 0; 
    
    for(int i = from; i < to; i++)
    {
        sum = sum + i; 
    }
    return sum;
}

int main(void)
{
   printCountdown(10);
   printf("%d", sumOfRange(10, 15));

   
    return 0;
}