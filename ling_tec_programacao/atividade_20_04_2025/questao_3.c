#include <stdio.h>
#include <string.h>

int main (void) 
{
    char nome[5][100];
    int cargo[5], hora_mes[5], extra_mes[5];
    float salario[5];

    for (int i = 0; i < 5; i++) {

        if (i > 0) while (getchar() != '\n');
        printf("\nDigite o nome do %dº funcionário: ", i+1);
        fgets(nome[i], sizeof(nome[i]), stdin);
        nome[i][strcspn(nome[i], "\n")] = '\0'; 

        do {
            printf("\nDigite o código do nível do cargo do funcionário:\n1: Junior\n2: Pleno\n3: Senior\n>> ");
            scanf("%d", &cargo[i]);
            while (getchar() != '\n'); 
        } while (cargo[i] < 1 || cargo[i] > 3);

        do {
            printf("\nDigite a quantidade de horas trabalhadas: ");
            if (scanf("%d", &hora_mes[i]) != 1) {
                printf("Entrada inválida! Digite apenas números.\n");
                while (getchar() != '\n'); 
                hora_mes[i] = -1; 
            }
        } while (hora_mes[i] < 0);
        
        switch (cargo[i]) {
            case 1:
                if (hora_mes[i] > 180) {
                    extra_mes[i] = hora_mes[i] - 180;
                    salario[i] = (hora_mes[i] - extra_mes[i]) * 32.08;
                }
                else {
                    salario[i] = hora_mes[i] * 32.08;
                } break;

            case 2:
                if (hora_mes[i] > 160) {
                    extra_mes[i] = hora_mes[i] - 160;
                    salario[i] = (hora_mes[i] - extra_mes[i]) * 44.10;
                } else {
                    salario[i] = hora_mes[i] * 44.10;
                } break;

            case 3:
                if (hora_mes[i] > 140) {
                    extra_mes[i] = hora_mes[i] - 140;
                    salario[i] = (hora_mes[i] - extra_mes[i]) * 58.20;
                }
                else {
                    salario[i] = hora_mes[i] * 58.20;
                } break;
        }
    }   

printf("\n%-30s %20s %20s %20s %20s\n", "Nome", "Horas trabalhadas", "Horas efetivas", "Horas excedentes", "Salário");
printf("-----------------------------------------------------------------------------------------------------------------------\n");
for (int j = 0; j< 5; j++) {
    printf("%-30s %20d %20d %20d %14s%6.2f\n", nome[j], hora_mes[j], hora_mes[j] - extra_mes[j], extra_mes[j], "R$", salario[j]);
}
printf("\n");

}