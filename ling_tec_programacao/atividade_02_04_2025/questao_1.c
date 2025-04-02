#include <stdio.h>
#include <locale.h>

int main (void)
{
    int n;

    do {
        printf("Digite um número maior que 1 e menor que 130: ");
        scanf("%d", &n);
    } while (n <= 1 || n >=130);

    for (int i = n; i != -1; i--) {
        printf("%d \n", i);
    }
}