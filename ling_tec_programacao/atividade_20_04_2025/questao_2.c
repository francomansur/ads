#include <stdio.h>
#include <string.h>

int main (void) 
{
    char nome[100];
    int cargo, hora_mes, extra_mes = 0;
    float salario;

    printf("\nDigite o nome do funcionário: ");
    fgets(nome, sizeof(nome), stdin);
    nome[strcspn(nome, "\n")] = '\0'; 

    do {
        printf("\nDigite o código do nível do cargo do funcionário:\n1: Junior\n2: Pleno\n3: Senior\n>> ");
        scanf("%d", &cargo);
        while (getchar() != '\n'); 
    } while (cargo < 1 || cargo > 3);

    do {
        printf("\nDigite a quantidade de horas trabalhadas: ");
        if (scanf("%d", &hora_mes) != 1) {
            printf("Entrada inválida! Digite apenas números.\n");
            while (getchar() != '\n'); 
            hora_mes = -1; 
        }
    } while (hora_mes < 0);
    
    switch (cargo) {
        case 1:
            if (hora_mes > 180) {
                extra_mes = hora_mes - 180;
                salario = (hora_mes - extra_mes) * 32.08;
            }
            else {
                salario = hora_mes * 32.08;
            } break;

        case 2:
            if (hora_mes > 160) {
                extra_mes = hora_mes - 160;
                salario = (hora_mes - extra_mes) * 44.10;
            } else {
                salario = hora_mes * 44.10;
            } break;

        case 3:
            if (hora_mes > 140) {
                extra_mes = hora_mes - 140;
                salario = (hora_mes - extra_mes) * 58.20;
            }
            else {
                salario = hora_mes * 58.20;
            } break;
    }

printf("\n%-30s %20s %20s %20s %20s\n", "Nome", "Horas trabalhadas", "Horas efetivas", "Horas excedentes", "Salário");
printf("-----------------------------------------------------------------------------------------------------------------------\n");
printf("%-30s %20d %20d %20d %14s%6.2f\n", nome, hora_mes, hora_mes - extra_mes, extra_mes, "R$", salario);
printf("\n");

}