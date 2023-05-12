#Funções


#Construir funções

#Algumas funções predefinidas e informações importantes sobre elas (as funções usadas são combn, sample e barplot.)

combn(c(3, 4, 5), 2) #Combinações dos elementos de 3, 4 e 5 tomados 2 a 2

matrix1 = combn(c(3, 4, 5), 2) #A função 'combn' retorna um array (matriz) ou uma lista
matrix1 #matrix1 é uma matriz

matrix2 = combn(c(3, 4, 5), 2, simplify = FALSE) 
matrix2 #matrix2 é uma lista

#Argumentos da função combn: x: vetor de elementos para a combinação;
#m:números de elementos na combinação; 
#FUN: função a ser aplicada a cada combinação; 
#Simplify: instrução lógica para retornar matriz (TRUE é o padrão) ou lista (FALSE)

args(combn)


#Somando os valores de cada combinação
combn(c(3, 4, 5), 2, FUN = sum)

#Calculando a média de cada combinação
combn(c(3, 4, 5), 2, FUN = mean)

#--------------------------------------------------------------------------------------------------------------------------------------------------------------


#Gerando uma amostra aleatória de tamanho 20 de uma população formada por 30% de fumantes (F) e 70% de não fumantes (NF). Como a amostra é
# 'aleatória', não necessariamente você obterá a mesma amostra abaixo.

sample(c("F", "NF"), 20, replace = TRUE, prob = c(0.3, 0.7))


args(sample)

#Não é necessário que os argumentos sejam colocados na sequência indicada, basta que sejam identificados. 
#Exemplo:
sample(c("F", "NF"), 20, prob = c(0.3, 0.7), replace = TRUE)


sample(replace = TRUE, c(0.3,0.7), size = 20, x = c("F", "NF"))


#Tabela de frequência para o objeto dados. (gere outras vezes para obter resultados diferentes)

dados = sample(c("F", "NF"), 1000, replace = TRUE, prob = c(0.3, 0.7))
table(dados)


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Construindo Funções

#OBS: Uma letra apenas é um 'char', que é abreviação de character, já uma 'String' é um conjunto de char que no caso é uma frase, uma palavra.  

#Função F1 sem argumentos.Essa função retorna apenas a string 'minha primeira função!'

F1=function(){
  cat("Minha primeira função")
}
F1() #Chamada da função 

#A diferença nos padrões das funções cat e print e do efeito de /n na string

F2=function(){
  cat("Minha primeira função \n")
  cat("Minha primeira função")
  cat("Minha primeira função")
  print("Minha primeira função!")
  print("Minha primeira função")
}
F2()

#O uso do \n no cat quebra a linha e passa pra outra. 

#--------------------------------------------------------------------------------------------------------------------------------------------------------------


#Função com um argumento (objeto 'aux').Havendo mais de uma instrução entre as chaves {}, a função retornará a última instrução.
#Exemplo: 

F3=function(aux){
  res=aux^2
  cat("Quadrado de ", aux, "é", res, ".", sep = "")
}
F3(3) #Coloque o número que deseja



#Função com um argumento com valor padrão (objeto 'num')
F4=function(num=3){
  for (i in 1:num){
    cat("minha primeira função!\n")
  }
}
F4()
#no caso dessa função ela automaticamente usando o F4() vai repetir as 3 vezes, mas caso você usar F4(1) repetirar somente uma unica vez
#e assim por diante

F4(3) #numero da quantidade que você deseja
F4(1)
F4(6)

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

# função com um argumento (objeto 'aux')

F5 = function(aux) {
  for (i in 1:(aux + 2)) {
    cat(i + 10)
    cat(". Minha primeira função!\n")
  }
}
    
F5(1)

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

# Função para calcular a potência de um número 'n'

F6 = function(n) {
  n^2
}

F6(9)

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

# F7 é a mesma função F6. As chaves {} não são necessárias quando apenas uma instrução é informada.

F7 = function(n) n^2

F7(4)


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Função para calcular a potência e a raiz quadrada de um número 'n'

F8 = function(n) {
  c(n^2, sqrt(n))   #A função retorna um vetor contendo a potência e a raiz quadrada do valor n
}

F8(9)


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Função usando objeto não definido nos argumentos da função

F9 = function(x, y) {
  x^2 + (y/w)
}
w = 3

F9(2, 3)




#--------------------------------------------------------------------------------------------------------------------------------------------------------------


#Função que retorna uma matriz quadrada com elementos dados pelo produto do número da linha pelo número da coluna

G1 = function(dimen) {
  M = matrix(0, dimen, dimen)
  for (i in 1:dimen) {
    for (j in 1:dimen) {
      M[i, j] = i * j
    }
  }
  return(M)
}
G1(2)



#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Função dentro de função

G2 = function(y) {
  y^2
}
G3 = function(x, y) {
  x^2 + G2(y)
}
G3(2,3)

G3(3,5)

#--------------------------------------------------------------------------------------------------------------------------------------------------------------


G4 = function(x, type) {
  switch(type, media = mean(x), mediana = median(x), `desvio padrão` = sd(x),
         gráfico = hist(x, freq = FALSE, main = "Histograma", xlab = "Peso",
                        ylab = "densidade"))
}
#xlab = titulo embaixo, ylab = titulo na lateral (esquerdo), main = Titulo em cima 

dados = c(4.2, 5.9, 4.7, 4.8, 6.3, 5.9, 5.6, 4.6, 5.3, 5.4, 4.8, 7, 5.6, 5.7,
          5.4, 4.9, 6.1, 5.2, 5.6, 5.6, 5.5, 6, 5.1, 5.5, 6.4, 4.4, 4.3, 5.6, 5.9)
G4(dados, "media")

G4(dados, "mediana")

G4(dados, "desvio padrão")

G4(dados, "gráfico")



#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Funções para contagem de tempo: proc.time e system.time

T0 = proc.time()
for (i in 1:1000) mean(runif(50000))
proc.time() - T0

system.time(for (i in 1:1000) mean(runif(50000)))


#ainda não sei uma definição melhor pra isso, lembrar de pesquisar 











