#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_NOME 100
#define MAX_ISBN 20
#define MAX_EDITORA 50

// Definindo a struct Livro
typedef struct Livro {
    char nome[MAX_NOME];    // Título do livro
    char isbn[MAX_ISBN];     // Número identificador do livro
    float preco;            // Preço do livro
    int score;              // Avaliação do livro (0 a 10)
    char editora[MAX_EDITORA];  // Nome da editora
} Livro;

int main() {
    int qtde;

    // Lê a quantidade de livros
    scanf("%d", &qtde);
    getchar();  // Para consumir o '\n' após a leitura do número

    if (qtde == 0) {
        printf("Sem livros\n");
        return 0;  // Termina o programa
    }

    // Aloca memória para os livros
    Livro* livros = (Livro*)malloc(qtde * sizeof(Livro));
    if (livros == NULL) {
        printf("Erro na alocação de memória!\n");
        return 1;  // Retorna erro caso falhe a alocação
    }

    // Lê os dados dos livros
    for (int i = 0; i < qtde; i++) {

        fgets(livros[i].nome, MAX_NOME, stdin);
        livros[i].nome[strcspn(livros[i].nome, "\n")] = '\0';  // Remove o '\n' do final da string

        fgets(livros[i].isbn, MAX_ISBN, stdin);
        livros[i].isbn[strcspn(livros[i].isbn, "\n")] = '\0';  // Remove o '\n' do final da string

        scanf("%f", &livros[i].preco);
        getchar();  // Limpa o buffer do '\n' que ficou após o scanf

        scanf("%d", &livros[i].score);
        getchar();  // Limpa o buffer do '\n' que ficou após o scanf

        fgets(livros[i].editora, MAX_EDITORA, stdin);
        livros[i].editora[strcspn(livros[i].editora, "\n")] = '\0';  // Remove o '\n' do final da string
    }

    // Exibe os dados dos livros
    for (int i = 0; i < qtde; i++) {
        printf("\nLivro %d:\n", i + 1);
        printf("Nome: %s\n", livros[i].nome);
        printf("ISBN: %s\n", livros[i].isbn);
        printf("Preço: R$ %.2f\n", livros[i].preco);
        printf("Score: %d\n", livros[i].score);
        printf("Editora: %s\n", livros[i].editora);
    }

    // Libera a memória alocada
    free(livros);

    return 0;
}
