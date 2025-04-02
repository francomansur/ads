#include <stdio.h>
#include <locale.h>

int main (void)
{
    int n[5];

    for (int i = 0; i < 5; i++){
        printf("Digite um número inteiro: ");
        scanf("%d", &n[i]); 
    }

    for (int j = 0; j < 5; j++ ){
        printf("%d r", n[j]);
    }
}
