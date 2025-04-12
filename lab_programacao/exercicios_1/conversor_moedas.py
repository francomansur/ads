"""
    Peça ao usuário para inserir as notas de um aluno e calcule a média, classificando-o como aprovado ou reprovado.
"""

print('')

usd = 5.50

while True:
    try:
        real = float(input('Digite o valor em Real: R$'))
        if real <= 0:
            raise ValueError
        else:
            break
    except ValueError:
        print('Valor inválido. Não pode ser convertido.\n')

print(f'\nR${real} = ${real/5.50:.2f}\n')