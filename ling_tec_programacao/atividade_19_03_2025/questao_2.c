#include <stdio.h>
#include <locale.h>

int main (void)
    {
        setlocale(LC_ALL,"");

        char nome[50];
        int cargo;
        float salario;

        printf("Digite seu nome: ");
        scanf("%s", &nome);

        printf("\nDigite o c�digo do seu cargo:\n101: Gerente\n102: Analista\n103: Engenheiro\n104: T�cnico\n>>  ");
        scanf("%d", &cargo);

        printf("\nDigite seu sal�rio: ");
        scanf("%f", &salario);

        if (cargo==101)
        {
            salario = (salario+(salario*0.10));
        }
        else if (cargo==102)
        {
            salario = (salario+(salario*0.20));
        }
        else if (cargo==103)
        {
            salario = (salario+(salario*0.20));
        }
        else if (cargo==104)
        {
            salario = (salario+(salario*0.30));
        }
        else
        {
            printf("\nDados inv�lidos.");
        }

        printf("Novo sal�rio: %.2f\n", salario);
    }
