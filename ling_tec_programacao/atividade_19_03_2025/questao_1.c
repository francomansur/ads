#include <stdio.h>
#include <locale.h>

int main (void)
    {
        setlocale(LC_ALL,"");

        char nome[50];
        char cidade[30];
        int idade;

        printf("Digite seu nome: ");
        scanf("%s", nome);

        printf("\nDigite o nome da sua cidade: ");
        scanf("%s", cidade);

        printf("\nDigite sua idade: ");
        scanf("%d", &idade);

        if (idade >= 18)
        {
            printf("\n%s, nascido em %s, possui %d anos e é maior de idade.\n", nome, cidade, idade);
        }
        else if (idade < 18)
        {
            printf("\n%s, nascido em %s, possui %d anos e é menor de idade.\n", nome, cidade, idade);
        }
        else
        {
            printf("\nDados inválidos.\n");
        }
    }
