#include <stdio.h>
#include <locale.h>

int main (void)
{
    int n, soma = 0;

    for (int i = 0; i < 5; i++){
        printf("Digite um número inteiro: ");
        scanf("%d", &n); 
        soma = soma + n;
    }
    printf("A soma dos números é %d\n", soma);
}
