print("3 – Muitos professores preferem adotar modelos diferentes de provas quando dão aulas para turmas muito grandes."
      "Por essa razão, a escola de inglês JoWell Sant’ana, em que todas as turmas são compostas por 50 alunos,"
      "solicitou que você criasse um sistema capaz de atender ao seguinte requisito: o professor deve digitar primeiro"
      "as notas dos 25 alunos que têm número ímpar na chamada (1, 3, 5..., 47, 49) e depois as notas dos 25 alunos que"
      "têm número par (2, 4, 6..., 48, 50). O sistema deve calcular e exibir a média de cada uma das metades da sala e"
      "informar, ao final, qual delas teve a maior nota. Há ainda um pedido especial do mantenedor: para que os"
      "professores não se confundam, ao digitar cada uma das notas deve ser exibida uma mensagem no seguinte padrão:"
      "VOCÊ ESTÁ DIGITANDO AS NOTAS DOS ALUNOS PARES (ou ímpares, quando for o caso)."
      "POR FAVOR, INSIRA A NOTA DO ALUNO DE NÚMERO x.\n")

count = 0
nota_imp = 0
nota_par = 0


for num in range (1, 51, 2):
      print(f"Você está digitando as notas dos alunos ímpares.\nPor favor, insira a nota do aluno de número {num}.")
      nota = float(input(f"Digite a nota do aluno {num}: "))
      if num % 2 == 1:
            nota_imp += nota
            media_imp = nota_imp/25

for num in range (2, 52, 2):
      print(f"Você está digitando as notas dos alunos pares.\nPor favor, insira a nota do aluno de número {num}.")
      nota = float(input(f"Digite a nota do aluno {num}: "))
      if num % 2 == 0:
            nota_par += nota
            media_par = nota_par/25
      elif nota.len() == '':
            print("vazio!")


if media_imp > media_par:
      print(f"A turma Ímpar obteve a maior nota da classe, com média {media_imp} e a turma Par obteve média {media_par}.")

elif media_par > media_imp:
      print(f"A turma Par obteve a maior nota da classe, com média {media_par} e a turma Ímpar obteve média {media_imp}.")

elif  media_imp == media_par:
      print(f"Empate!!\nAs duas turmas obteram a mesma média - {media_imp}.")

else:
      print("Compute as notas novamente!")

input()

"""while count != 3:
      print(f"Você está digitando as notas dos alunos ímpares.\nPor favor, insira a nota do aluno de número {num}.")
      num = int(input("Digite o número do aluno: "))
      if num % 2 == 1:
            nota = float(input(f"Digite a nota do aluno {num}: "))
            count += 1
            num += 2
            nota_imp += nota
            print(count)
            print(nota)
      else:
            print(f"Você está digitando as notas dos alunos ímpares.\n Por favor, insira a nota do aluno de número {num}.")"""






'''
while num_aluno < 6:

      if num_aluno % 2 == 1:
            num_aluno = int(input("Digite o número do aluno: "))
            nota = float(input(f"Digite a nota do aluno {num_aluno}: "))
            nota_imp += nota
            media_imp = nota_imp/3
      else:
            print(f"Você está digitando as notas dos alunos ímpares. Por favor, insira a nota do aluno de número {num_aluno+1}")
            continue
      print(nota_imp)

print(f"A média da turma ímpar é {media_imp}")

for num_aluno in range(1,15):
      num_aluno = int(input("Digite o número do aluno: "))
      if num_aluno % 2 == 0:
            nota_imp = float(input(f"Digite a nota do aluno {num_aluno}: "))
            media_imp += nota_imp
      else:
            print(f"Você está digitando as notas dos alunos pares.
            Por favor, insira a nota do aluno de número {num_aluno+1}")'''
"""media_imp = 0
media_par = 0
nota_par = 0
num_aluno = 0
nota_imp = fl+oat(input("Digite a nota do aluno: "))

while num_aluno < 50:
      if num_aluno%2 == 1:
            media_imp += nota_imp/25
      else:
            print("Você está digitando as notas dos alunos ímpares.\n"
                  "Por favor, insira a nota do aluno de número {}")
print(f"A média da turma ímpar é {media_par}")"""

"""if num_aluno%2 == 0:
            media_par += num

      else:
            print("Digite um número inteiro!")"""
