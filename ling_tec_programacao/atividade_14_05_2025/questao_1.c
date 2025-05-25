#include <stdio.h>
#include <stdlib.h>

int main (void)
    {
        float saldo = 1000, check, dep_saque;
        int opcao;

        system("clear");
        do {
            do {
                system("clear");
                printf("\nDigite o código da ação:\n\n   1) Verificar Saldo.\n   2) Depositar.\n   3) Sacar.\n   4) Sair do Caixa Eletrônico.\n\n>> ");
                check = scanf("%d", &opcao);
                while(getchar() != '\n');
            } while (opcao < 0 || opcao > 4|| check != 1); check = 0;

            switch (opcao) {
                
                case 1:
                    printf("\nSeu saldo é de %.2f, pressione enter para continuar.", saldo);
                    getchar();
                    while(getchar() != '\n');
                    break;

                case 2:
                    do {
                        printf("\nDigite o valor a ser depositado: ");
                        check = scanf("%f", &dep_saque);
                    } while (dep_saque < 0 || check != 1); check = 0;
                    saldo = saldo + dep_saque;
                    printf("Você depositou %.2f, pressione enter para continuar.\n", dep_saque);
                    while(getchar() != '\n');
                    getchar();
                    break;

                case 3:
                    do {
                        printf("\nDigite o valor a ser sacado: ");
                        check = scanf("%f", &dep_saque);
                        if (dep_saque > saldo) {
                            printf("Você não possui saldo suficiente. Saldo atual: %.2f\n", saldo);
                        }
                        if (check != 1) {
                            printf("Digite um valor válido!\n");
                        }
                    } while (dep_saque < 0 || dep_saque > saldo || check != 1); check = 0;
                    saldo = saldo - dep_saque ;
                    printf("Você sacou %.2f, pressione enter para continuar.\n", dep_saque);
                    while(getchar() != '\n');
                    getchar();
                    break;

            }
            system("clear");
        } while (opcao != 4);
        printf("\nCaixa Finalizado.\n");
    }