Algoritmo "Estruturas Condicionais e de Repetição "
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/02/2026
Var
// Seção de Declarações das variáveis 
  numero:vetor[0..9] de inteiro
  numeros:vetor[0..99] de inteiro
  vinte:vetor[0..19] de inteiro
  par:vetor[0..9] de inteiro
  impar:vetor[0..9] de inteiro
  
  nome:vetor[0..9] de caracter
  nomes:vetor[0..9] de caracter
  num:vetor[0..9] de real
  number:vetor[0..14] de real
  
  opcao,i,c,aux,j,contador,negativo,positivo,nulo:inteiro
  soma,cont,maior,menor:real
  flag:logico
  palavra,senha,letra:caracter
  

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   repita
     escreval("### Escolha uma das opções abaixo: / 0 para sair  ####")
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
     escreval("")

     leia(opcao)

     escolha opcao

   caso 0
          escreval("Obrigado!")

   caso 1
   //Leia 10 números e armazene em um vetor.
   
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
          fimPara
          escreval("")

   caso 2
   //Leia 10 números e exiba-os na ordem inversa.

          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
          fimPara
          
          para i de 9 ate 0 passo -1 faca
               escreval(numero[i])
          fimPara
          escreval("")

   caso 3
   //Leia 10 números e exiba apenas os pares.

          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
          fimPara
          flag <- falso
          para i de 0 ate 9 passo 1 faca
               se numero[i] % 2 = 0 entao
                  flag <- positivo
               fimSe
          fimPara
          
          se flag = verdadeiro entao
             escreval(numero[i])
          senao
             escreval("Não tem número par")
          fimSe


          escreval("")

   caso 4
   //Leia 10 números e exiba a média.

          soma <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               soma <- soma + numero[i]
          fimPara
          
          escreval("A média é ", soma / 10)

          escreval("")

   caso 5
   //Leia 10 nomes e exiba os que começam com “A”.

          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Nome: ")
               leia(nome[i])
          fimPara
          escreval("")
          para i de 0 ate 9 passo 1 faca
               se (pos("A", nome[i]) = 1) ou (pos("a", nome[i]) = 1) entao
                  escreval(nome[i])
               fimSe
          fimPara

          escreval("")

   caso 6
   // Leia 10 números e conte quantos são maiores que a média.
   
          soma <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               soma <- soma + numero[i]
          fimPara
          
          escreval("")
          
          para i de 0 ate 9 passo 1 faca
               se numero[i] > (soma / 10) entao
                  escreval(numero[i])
                  cont <- cont + 1
               fimSe
          fimPara
          escreval("")
          escreval(cont," números são maiores que a média: ",soma / 10)
          escreval("")
          
   caso 7
   //Leia 10 idades e exiba a maior.
   
          cont <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               
               se i = 0 entao
                  cont <- numero[i]
               fimSe
               
               se numero[i] > cont entao
                  cont <- numero[i]
               fimSe
          fimPara
          
          escreval("")
          escreval("Maior idade é ",cont)
          
          escreval("")

   caso 8
   //Leia 10 alturas e exiba a média.
   
          soma <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(num[i])
               soma <- soma + num[i]
          fimPara

          escreval("A média é ", soma / 10)

          escreval("")

   caso 9
   // Leia 10 salários e exiba quantos ganham abaixo de R$ 1.200.

          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Salário: ")
               leia(num[i])
          fimPara

          escreval("")
          
          para i de 0 ate 9 passo 1 faca
          
               se num[i] < 1200 entao
               escreval(num[i])
               fimSe

          fimPara
          
          escreval("")
        
   caso 10
   //Leia 10 números e exiba quantos são múltiplos de 5.

          cont <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
          fimPara

          escreval("")

          para i de 0 ate 9 passo 1 faca

               se numero[i] % 5 = 0 entao
               escreval(numero[i])
               cont <- cont + 1
               fimSe

          fimPara

          escreval(cont," são multiplos de 5.")
          escreval("")

   caso 11
   //Leia 10 valores e os armazene em dois vetores (pares e ímpares).

          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               
               se numero[i] % 2 = 0 entao
                  par[i] <- numero[i]
               senao
                    impar[i] <- numero[i]
               fimSe
          fimPara
          
          escreval("Números pares")
          para i de 0 ate 9 passo 1 faca
               se par[i] <> 0 entao
                  escreval(par[i])
               fimSe
          fimPara
          
          escreval("Números Ímpares")
          para i de 0 ate 9 passo 1 faca
               se impar[i] <> 0 entao
                  escreval(impar[i])
               fimSe
          fimPara
          
          escreval("")

   caso 12
   // Leia 10 valores e ordene do maior para o menor.
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
          fimPara
          aux <- 0
          para i de 1 ate 9 passo 1 faca
               para c de i+1 ate 9 passo 1 faca
               se numero[i] < numero[c] entao
               aux <- numero[c]
               numero[c] <- numero[i]
               numero[i] <- aux
               fimSe
               fimPara
          fimPara
          para i de 0 ate 9 passo 1 faca
               escreval(numero[i])

          fimPara
          escreval("")

   caso 13
   // Leia 10 números e exiba os repetidos.

          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
          fimPara

          para i de 0 ate 9 passo 1 faca

               para c de i+1 ate 9 passo 1 faca
                       se numero[i] = numero[c] entao
                          escreval(numero[c])
                       fimSe
               fimPara

          fimPara

          escreval("")
          
   caso 14
   //Some dois vetores de 10 posições.
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(par[i])
          fimPara
          escreval("")
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(impar[i])
               
               numero[i] <- par[i] + impar[i]
          fimPara
          escreval("")
          para i de 0 ate 9 passo 1 faca
               escreva(numero[i])
          fimPara
          
          escreval("")

   caso 15
   //Multiplique dois vetores de 10 posições e armazene em outro.
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(par[i])
          fimPara
          escreval("")
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(impar[i])

               numero[i] <- par[i] * impar[i]
          fimPara
          escreval("")
          para i de 0 ate 9 passo 1 faca
               escreva(numero[i])
          fimPara
          escreval("")

   caso 16
   //Calcule a soma de todos os elementos de um vetor.
          soma <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               soma <- soma + numero[i]
          fimPara

          escreva(soma)
          escreval("")

   caso 17
   //Encontre o maior número em um vetor e sua posição.
          aux <- 0
          c <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               se i = 0 entao
                  aux <- numero[i]
               fimSe
               
               se  numero[i] > aux entao
                   aux <- numero[i]
                   c <- i
               fimSe
          fimPara
          escreval("")
          escreva(aux," é o maior número e sua posição é",c)
          
          
          escreval("")

   caso 18
   //Leia nomes e notas e exiba os alunos com nota acima de 7.

          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Nome: ")
               leia(nome[i])
               escreva(i+1,"º Nota: ")
               leia(numero[i])
          fimPara
          
          escreval("")
          
          para i de 0 ate 9 passo 1 faca
               se numero[i] > 7 entao
                  escreval("Aluno: ",nome[i],"- Nota: ",numero[i])
               fimSe

          fimPara

   caso 19
   //Crie um vetor com os 100 primeiros números pares.
          aux <- 0
          para i de 0 ate 99 passo 1 faca
               numeros[i] <- aux
               aux <- aux + 2
               escreval(numeros[i])
          fimPara
          escreval("")

   caso 20
   //Leia uma palavra e inverta a ordem das letras.

          escreval("Digite uma palavra: ")
          leia(palavra)
          
          c <- compr(palavra)
          senha <- ""
          letra <- ""
          para i de c ate  1 passo -1 faca
               letra <- copia(palavra, i, 1)
               senha <- senha + letra
          fimPara
          
          escreval(senha)
          

          escreval("")

   caso 21
   //Leia 10 números inteiros e armazene apenas os números primos em um segundo vetor.
          c <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1, "º Número: ")
               leia(numero[i])

               contador <- 0

               para j de 1 ate numero[i] passo 1 faca
                    se numero[i] % j = 0 então
                       contador <- contador + 1
                    fimSe
               fimPara

          se contador = 2 então
             par[c] <- numero[i]
             c <- c + 1
          fimSe

          fimPara

          para i de 0 ate c - 1 passo 1 faca
               escreval(par[i])
          fimPara
          escreval("")

   caso 22
   //Leia 10 números reais e exiba a quantidade de números negativos, positivos e nulos.

          negativo <- 0
          positivo <- 0
          nulo <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(num[i])
               
               se num[i] < 0 entao
                  negativo <- negativo +1
               senao
                    se num[i] = 0 entao
                       nulo <- nulo +1
                    senao
                         positivo <- positivo + 1
                    fimSe
               fimSe
               
          fimPara
          
          escreval("positivos: ",positivo)
          escreval("negativos: ",negativo)
          escreval("nulos : ",nulo)

          escreval("")

   caso 23
   //Leia 10 nomes e permita ao usuário buscar um nome específico, indicando se foi encontrado.
          flag <- falso
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Nome: ")
               leia(nome[i])
          fimPara
          escreval("")
          escreval("Digite o nome para busca")
          leia(palavra)

          para i de 0 ate 9 passo 1 faca
          
               se palavra = nome[i] entao
                  escreval("Nome foi encontrado!")
                  flag <- verdadeiro
               fimSe
          fimPara
          se flag = falso entao
             escreval("Nome não foi encontrado!")
          fimSe

          escreval("")

   caso 24
   // Leia 10 números e calcule a diferença entre o maior e o menor número do vetor.
          maior <- 0
          menor <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               se i = 0 entao
                  maior <- numero[i]
                  menor <- numero[i]
               fimSe

               se  numero[i] > maior entao
                   maior <- numero[i]
               fimSe
               
               se  numero[i] < menor entao
                   menor <- numero[i]
               fimSe
          fimPara
          escreval("")
          escreva(maior," é o maior número e o menor é",menor,". A diferença entre eles é",maior - menor)

          escreval("")

   caso 25
   //Leia um vetor de 10 elementos e rotacione todos os valores uma posição para baixo.
          aux <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               se i = 0 entao
                  aux <- numero[i]
               fimSe
               se i > 0 entao
                  numero[i - 1] <- numero[i]
               fimse
          fimPara
          numero[9] <- aux
          para i de 0 ate 9 passo 1 faca
               escreva(numero[i])
          fimPara
          escreval("")

   caso 26
   //Leia 10 números e armazene em um segundo vetor apenas os que forem múltiplos de 3 ou 7.
          c <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               
               se (numero[i] % 3 = 0) e (numero[i] % 7 = 0)  entao
                  par[i] <- numero[i]
                  c <- c + 1
               fimSe
          fimPara
          
          para i de 0 ate c -1 passo 1 faca
               escreval(par[i])
          escreval("")
          fimPara
          escreval("")

   caso 27
   //Crie um vetor de 10 posições e substitua todos os valores ímpares por zero.
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])

               se numero[i] % 2 <> 0  entao
                  numero[i] <- 0
               fimSe
          fimPara

          para i de 1 ate 9 passo 1 faca
               escreval(numero[i])
          fimPara
          escreval("")

   caso 28
   //Preencha um vetor de 20 posições com os números de 1 a 20 e os escreva em ordem decrescente.
          para i de 0 ate 19 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(vinte[i])
          fimPara
          escreval("")
          para i de 19 ate 0 passo -1 faca
               escreva(vinte[i])
          fimPara
          escreval("")

   caso 29
   //Leia 10 números e mostre os valores que aparecem exatamente uma vez (sem repetição).
          cont <- 0
          j <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
          fimPara

          para i de 0 ate 9 passo 1 faca

               para c de i+1 ate 9 passo 1 faca
                       se numero[i] = numero[c] entao
                          cont <- cont + 1
                       fimSe
               fimPara
               
               se cont = 1 entao
                  par[j] <- numero[i]
                  j <- j + 1
               fimSe
          cont <- 0
          fimPara

          escreval("")
          
          para i de 0 ate j-1 passo 1 faca
               escreva(par[i])
          fimPara

          escreval("")
   caso 30
   //Leia 10 números e mostre quantos deles são divisíveis simultaneamente por 2 e 4.
          c <- 0
          flag <- falso
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               
               se (numero[i] % 2 = 0) e (numero[i] % 4 = 0)  entao
                  escreval("")
                  escreval(numero[i]," É divisível por 2 e 4.")
                  escreval("")
                  c <- c +1
                  flag <- verdadeiro
                  
               fimSe
          fimPara
          escreval("")
          se flag = verdadeiro entao
             escreval(c," números são divisíveis por 2 e 4")
          senao
               escreval("Nenhum número é divisível por 2 e 4")
          fimSe
          escreval("")

   caso 31
   //Leia 10 nomes e mostre quais têm mais de 5 caracteres.
          j <- 0
          c <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Nome: ")
               leia(nome[i])
               c <- compr(nome[i])

               se  c > 5 entao
                   nomes[j]  <- nome[i]
                   j <- j + 1
               fimSe
          fimPara

          escreval("")
          
          para i de 0 ate j - 1 passo faca
               escreval(nomes[i])
          fimPara
          
          escreval("")

   caso 32
   //Leia 10 valores e calcule o produto de todos os elementos do vetor.

          cont <- 1
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])
               
               cont <- cont * numero[i]
          fimPara
          
          escreval(cont," é o produto de todos os elementos do vetor.")
          escreval("")

   caso 33
   //Preencha um vetor com os quadrados dos números de 1 a 15.
          para i de 0 ate 14 passo 1 faca

               number[i] <- i+1 * i+1


          fimPara
          para i de 0 ate 14 passo 1 faca

               escreval(number[i])


          fimPara

          escreval("")

   caso 34
   // Preencha dois vetores com 10 elementos cada e crie um terceiro vetor com a subtração dos dois.
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(par[i])
          fimPara
          escreval("")
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(impar[i])

               numero[i] <- par[i] - impar[i]
          fimPara
          escreval("")
          para i de 0 ate 9 passo 1 faca
               escreva(numero[i])
          fimPara
          escreval("")

          escreval("")

   caso 35
   //Leia um vetor de 10 números e remova (ignore) todos os números negativos.
          j <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(numero[i])

               se numero[i] >= 0  entao
                  par[j] <- numero[i]
                  j <- j + 1
               fimSe
          fimPara

          para i de 0 ate j-1 passo 1 faca
               escreval(par[i])
          fimPara

          escreval("")

   caso 36
   // Leia 10 notas e exiba a posição da nota mais próxima da média geral.
          cont <- 0
          para i de 0 ate 9 passo 1 faca
               escreva(i+1,"º Número: ")
               leia(num[i])
               
               cont <- cont + num[i]
               
          fimPara
          maior <- cont / 10
          menor <- 0
          j <- 0
          
          para i de 0 ate 9 passo 1 faca
               se maior - num[i]
          escreval("")

   caso 37
   //Crie um vetor com os 10 primeiros números da sequência de Fibonacci.
        escreval("")

   caso 38
   //Leia um vetor de 10 posições e substitua todos os elementos repetidos por -1.
        escreval("")

   caso 39
   //Preencha um vetor com 15 números inteiros e mostre quantos deles são pares consecutivos.
        escreval("")
   caso 40
   //Leia 10 números e exiba o segundo maior valor do vetor.
        escreval("")


   outroCaso
            escreval("Digite uma opção válida")
   fimEscolha
   ate(opcao = 0)


Fimalgoritmo