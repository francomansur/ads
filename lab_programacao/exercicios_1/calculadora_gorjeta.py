"""
    Peça ao usuário o valor da conta e o percentual da gorjeta que deseja dar. Calcule e exiba o valor total a pagar.
"""

while True:
    try:
        valor = float(input("Digite o valor da conta: "))
        if valor <= 0:
            raise ValueError
        else:
            break
    except ValueError:
        print("Valor inválido.\n")

while True:
    try:
        gorjeta = float(input("Digite a porcentagem (%) da gorjeta: "))
        if  gorjeta < 0:
            raise ValueError
        else:
            break
    except ValueError:
        print("Porcentagem de gorjeta inválida.\n")
        
valor_total = valor + (valor * (gorjeta/100))
print(valor_total)