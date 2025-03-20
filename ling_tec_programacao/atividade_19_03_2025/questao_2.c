#include <stdio.h>

int main (void)
    {

        char nome[50];
        int cargo;
        float salario, reajuste;

        printf("\nDigite seu nome: ");
        scanf("%s", nome);

        printf("\nDigite o código do seu cargo:\n101: Gerente\n102: Analista\n103: Engenheiro\n104: Técnico\n>>  ");
        scanf("%d", &cargo);

        switch (cargo) {
            case 101:
                reajuste = 0.10;
                break;
            case 102:
                reajuste = 0.20;
                break;
            case 103:
                reajuste = 0.20;
                break;
            case 104:
                reajuste = 0.30;
                break;
            default:
                printf("Opção inválida\n");
                return 1;  
        } 

        printf("\nDigite seu salário: ");
        scanf("%f", &salario); 
        salario = salario + (salario * reajuste);      

        printf("\nNome: %s\n"
            "Salário: %.2f\n"
            "Novo Salário: %.2f\n"
            "Aumento: %.2f\n",
            nome, salario / (1 + reajuste), salario, salario - (salario / (1 + reajuste)));
        printf("\n");
    }
