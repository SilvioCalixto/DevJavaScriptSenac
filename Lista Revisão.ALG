Algoritmo "Estruturas Condicionais e de Repetição "
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/02/2026
Var
// Seção de Declarações das variáveis 
  numeros:vetor[0..99] de inteiro

  opcao,i,c,aux,j,contador,n,a,b,codigo,senha,pos,horas,idade,fat,temp:inteiro

  soma,maiorSoma,salario,extra,valorHora,media,peso,altura,imc,n1,n2,n3,maior,menor:real

  cont:inteiro

  flag:logico

  primeira:caractere
  nome:caractere

  vetors:vetor[0..20] de real
  v1, v2,somaV,mult:vetor[0..9] de real

  matrizs:matriz[0..4,0..4] de real
  m1, m2, m3:matriz[0..2,0..2] de real

  

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   repita
     escreval("               Escolha uma das opções abaixo:         ")
     escreval("###################-> 0 /Sair <-######################")
     escreval("## 1º Exercício   ##6º Exercício  ##  11º Exercício ##")
     escreval("## 2º Exercício   ##7º Exercício  ##  12º Exercício ##")
     escreval("## 3º Exercício   ##8º Exercício  ##  13º Exercício ##")
     escreval("## 4º Exercício   ##9º Exercício  ##  14º Exercício ##")
     escreval("## 5º Exercício   #10º Exercício  ##  15º Exercício ##")
     escreval("##--------------------------------------------------##")
     escreval("# 16º Exercício   #21º Exercício  ##  26º Exercício ##")
     escreval("# 17º Exercício   #22º Exercício  ##  27º Exercício ##")
     escreval("# 18º Exercício   #23º Exercício  ##  28º Exercício ##")
     escreval("# 19º Exercício   #24º Exercício  ##  29º Exercício ##")
     escreval("# 20º Exercício   #25º Exercício  ##  30º Exercício ##")
     escreval("##--------------------------------------------------##")
     escreval("# 31º Exercício   #34º Exercício  ##  37º Exercício ##")
     escreval("# 32º Exercício   #35º Exercício  ##  38º Exercício ##")
     escreval("# 33º Exercício   #36º Exercício  ##  39º Exercício ##")
     escreval("###################40º Exercício  ####################")

     leia(opcao)

     escolha opcao

   caso 0
          escreval("Obrigado!")

   caso 1
   //Leia dois números e exiba o maior deles.
   
          escreval("Primeiro Número: ")
          leia(i)
          escreval("Segundo Número: ")
          leia(c)
          
          se i > c entao
             escreval(i," é o maior")
          senao
               escreval(c," é o maior")
          fimSe

          escreval("")
   caso 2
   //Crie uma matriz identidade 4x4.

          para i de 0 ate 3 passo 1 faca
               para c de 0 ate 3 passo 1 faca
                    se i = c entao
                       numeros[i,c] <- 1]
                    senao
                         numeros[i,c] <- 0
                    fimSe
               fimPara
          fimPara
          
          para i de 0 ate 3 passo 1 faca
               para c de 0 ate 3 passo 1 faca
                    escreval(numeros[i,c," "])
               fimPara
               escreval("")
          fimPara


          escreval("")
    caso 3
   //Imprima os números de 1 a 100 com para.
          para i de 1 ate 100 passo 1 faca
               escreval(i)
          fimPara

   caso 4
   //Leia 10 números inteiros e armazene em um vetor. Mostre os pares
          para i de 0 ate 9 passo 1 faca
               leia(vetors[i])
          fimPara

          para i de 0 ate 9 passo 1 faca
               se vetors[i] % 2 = 0 entao
                    escreval(vetors[i])
               fimSe
          fimPara

   caso 5
   //Verifique se um número é múltiplo de 3 e de 5 ao mesmo tempo.
          leia(n)
          se n % 3 = 0 e n % 5 = 0 entao
               escreval("Multiplo de 3 e 5")
          senao
               escreval("Nao e multiplo dos dois")
          fimSe

   caso 6
   //Leia três valores e verifique se formam um triângulo. Classifique como equilátero, isósceles ou escaleno
          leia(a)
          leia(b)
          leia(c)

          se a < b + c e b < a + c e c < a + b entao
               se a = b e b = c entao
                    escreval("Equilatero")
               senao
                    se a = b ou a = c ou b = c entao
                         escreval("Isosceles")
                    senao
                         escreval("Escaleno")
                    fimSe
               fimSe
          senao
               escreval("Nao forma triangulo")
          fimSe

   caso 7
   //Leia uma matriz 3x3 e imprima sua diagonal principal.
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    leia(matrizs[i,c])
               fimPara
          fimPara

          para i de 0 ate 2 passo 1 faca
               escreval(matrizs[i,i])
          fimPara

   caso 8
   //Leia idades com enquanto até uma idade negativa ser digitada. Mostre a média.
          soma <- 0
          cont <- 0
          leia(idade)

          enquanto idade >= 0 faca
               soma <- soma + idade
               cont <- cont + 1
               leia(idade)
          fimEnquanto

          se cont > 0 entao
               escreval(soma/cont)
          fimSe

   caso 9
   //Leia 10 valores e calcule a média. Mostre os que estão acima dela.
          soma <- 0

          para i de 0 ate 9 passo 1 faca
               leia(vetors[i])
               soma <- soma + vetors[i]
          fimPara

          media <- soma / 10

          para i de 0 ate 9 passo 1 faca
               se vetors[i] > media entao
                    escreval(vetors[i])
               fimSe
          fimPara
        
      caso 10
   //Leia uma matriz 4x4 e exiba a maior linha (com maior soma).

          maiorSoma <- -99999
          maiorLinha <- 0

          para i de 0 ate 3 passo 1 faca
               soma <- 0
               para c de 0 ate 3 passo 1 faca
                    escreva(i,c,": ")
                    leia(numeros[i,c])
                    soma <- soma + numeros[i,c]
               fimPara

               se soma > maiorSoma entao
                    maiorSoma <- soma
                    maiorLinha <- i
               fimSe
          fimPara

          escreval("Linha com maior soma: ", maiorLinha)
          escreval("")

   caso 11
   //Calcule o fatorial de um número com enquanto.
          leia(n)
          fat <- 1

          enquanto n > 1 faca
               fat <- fat * n
               n <- n - 1
          fimEnquanto

          escreval(fat)
          escreval("")

   caso 12
   //Receba um número de 1 a 7 e mostre o dia da semana correspondente (use escolha/caso).
          leia(n)

          escolha n
               caso 1
                    escreval("Domingo")
               caso 2
                    escreval("Segunda")
               caso 3
                    escreval("Terca")
               caso 4
                    escreval("Quarta")
               caso 5
                    escreval("Quinta")
               caso 6
                    escreval("Sexta")
               caso 7
                    escreval("Sabado")
          fimEscolha
          escreval("")

   caso 13
   //Leia o código de um produto (1 a 5) e mostre seu nome e preço.

          leia(codigo)

          escolha codigo
               caso 1
                    escreval("Produto: Arroz - R$ 10")
               caso 2
                    escreval("Produto: Feijao - R$ 8")
               caso 3
                    escreval("Produto: Macarrao - R$ 6")
               caso 4
                    escreval("Produto: Leite - R$ 5")
               caso 5
                    escreval("Produto: Cafe - R$ 12")
          fimEscolha
          escreval("")

   caso 14
   //Crie dois vetores de 10 posições e preencha um com a soma e outro com a multiplicação entre eles.

          para i de 0 ate 9 passo 1 faca
               leia(v1[i])
          fimPara

          para i de 0 ate 9 passo 1 faca
               leia(v2[i])
          fimPara

          para i de 0 ate 9 passo 1 faca
               soma[i] <- v1[i] + v2[i]
               mult[i] <- v1[i] * v2[i]
          fimPara

          escreval("")

   caso 15
   //Calcule a soma dos números de 1 a N com enquanto.

          leia(n)
          soma <- 0
          i <- 1

          enquanto i <= n faca
               soma <- soma + i
               i <- i + 1
          fimEnquanto

          escreval(soma)
          escreval("")

   caso 16
   //Preencha uma matriz 5x5 com números aleatórios de 1 a 100.
          para i de 0 ate 4 passo 1 faca
               para c de 0 ate 4 passo 1 faca
                    numeros[i,c] <- aleatorio(1,100)
               fimPara
          fimPara

          escreval("")

   caso 17
   //Leia uma matriz 4x4 e some todos os valores
          soma <- 0

          para i de 0 ate 3 passo 1 faca
               para c de 0 ate 3 passo 1 faca
                    leia(numeros[i,c])
                    soma <- soma + numeros[i,c]
               fimPara
          fimPara

          escreval(soma)
          escreval("")

      caso 18
   //Leia o número de horas trabalhadas e o valor da hora. Calcule o salário e adicione 50% se ultrapassar 40h.
          leia(horas)
          leia(valorHora)

          se horas > 40 entao
               extra <- horas - 40
               salario <- (40 * valorHora) + (extra * valorHora * 1.5)
          senao
               salario <- horas * valorHora
          fimSe

          escreval(salario)

   caso 19
   //Leia uma matriz 3x3 e imprima os valores acima da média geral.

          soma <- 0

          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    leia(matrizs[i,c])
                    soma <- soma + matrizs[i,c]
               fimPara
          fimPara

          media <- soma / 9

          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    se matrizs[i,c] > media entao
                         escreval(matrizs[i,c])
                    fimSe
               fimPara
          fimPara

          escreval("")

   caso 20
   //Calcule a média de três notas e diga se o aluno foi aprovado (média = 7).
          leia(n1)
          leia(n2)
          leia(n3)

          media <- (n1 + n2 + n3) / 3

          se media >= 7 entao
               escreval("Aprovado")
          senao
               escreval("Reprovado")
          fimSe

          escreval("")

   caso 21
   //Conte quantos valores pares existem em uma matriz 3x3.
          cont <- 0

          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    leia(matrizs[i,c])
                    se matrizs[i,c] % 2 = 0 entao
                         cont <- cont + 1
                    fimSe
               fimPara
          fimPara

          escreval(cont)
          escreval("")

   caso 22
   //Imprima os 15 primeiros termos da sequência de Fibonacci com para.

          a <- 0
          b <- 1

          para i de 1 ate 15 passo 1 faca
               escreval(a)
               temp <- a + b
               a <- b
               b <- temp
          fimPara

          escreval("")

   caso 23
   //Leia 15 números e mostre quantos são negativos

          cont <- 0

          para i de 1 ate 15 passo 1 faca
               leia(n)
               se n < 0 entao
                    cont <- cont + 1
               fimSe
          fimPara

          escreval(cont)
          escreval("")

   caso 24
   //Calcule o IMC e classifique de acordo com a faixa de valores.

          leia(peso)
          leia(altura)

          imc <- peso / (altura * altura)

          se imc < 18.5 entao
               escreval("Abaixo do peso")
          senao
               se imc < 25 entao
                    escreval("Peso normal")
               senao
                    se imc < 30 entao
                         escreval("Sobrepeso")
                    senao
                         escreval("Obesidade")
                    fimSe
               fimSe
          fimSe

          escreval("")

   caso 25
   //Mostre os múltiplos de 4 entre 1 e 50 com para.

          para i de 1 ate 50 passo 1 faca
               se i % 4 = 0 entao
                    escreval(i)
               fimSe
          fimPara

          escreval("")

   caso 26
   //Leia uma matriz 3x3 e exiba a soma dos elementos da diagonal secundária.

          soma <- 0

          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    leia(matrizs[i,c])
               fimPara
          fimPara

          para i de 0 ate 2 passo 1 faca
               soma <- soma + matrizs[i,2-i]
          fimPara

          escreval(soma)
          escreval("")

   caso 27
   //Leia 10 nomes e exiba quantos começam com vogais.

          cont <- 0

          para i de 1 ate 10 passo 1 faca
               leia(nome)
               primeira <- maiusculo(copia(nome,1,1))

               se primeira = "A" ou primeira = "E" ou primeira = "I" ou primeira = "O" ou primeira = "U" entao
                    cont <- cont + 1
               fimSe
          fimPara

          escreval(cont)
          escreval("")

   caso 28
   //Solicite senha até que o usuário digite a correta (1234) com repita.

          repita
               leia(senha)
          ate senha = 1234

          escreval("")

   caso 29
   //Leia 10 números e conte quantas vezes o número 7 aparece.

          cont <- 0

          para i de 1 ate 10 passo 1 faca
               leia(n)
               se n = 7 entao
                    cont <- cont + 1
               fimSe
          fimPara

          escreval(cont)
          escreval("")

   caso 30
   //Leia três notas e converta para conceito: A (=9), B (=7), C (=5), D (=3), E (<3).

          leia(n1)
          leia(n2)
          leia(n3)

          media <- (n1 + n2 + n3) / 3

          se media >= 9 entao
               escreval("A")
          senao
               se media >= 7 entao
                    escreval("B")
               senao
                    se media >= 5 entao
                         escreval("C")
                    senao
                         se media >= 3 entao
                              escreval("D")
                         senao
                              escreval("E")
                         fimSe
                    fimSe
               fimSe
          fimSe

          escreval("")

   caso 31
   //Leia uma altura e um peso, e calcule o IMC, classificando o resultado.

          leia(peso)
          leia(altura)

          imc <- peso / (altura * altura)

          se imc < 18.5 entao
               escreval("Abaixo do peso")
          senao
               se imc < 25 entao
                    escreval("Peso normal")
               senao
                    se imc < 30 entao
                         escreval("Sobrepeso")
                    senao
                         escreval("Obesidade")
                    fimSe
               fimSe
          fimSe

          escreval("")

   caso 32
   //Leia um vetor com os quadrados dos números de 1 a 10.

          para i de 1 ate 10 passo 1 faca
               vetors[i] <- i * i
               escreval(vetors[i])
          fimPara

          escreval("")

   caso 33
   //Calcule a diferença entre o maior e o menor número de um vetor de 8 elementos.

          para i de 0 ate 7 passo 1 faca
               leia(vetors[i])
          fimPara

          maior <- vetors[0]
          menor <- vetors[0]

          para i de 1 ate 7 passo 1 faca
               se vetors[i] > maior entao
                    maior <- vetors[i]
               fimSe
               se vetors[i] < menor entao
                    menor <- vetors[i]
               fimSe
          fimPara

          escreval(maior - menor)
          escreval("")

   caso 34
   //Leia números com repita até que o usuário digite zero. Mostre a soma.
          soma <- 0

          repita
               leia(n)
               soma <- soma + n
          ate n = 0

          escreval(soma)
          escreval("")

   caso 35
   //Leia 10 números e armazene apenas os que forem múltiplos de 5.
          j <- 0

          para i de 1 ate 10 passo 1 faca
               leia(n)
               se n % 5 = 0 entao
                    vetors[j] <- n
                    j <- j + 1
               fimSe
          fimPara

          escreval("")

   caso 36
   //Leia um valor entre 1 e 10 e exiba sua tabuada com para.

          leia(n)

          para i de 1 ate 10 passo 1 faca
               escreval(n," x ",i," = ",n*i)
          fimPara

          escreval("")

   caso 37
   //Preencha um vetor com os 20 primeiros múltiplos de 5.
          para i de 1 ate 20 passo 1 faca
               vetors[i] <- i * 5
               escreval(vetors[i])
          fimPara

          escreval("")

   caso 38
   //Leia duas matrizes 3x3 e crie uma terceira com a soma delas.
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    leia(m1[i,c])
               fimPara
          fimPara

          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    leia(m2[i,c])
               fimPara
          fimPara

          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    m3[i,c] <- m1[i,c] + m2[i,c]
                    escreval(m3[i,c])
               fimPara
          fimPara

          escreval("")

   caso 39
   //Leia 8 números e exiba o maior valor e sua posição.
          para i de 0 ate 7 passo 1 faca
               leia(vetors[i])
          fimPara

          maior <- vetors[0]
          pos <- 0

          para i de 1 ate 7 passo 1 faca
               se vetors[i] > maior entao
                    maior <- vetors[i]
                    pos <- i
               fimSe
          fimPara

          escreval(maior," na posicao ",pos)
          escreval("")

   caso 40
   //Leia um número de 1 a 7 e mostre o nome do dia da semana correspondente
          leia(n)

          escolha n
               caso 1
                    escreval("Domingo")
               caso 2
                    escreval("Segunda")
               caso 3
                    escreval("Terca")
               caso 4
                    escreval("Quarta")
               caso 5
                    escreval("Quinta")
               caso 6
                    escreval("Sexta")
               caso 7
                    escreval("Sabado")
          fimEscolha
          escreval("")


   outroCaso
            escreval("Digite uma opção válida")
   fimEscolha
   ate(opcao = 0)


Fimalgoritmo