#include <stdio.h>
#include <locale.h>

int main (void)
{
    int n, count = -1, count_4080 = 0, count_range_4080 = 0;
    do {
        printf("Digite um número: ");
        scanf("%d", &n);

        if (n > 40 && n < 80) {
            count_range_4080++;

        } 
        else if (n == 40 || n == 80) {
            count_4080++;
        }
        else {
            count++;
        };
    } while (n != 100);
    printf("\nTentativas:\nDe 39 a 79: %d\n40 ou 80: %d\nOutras: %d\n", count_range_4080, count_4080, count);
}

