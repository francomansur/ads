#include <stdio.h>

int main (void)
    {
        int secreto = 7, numero = 0, check_numero;

        do {
            printf("Digite um número entre 1 e 10: ");
            scanf("%d", &numero);
            while (getchar() != '\n');

            numero == 7? printf("\nNúmero correto! (7)\n") : printf("Número incorreto! ");
            
        } while (numero != secreto);

    }
