Algoritmo "Estruturas Condicionais e de Repetição "
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/02/2026
Var
// Seção de Declarações das variáveis 
  numeros:vetor[0..99] de inteiro
  
  opcao,i,c,aux,j,contador:inteiro
  soma,cont:real
  flag:logico

  

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
          escreval("")

   caso 4
   //Leia 10 números inteiros e armazene em um vetor. Mostre os pares
          escreval("")

   caso 5
   //Verifique se um número é múltiplo de 3 e de 5 ao mesmo tempo.
          escreval("")

   caso 6
   //Leia três valores e verifique se formam um triângulo. Classifique como equilátero, isósceles ou escaleno
          escreval("")
          
   caso 7
   //Leia uma matriz 3x3 e imprima sua diagonal principal.

          escreval("")

   caso 8
   //Leia idades com enquanto até uma idade negativa ser digitada. Mostre a média.
          escreval("")

   caso 9
   //Leia 10 valores e calcule a média. Mostre os que estão acima dela.
          escreval("")
        
   caso 10
   //Leia uma matriz 4x4 e exiba a maior linha (com maior soma).
   
          para i de 0 ate 3 passo 1 faca
               para c de 0 ate 3 passo 1 faca
                    escreva(i,c": ")
                    leia(numeros[i,c]
               fimPara
          fimPara
          escreval("")

   caso 11
   //Calcule o fatorial de um número com enquanto.
          escreval("")

   caso 12
   //Receba um número de 1 a 7 e mostre o dia da semana correspondente (use escolha/caso).
          escreval("")

   caso 13
   //Leia o código de um produto (1 a 5) e mostre seu nome e preço.

          escreval("")
          
   caso 14
   //Crie dois vetores de 10 posições e preencha um com a soma e outro com a multiplicação entre eles.

          escreval("")

   caso 15
   //Calcule a soma dos números de 1 a N com enquanto.

          escreval("")

   caso 16
   //Preencha uma matriz 5x5 com números aleatórios de 1 a 100.
          escreval("")

   caso 17
   //Leia uma matriz 4x4 e some todos os valores
          escreval("")

   caso 18
   //Leia o número de horas trabalhadas e o valor da hora. Calcule o salário e adicione 50% se ultrapassar 40h.
          fimPara

   caso 19
   //Leia uma matriz 3x3 e imprima os valores acima da média geral.

          escreval("")

   caso 20
   //Calcule a média de três notas e diga se o aluno foi aprovado (média = 7).
          escreval("")

   caso 21
   //Conte quantos valores pares existem em uma matriz 3x3.
          escreval("")

   caso 22
   //Imprima os 15 primeiros termos da sequência de Fibonacci com para.

          escreval("")

   caso 23
   //Leia 15 números e mostre quantos são negativos
   
          escreval("")

   caso 24
   //Calcule o IMC e classifique de acordo com a faixa de valores.

          escreval("")

   caso 25
   //Mostre os múltiplos de 4 entre 1 e 50 com para.

          escreval("")

   caso 26
   //Leia uma matriz 3x3 e exiba a soma dos elementos da diagonal secundária.

          escreval("")

   caso 27
   //Leia 10 nomes e exiba quantos começam com vogais.


          escreval("")

   caso 28
   //Solicite senha até que o usuário digite a correta (1234) com repita.

          escreval("")

   caso 29
   //Leia 10 números e conte quantas vezes o número 7 aparece.

          escreval("")
   caso 30
   //Leia três notas e converta para conceito: A (=9), B (=7), C (=5), D (=3), E (<3).

          escreval("")

   caso 31
   //Leia uma altura e um peso, e calcule o IMC, classificando o resultado.

          escreval("")

   caso 32
   //Leia um vetor com os quadrados dos números de 1 a 10.

          escreval("")

   caso 33
   //Calcule a diferença entre o maior e o menor número de um vetor de 8 elementos.

          escreval("")

   caso 34
   //Leia números com repita até que o usuário digite zero. Mostre a soma.
          escreval("")

   caso 35
   //Leia 10 números e armazene apenas os que forem múltiplos de 5.
          escreval("")

   caso 36
   //Leia um valor entre 1 e 10 e exiba sua tabuada com para.

          escreval("")

   caso 37
   //Preencha um vetor com os 20 primeiros múltiplos de 5.
          escreval("")

   caso 38
   //Leia duas matrizes 3x3 e crie uma terceira com a soma delas.
          escreval("")

   caso 39
   //Leia 8 números e exiba o maior valor e sua posição.
          escreval("")
   caso 40
   //Leia um número de 1 a 7 e mostre o nome do dia da semana correspondente
          escreval("")


   outroCaso
            escreval("Digite uma opção válida")
   fimEscolha
   ate(opcao = 0)


Fimalgoritmo