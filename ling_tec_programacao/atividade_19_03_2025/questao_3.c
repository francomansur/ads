#include <stdio.h>
#include <locale.h>

int main (void)
    {
        setlocale(LC_ALL,"");

        float total;
        int metodo_pagamento;
        int parcelamento;

        printf("Digite o valor total da compra: ");
        scanf("%f", &total);

        printf("\nQual a forma de pagamento:\n 1: : � vista com 10% de desconto \n2: em duas vezes (pre�o da etiqueta)\n3: de 3 at� 10 vezes com 3% de juros\n");
        scanf("%d", &metodo_pagamento)

        if (metodo_pagamento==1)
        {
            total = (total*0.9);
        }
        else if
        {

        }
    }
