"""
    Solicite um valor ao usuário e simule um saque, exibindo as cédulas entregues.
"""
print('')
cedulas = [200, 100, 50, 20, 10, 5, 1]
cedulas_saque = {}

while True:
    try:
        saque = int(input('Digite o valor do saque: '))
        if saque <= 0:
            raise ValueError
        saque_count = saque
        break
    except ValueError:
        print('Valor inválido. Só é possível sacar valores inteiros e positivos.\n')

for cedula in cedulas:
    if saque_count >= cedula:
        quantidade = saque_count // cedula
        saque_count = saque_count - (quantidade * cedula)
        cedulas_saque[cedula] = quantidade
    else:
        continue

print('\nVocê sacou:')
for cedula in cedulas_saque:
    print(f'{cedulas_saque[cedula]}x R${cedula}')
print('')
