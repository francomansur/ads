#include <stdio.h>
#include <string.h>

int main(void) {
    char nome[100], cargo[50], email[100], cartao[500], contato[150];
    int ramal;

    printf("\nDigite seu nome: ");
    fgets(nome, sizeof(nome), stdin);
    nome[strcspn(nome, "\n")] = '\0';

    printf("Digite seu cargo: ");
    fgets(cargo, sizeof(cargo), stdin);
    cargo[strcspn(cargo, "\n")] = '\0';

    printf("Digite seu ramal: ");
    scanf("%d", &ramal);
    getchar(); 

    printf("Digite seu email: ");
    fgets(email, sizeof(email), stdin);
    email[strcspn(email, "\n")] = '\0';

    strcpy(cartao, "------------------------------------------------------------\n");
    strcat(cartao, "Cartao de Visita\n");
    strcat(cartao, "------------------------------------------------------------\n");

    strcat(cartao, "Nome: ");
    strcat(cartao, nome);
    strcat(cartao, "\n");

    strcat(cartao, "Cargo: ");
    strcat(cartao, cargo);
    strcat(cartao, "\n");

    sprintf(contato, "Ramal: %d | Email: %s\n", ramal, email);
    strcat(cartao, contato);

    strcat(cartao, "------------------------------------------------------------\n");

    printf("\n%s\n", cartao);

    return 0;
}
