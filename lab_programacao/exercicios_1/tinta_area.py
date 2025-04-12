"""
    Receba o valor da tinta e a quantidade de metros quadrados que ela cobre. 
    Depois solicite ao usuário quantos metros quadrados ele quer pintar. 
    Mostre quantos galões ele precisa e quanto custará. 
    Se forem necessários frações de galões avise o usuário tipo: 2 galões inteiros e 0,5 galões
"""

print('')

while True:
    try:
        valor = float(input('Digite o valor do balde de tinta: '))
        if valor <= 0:
            raise ValueError
        break
    except ValueError:
        print('Valor inválido. Digite um número maior que 0.\n')

while True:
    try:
        rendimento = float(input('Digite quantos metros quadrados o balde cobre: '))
        if rendimento <= 0:
            raise ValueError
        break
    except ValueError:
        print('Valor inválido. Digite um número maior que 0.\n')

while True:
    try:
        area = float(input('Digite quantos metros quadrados serão pintados: '))
        if area <= 0:
            raise ValueError
        break
    except ValueError:
        print('Valor inválido. Digite um número maior que 0.\n')


baldes_inteiros = area / rendimento

if (area % rendimento > 0):
    baldes_inteiros = (area // rendimento) + 1
else:
    baldes_inteiros = area / rendimento

custo_total = baldes_inteiros * valor

print(f'\nVocê precisará de {int(baldes_inteiros)} galões.\nCusto total: R${custo_total:.2f}\n')