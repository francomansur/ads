"""
    Crie um programa que permita adicionar e remover itens de um estoque representado por uma lista/dicionário
"""

produtos = {}

while True:
    try:
        if len(produtos) == 0:
            produto = str(input('\nInsira o nome de um primeiro produto: '))
            quantidade = int(input('Quantidade: '))
            if quantidade <= 0:
                raise ValueError
            else:
                produtos[produto] = quantidade
            break
    except ValueError:
        print('Valor Inválido.')

while True:
    try:
        acao = int((input('\nDigite:\n1: Entrada/Estoque\n2: Retirada/Estoque n\n3: Para sair\n>> ')))
        
        if (acao < 1) or (acao > 3):
            raise ValueError
        
        elif (acao == 3):
            print('\nItens em estoque:')
            for produto in produtos:
                print(f'{produto}: {produtos[produto]}')
            print('')
            break

        else:
            match acao:
                case 1:
                    produto = str(input('\nDigite o nome do produto: '))
                    quantidade = int(input('Quantidade: '))
                    if quantidade <= 0:
                        raise ValueError
                    elif produto not in produtos:
                        produtos[produto] = quantidade
                    else:
                        produtos[produto] = produtos[produto] + quantidade
                case 2:
                    produto = str(input('\nDigite o nome do produto: '))
                    quantidade = int(input('Quantidade: '))
                    if quantidade <= 0:
                        raise ValueError
                    elif produto not in produtos:
                        print('Esse produto não existe no estoque')
                    elif produtos[produto] == 0:
                        print('Esse produto já está zerado no estoque.')
                    else:
                        produtos[produto] = produtos[produto] - quantidade

    except ValueError:
        print('Valor inválido')

