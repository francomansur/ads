#include <stdio.h>

int main (void) 
{
    int numero[10];
    int valor;
    int soma = 0;
    int count = 0;

    while (count < 10) {

        printf("\nDigite o %d número: ", count + 1);

        if (scanf("%d", &valor) != 1) {
            printf("Entrada inválida. Digite apenas números!\n");

            while (getchar() != '\n');
            continue;
        }

        if (valor >= 1000) {
            printf("Valor inválido. O número deve ser menor que 1000.\n");
            continue;
        }

        numero[count] = valor;
        soma += valor;
        count++;

        printf("\nNúmeros digitados:\n------------------\n");
        for (int i = 0; i < count; i++) {
            printf("%10d\n", numero[i]);
        }
        printf("------------------\n");
        printf("Soma: %5d\n", soma);
    }
    printf("\n");
}