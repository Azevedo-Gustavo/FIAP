print("2 – Os alunos da sua turma fizeram uma votação para escolher qual dia da semana é o melhor para a"
      "realização das lives. Desenvolva um programa em que o usuário informe a quantidade de votos que cada um"
      "dos 5 dias da semana (segunda-feira, terça-feira, quarta-feira, quinta-feira e sexta-feira) obtiveram,"
      "verifique e exiba qual dia foi o escolhido.\n")

seg = int(input("Quantos votaram em 'segunda-feira'? "))
ter = int(input("Quantos votaram em 'terça-feira'? "))
qua = int(input("Quantos votaram em 'quarta-feira'? "))
qui = int(input("Quantos votaram em 'quinta-feira'? "))
sex = int(input("Quantos votaram em 'sexta-feira'? "))

if seg>ter>qua>qui>sex:
      print("O melhor dia da semana para a realização das lives é %s!" %'segunda-feira')

elif ter>seg>qua>qui>sex:
      print("O melhor dia da semana para a realização das lives é %s!" %'terça-feira')

elif qua>seg>ter>qui>sex:
      print("O melhor dia da semana para a realização das lives é %s!" % 'quarta-feira')

elif qui>seg>ter>qua>sex:
      print("O melhor dia da semana para a realização das lives é %s!" % 'quinta-feira')
elif seg==ter==qua==qui==sex:
      print("Impate! Por favor, votem novamente!")
else:
      print("O melhor dia da semana para a realização das lives é %s!" % 'sexta-feira')

input()
