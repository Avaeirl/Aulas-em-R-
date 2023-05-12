# 1 parte DATA FRAME

#Data frame é uma generalização de uma matriz. Permite que as colunas sejam de diferentes tipos (numéricos, lógicas, alfanuméricos... ) Em geral,
#essa classe de objetos é usadad para bases (conjuntos) de dados.

#Função datas: carrega os conjuntos de dados especificados ou lista os conjuntos de dados disponíveis.



#lista de conjuntos de dados disponíveis
data() 

#carrega a base de dados AirPassengers
data("AirPassengers")
#AirPassengers contém os números mensais de passageiros de companhias aéreas no período de 1949 a 1960

#carrega o pacote dslabs que contém a base de dados murders
library(dslabs)
#carrega a base de dados murders 
data(murders)
#murders contém o número de assassinatos por arma de fogo nos Estados americanos no ano de 2010

#estrutura da base de dados
str(murders)
#apresenta as primeiras linha da base de dados
head(murders)
#apresenta as últimas linhas da base de dados
tail(murders)
#nome das variaveis (cabeçalho)
names(murders)


#--------------------------------------------------------------------------------------------------------------------------------------------------------------


#Gerando vetores para construir o Data frame

rm(list = ls()) #remover os objetos do workspace

set.seed() #Usado para quando for fazer um código que gera valor aleatório

set.seed(12)
vetor1=sample(1:6, 14, replace = TRUE) #contruindo um vetor com numeração aleatória
set.seed(13)
vetor2=sample(1:6, 14, replace = TRUE)
set.seed(14)

vetor3=letters[sample(1:10, 7, replace = TRUE)] #gerando um vetor com letras aleatórias 
#letters é um vetor com as 26 letras do alfabeto

vetor4 =paste0(letters[1:7], 1:7) #paste0 gera numeros em orde no caso 1:7 é 1 a 7 junto com as letras

dat = data.frame(vetor1, vetor2, vetor3, vetor4)
dat


colnames(dat) #nome das variaveis (cabeçalho do banco de dados)

dim(dat) #dimensão do data.frame

str(dat) #estrutura do data.frame 


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Acesso aos dados e alterações dos dados


dat[1:2,c(2,4)] #visualizar a linha 1 a 2, coluna 2 e 4

dat[c(1,3),]    #visualizar linha 1 e 3

dat[1:5,1] = 99 #Alterando os valores da linha 1 a 5 da coluna 1 para 99
dat


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Calculo de medidas

mean(vetor1) #média

median(vetor1) #mediana

sd(vetor1) #desvio padrão

var(vetor1) #variancia

max(vetor1) #maximo

min(vetor1) #minimo

quantile(vetor1) #minimo, quartis e maximo

quantile(vetor1, probs = c(0.25, 0.6)) #percentis

summary(vetor1) #resumo de algumas medidas

ls() #lista de objetoss disponiveis 

mean(vetor1)

mean(dat$vetor1) #objeto vetor 1 do dat

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#para acessar diretamente o vetor1 do dat: função attach
attach(dat) #nesse exemplo teremos um conflito ente os objetos
# Para eliminar o conflito, use uma das opões: (a) remover os objetos v1,v2, v3 e v4; (b) usar a função 'with'; (c) especificar a coluna ou a
# variável do banco de dados; (d) trocar o nome das variáveis no banco de dados.

with(dat, mean(vetor1) )

mean(dat[,1]) #especificando coluna referente ao vetor1 


mean(dat$vetor1) #especificando a variavel em dat

colnames(dat) = c("renda", "empregado", "setor", "filial") # nomeando o cabeçalho do banco
dat[1:7,]

detach(dat) #retirando do caminho de procura 'search()' (em geral, uma boa opção)
attach(dat) #adicionando d0 ao caminho de procura (agora com colunas renomeadas que anteriormente deu problema)

mean(renda)























