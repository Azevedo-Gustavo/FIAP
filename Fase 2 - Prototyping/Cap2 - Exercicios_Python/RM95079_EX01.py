print("1 – Você foi procurado por um aluno do curso de Produção Multimídia do FIAP ON para desenvolver um trabalho em"
      "parceria: um serviço em que as pessoas possam usar um estúdio profissional para gravar seus vídeos para o"
      "YouTube com máxima qualidade. O serviço ganha dinheiro por meio de um sistema de assinaturas e de um bônus"
      "calculado por uma porcentagem sobre o faturamento que o canal do cliente obteve ao longo do ano."
      "Sua tarefa é criar um algoritmo que receba o tipo de assinatura do cliente, o faturamento anual dele e que"
      "calcule e exiba qual o valor do bônus que o cliente deve pagar a vocês."
      "A tabela abaixo mostra a porcentagem de acordo com cada nível de assinatura:\n")

from tabulate import tabulate

data = [['Basic', '30%'], ['Silver', '20%'], ['Gold', '10%'], ['Platinum', '5%']]

print(tabulate(data, headers=['Nível', 'Porcentagem sobre o faturamento']))

print("\n")

x = input("Informe a sua assinatura: ").upper()

print("\n")

y = float(input("Qual seu gasto anual: R$ "))

print("\n")

if x == "BASIC":
      disc = y * 0.3
      total = y - disc
      print("Seu gasto anual é de R$ {} e você ganhou um desconto de R$ {}. Seu gasto anual será de R$ {}.".format(y, disc, total))

elif x == "SILVER":
      disc = y * 0.2
      total = y - disc
      print("Seu gasto anual é de R$ {} e você ganhou um desconto de R$ {}. Seu gasto anual será de R$ {}.".format(y, disc, total))

elif x == "GOLD":
      disc = y * 0.1
      total = y - disc
      print("Seu gasto anual é de R$ {} e você ganhou um desconto de R$ {}. Seu gasto anual será de R$ {}.".format(y,disc,total))

elif x == "PLATINUM":
      disc = y * 0.05
      total = y - disc
      print("Seu gasto anual é de R$ {} e você ganhou um desconto de R$ {}. Seu gasto anual será de R$ {}.".format(y,disc,total))

else:
      print("O plano informado não é válido!")

input()
