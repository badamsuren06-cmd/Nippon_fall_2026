#include <stdio.h>

struct student {
    char name[20];
    int quiz;
    int project;
};

/* final_score : struct student -> double   quiz 40%, project 60% (W5) */
double final_score(struct student s) {
    return 0.4 * s.quiz + 0.6 * s.project;
}

/* letter_grade : double -> char   (W5 Мягмар) */
char letter_grade(double score) {
    if (score >= 90) {
        return 'A';
    } else if (score >= 80) {
        return 'B';
    } else if (score >= 70) {
        return 'C';
    } else if (score >= 60) {
        return 'D';
    } else {
        return 'F';
    }
}




int main(void) {
    struct student group[6] = {
        {"Aki", 80, 90}, {"Sora", 60, 60}, {"Mina", 95, 91},
        {"Ren", 45, 55}, {"Bat", 70, 75}, {"Uka", 100, 34}
    };
    
    printf("%s\n", group[2].name);
    printf("%d\n", group[3].project);
    printf("%c\n", group[4].name[0]);
    group[1].quiz = 90;
    printf("%d\n", group[1].quiz);
    struct student copy = group[0];
    copy.project = 0;
    printf("%d\n", group[0].project);

    double aki_score = final_score(group[0]);
    printf("Aki final score: %.1f (Grade: %c)\n", aki_score, letter_grade(aki_score));

    return 0;
}