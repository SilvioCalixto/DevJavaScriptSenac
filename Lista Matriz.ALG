Algoritmo "Estruturas Condicionais e de Repetição "
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Silvio Calixto
// Data atual  : 11/02/2026
Var
  numeros:vetor[0..2,0..2] de inteiro
  numero:vetor[0..2,0..2] de inteiro
  soma:vetor[0..2,0..2] de inteiro
  media:vetor[0..3,0..3] de inteiro
  multi:vetor[0..1,0..1] de real
  mult:vetor[0..1,0..1] de real
  multiplica:vetor[0..1,0..1] de real


  opcao,i,c:inteiro
  j,aux:real
Inicio
// Lista Exercícios de Matriz
   repita
     escreval("###          Escolha uma das opções abaixo:       ####")
     escreval("## 1º Exercício   ##6º Exercício  ##  11º Exercício ##")
     escreval("## 2º Exercício   ##7º Exercício  ##  12º Exercício ##")
     escreval("## 3º Exercício   ##8º Exercício  ##  13º Exercício ##")
     escreval("## 4º Exercício   ##9º Exercício  ##  14º Exercício ##")
     escreval("## 5º Exercício   #10º Exercício  ##  15º Exercício ##")
     escreval("##--------------------------------------------------##")
     escreval("# 16º Exercício   #17º Exercício  ##  18º Exercício ##")
     escreval("# 19º Exercício   #20º Exercício  ##  0 para sair   ##")
     escreval("######################################################")
     escreval("")

     leia(opcao)

     escolha opcao

   caso 0

          escreval("Obrigado!")

   caso 1
   //Crie uma matriz 3x3 e leia seus valores.
   
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(numeros[i,c])
               fimPara
          fimPara
          
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    escreva(numeros[i,c]," ")
               fimPara
          escreval("")
          fimPara
                    
          escreval("")

   caso 2
   //Some todos os elementos de uma matriz 3x3.
          j <- 0
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(numeros[i,c])
                    j <- j + numeros[i,c]
               fimPara
          fimPara

          escreval("")

          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    escreva(numeros[i,c]," ")
               fimPara
          escreval("")
          fimPara

          escreval("A soma dos elementos da Matriz é: ",j)

          escreval("")
          
   caso 3
   //Calcule a média dos elementos de uma matriz 4x4.
   
          j <- 0
          para i de 0 ate 3 passo 1 faca
               para c de 0 ate 3 passo 1 faca
                    escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(media[i,c])
                    j <- j + media[i,c]
               fimPara
          fimPara
          
          para i de 0 ate 3 passo 1 faca
               para c de 0 ate 3 passo 1 faca
                    escreva(media[i,c]," ")
               fimPara
               escreval("")
          fimPara
          
          escreval("A média dos elementos da Matriz é: ",j/8)
          
          escreval("")
          
          
   caso 4
   //Leia uma matriz 3x3 e exiba apenas a diagonal principal.
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                   escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(numeros[i,c])
               fimPara
          fimPara
          
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                   se i = c entao
                      escreva(numeros[i,c])
                   fimSe
               fimPara
          fimPara
          
          

          escreval("")

   caso 5
   //Exiba a diagonal secundária de uma matriz 3x3.
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                   escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(numeros[i,c])
               fimPara
          fimPara

          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                   se i + c = 2 entao
                      escreva(numeros[i,c])
                   fimSe
               fimPara
          fimPara
          escreval("")

   caso 6
   //Leia uma matriz 4x4 e conte os elementos maiores que 10.
          j <- 0
          para i de 0 ate 3 passo 1 faca
               para c de 0 ate 3 passo 1 faca
                    escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(media[i,c])
                    se media[i,c] > 10 entao
                       j <- j +1
                    fimSe
               fimPara
          fimPara
          
          para i de 0 ate 3 passo 1 faca
               para c de 0 ate 3 passo 1 faca
                    escreva(media[i,c]," ")
               fimPara
               escreval("")
          fimPara

          escreval("")
          escreval(j," Elementos são maiores do que 10.")

          escreval("")
          
   caso 7
   //Leia duas matrizes 3x3 e some os valores.
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(numero[i,c])
               fimPara
          fimPara
          escreval("")
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(numeros[i,c])
                    soma[i,c] <- numero[i,c] + numeros[i,c]
               fimPara
          fimPara
          escreval("")
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    escreva(soma[i,c]," ")
               fimPara
               escreval("")
          fimPara

   caso 8
   //Multiplique duas matrizes 2x2.
          para i de 0 ate 1 passo 1 faca
               para c de 0 ate 1 passo 1 faca
                    escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(mult[i,c])
               fimPara
          fimPara
          escreval("")
          para i de 0 ate 1 passo 1 faca
               para c de 0 ate 1 passo 1 faca
                    escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(multi[i,c])
                    multiplica[i,c] <- mult[i,c] * multi[i,c]
               fimPara
          fimPara
          escreval("")
          para i de 0 ate 1 passo 1 faca
               para c de 0 ate 1 passo 1 faca
                    escreva(multiplica[i,c]," ")
               fimPara
               escreval("")
          fimPara
   
          escreval("")

   caso 9
   //Leia uma matriz 5x5 e troque a primeira linha com a última.
          para i de 0 ate 4 passo 1 faca
               para c de 0 ate 4 passo 1 faca
                    escreva(i,c,": ")
                    leia

          escreval("")
        
   caso 10
   //Leia uma matriz 3x3 e exiba a matriz transposta.
          escreval("")

   caso 11
   //Encontre o maior valor da matriz e sua posição.
          j <- 0
          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    escreva(i+1,"º Linha da ",c+1,"º Coluna: ")
                    leia(numeros[i,c])
                    se (i = 0) e (c = 0) entao
                       j <- numeros[i,c]
                    fimSe
                    se numeros[i,c] > j entao
                       j <- numeros[i,c]
                    fimPara
               fimPara
          fimPara

          escreval("")

          para i de 0 ate 2 passo 1 faca
               para c de 0 ate 2 passo 1 faca
                    escreva(numeros[i,c]," ")
               fimPara
          escreval("")
          fimPara

          escreval("O maior valor é ",j)

          escreval("")
          escreval("")

   caso 12
   //Conte quantos valores pares existem em uma matriz 4x4.
          escreval("")
   caso 13
   //Preencha uma matriz 10x10 com a tabuada de 1 a 10.
          escreval("")
          
   caso 14
   //Leia uma matriz 3x3 e exiba apenas os elementos acima da média.
          escreval("")

   caso 15
   //Substitua os elementos negativos de uma matriz por 0.
          escreval("")

   caso 16
   //Crie uma matriz identidade 4x4.
          escreval("")

   caso 17
   //Calcule a soma de cada linha de uma matriz 3x3.
          escreval("")
          
   caso 18
   //Calcule a soma de cada coluna de uma matriz 3x3.
          escreval("")
          
   caso 19
   //Leia uma matriz 5x5 e exiba os elementos da borda.
          escreval("")

   caso 20
   //Gere uma matriz 3x3 com números aleatórios de 1 a 100 e exiba-a formatada.

          escreval("")


   outroCaso
            escreval("Digite uma opção válida")
   fimEscolha
   ate(opcao = 0)


Fimalgoritmo