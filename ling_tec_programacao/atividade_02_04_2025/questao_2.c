#include <stdio.h>
#include <locale.h>

int main (void)
{
    int n;

    do {
        printf("Digite um número maior que 1 e menor que 200: ");
        scanf("%d", &n);
    } while (n <= 1 || n >=130);

    for (int i = n*2, j = n, y = 0; i >= 0; i=i-2, j--, y++) {
        printf("%d - %d - %d\n", i, j, y);
    }
}