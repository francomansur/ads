#include <stdio.h>
#include <locale.h>

int main (void)
{
    int n[5];

    for (int i = 0; i < 5; i++){
        printf("Digite um número inteiro: ");
        scanf("%d", &n[i]); 
    }
    printf("%d", n[0]+n[1]+n[2]+n[3]+n[4]);
}
