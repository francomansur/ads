#include <stdio.h>
#include <string.h>

int main (void)
    {
        int idades[10], check_idade, maior = 0, menor = 1000;

        for (int i = 0; i < 10; i++) {

            do {
                printf("Digite a %dº idade: ", i+1);
                check_idade = scanf("%d", &idades[i]);

                while (getchar() != '\n');

            } while (check_idade != 1 || idades[i] < 0);

            if (idades[i] > maior) maior = idades[i];
            if (idades[i] < menor) menor = idades[i];
        }
        printf("\nA maior idade é: %d", maior);
        printf("\nA maior idade é: %d\n", menor);
        printf("");
    }
