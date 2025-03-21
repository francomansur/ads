#include <stdio.h>
#include <locale.h>

int main (void)
    {
        setlocale(LC_ALL,"");

        float total;
        int metodo_pagamento;
        int parcelamento;

        printf("\nDigite o valor total da compra: ");
        scanf("%f", &total);

        printf("\nQual a forma de pagamento:\n1: À vista com 10%% de desconto \n2: Em duas vezes (valor da etiqueta)\n3: De 3 até 10 vezes com 3%% de juros\n>> ");
        scanf("%d", &metodo_pagamento);

        if (metodo_pagamento == 1)
        {
            total = (total*0.9);
            printf("\nPagamento à vista\nTotal: %.2f", total);
            return 0;
        }
        else if (metodo_pagamento == 2)
        {
            parcelamento = 2;
            printf("\nPagamento em 2x\n2 Parcelas de %.2f\nTotal: %.2f", total/2, total);
            return 0;
        }
        else if (metodo_pagamento == 3)
        {
            total = total*1.03;
            printf("\nDigite o número de parcelas: ");
            scanf("%d", &parcelamento);

            if (parcelamento < 3 || parcelamento > 10)
            {
                printf("Número de parcelas inválido.");
                return 1;
            }
            else
            {
                printf("\nPagamento em %dx\n%d Parcelas de %.2f\nTotal: %.2f\n", parcelamento, parcelamento, total/parcelamento, total);
            }
        }
    }
