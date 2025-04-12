"""
    Crie um programa que converta valores de reais para dólares utilizando uma taxa fixa.
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