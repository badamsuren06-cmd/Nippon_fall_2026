#include <stdio.h>
#include <stdbool.h>
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
/**
 * Жишээ 1: нийт үнийн дүн ба хөнгөлөлт (Үржих * оператор)
 * 
 * Ойлголт:Бутархай тоог хувиар бодох (double үржүүлэх)
 * Даалгвар: Барааны үндсэн үнэ (double price) bolon
 * хөнглөлтийн хувиар
 * (double discount_percent, жишээ нь 0.20 гэдэг нь 20%) авч
 * хөнгөлөгдсөн үнийг бодож буцаадаг
 * double apply_descount(double price, double discount_percent)
 * функц бич
 * 
 * 
 * 
 * Ex02
 * Нийнт минутаас цагийг олох (бүхэл тооны хуваалт /)
 * Ойлголт; С хэлд int- ийг int-д хуваахад орноос хойших бутархай 
 * орхигдожь зөвхөн бүхэл хэсгэн үлддэг
 * Даалгавар; нийт минутыг авчь хэдэн бүтэн цаг байгааг 
 * буцаадаг int get_hours(int total)
 * 
 * Ex03
 * Жижиг үсгийг том үсэг болгох (char арифтетик)
 * Ойлголт; ASCII хүснэгтэд жижиг үсэг болон том үсгийн
 * тогтмол зайн зөрүү (32) байдаг.
 * Даалгавар; Ангил цагаан толгойн жижиг үсэг авч түүний
 * үсэг болгон буцаадаг char to_upper_case(char c) функц
 * Турших утга; to_upper_case('g')-> гаралт 'G'
 * 
 * Ex05
 * Тэгш ба Эерэг тоо мөн үү ? (Логик AND &&)
 * a % 2 == && a > 0
 * Ойлголт; Хоёр нөхцөлийг нэгэн дөрөвт шалгах
 * Даалгавар: Тоо эерэг (0- ээс их) ба тэгш эсэхийг шалгах
 * bool is_positive_and_even(int number) функц бич
 * шалгах : 
 * is_positive_and_even(4) -> true
 * is_positive_and_even(4) -> false
 * Ex06
 * Сүүлийн орны цифрийн утга солихгүйгээр 0 болох
 * Даалгавар: Өгөгдсөн эерэг бүхэл тооны хамгийн сүүлийн
 * цифрийг хасаж, 0 бологдог int round_down_to_ten(int n)
 * 
 * Ex07
 * Тооны дор хаяж 2 нь эерэг эсэхийг шалгах (логик) 
 */

 
double apply_descount(double price, double discount_percent) 
{
    return price * (1.0 - discount_percent);
}

int get_hours(int total) {
    return total / 60;
}

char to_upper_case(char c) 
{
    if (c >= 'a' && c <= 'z') {
        return c - 32;
    }
    return c;
}
bool is_positive_and_even(int number)
{
    return (number > 0) && (number % 2 == 0)

}
int main(void) 
{
    printf("Ex01 (100.0 with 20%% off): %.2f\n", apply_descount(100.0, 0.20));
    printf("Ex02 (130 minutes to hours): %d\n", get_hours(130));
    printf("Ex03 (to_upper_case('g')): %c\n", to_upper_case('g'));

    return 0;
}

