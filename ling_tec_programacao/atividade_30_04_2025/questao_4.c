#include <stdio.h>
#include <string.h>

int main (void)
    {
        float salario, imposto, valor_imposto, check;
        int idade;

        do {
            printf("Digite seu salário: ");
            check = scanf("%f", &salario);
            while(getchar() != '\n');
        } while (salario < 0 || check != 1); check = 0;

        do {
            printf("Digite sua idade: ");
            check = scanf("%d", &idade); 
            while(getchar() != '\n');
        } while (idade < 0 || check != 1); check = 0;

        if (idade < 18) {imposto = 0;} 

        else if (idade > 18 && idade < 65) {
            (salario <= 2500)? imposto = 0: 
            (salario > 2500 && salario < 4500)? imposto = 0.15:
            (salario >= 4500)? imposto = 0.275: 0;

        } else if (idade > 65) {
            (salario <= 3500)? imposto = 0:
            (salario > 3500)? imposto = 0.15: 0;
        }

        if (imposto <= 0) {
            printf("\nVocê está isento de imposto!\n");
        } else {
            valor_imposto = salario * imposto;
            printf("\nSeu imposto é de R$:%.2f\n", valor_imposto);
        }
    }
