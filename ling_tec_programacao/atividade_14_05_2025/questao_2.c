#include <stdio.h>
#include <string.h>

int main(void) {
    char texto[200];
    int count = 0;
    int dentro_palavra = 0;

    printf("Digite uma frase: ");
    fgets(texto, sizeof(texto), stdin);
    texto[strcspn(texto, "\n")] = '\0';

    for (int i = 0; texto[i] != '\0'; i++) {
        if (texto[i] != ' ' && dentro_palavra == 0) {
            count++;
            dentro_palavra = 1;
        } else if (texto[i] == ' ') {
            dentro_palavra = 0;
        }
    }

    printf("Sua frase tem: %d palavras.\n", count);
    return 0;
}
