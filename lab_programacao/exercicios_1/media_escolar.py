"""
    Peça ao usuário para inserir as notas de um aluno e calcule a média, classificando-o como aprovado ou reprovado.
"""

print('')

notas = []
count_nota = 1

while True:
    try:
        nota = input(f'Digite a {count_nota}ª nota (0 a 100): ')

        if nota.lower() == "sair":
            break

        nota = float(nota)

        if nota < 0 or nota > 100:
            raise ValueError

        notas.append(nota)
        count_nota += 1

    except ValueError:
        print('Valor inválido.\n')

if notas:
    media = sum(notas) / len(notas)

    if media >= 60:
        print(f'\nA média do aluno foi de {media:.2f}.\nAluno aprovado!\n')
    else:
        print(f'\nA média do aluno foi de {media:.2f}.\nAluno reprovado!\n')
else:
    print("\nNenhuma nota foi inserida.\n")


