#1 parte Matriz

#criando uma matriz
MO=matrix(1:24, nrow = 3, ncol = 8, byrow = TRUE)
#Mo=função, matrix = matriz, 1:24 = vetor de dados, nrow = numero de linhas, ncol= numero de colunas, byrow = padrão(TRUE/FALSE)


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

set.seed(153) #gerador de números pseudo aleatórios

#Criando um vetor que contém uma amostra aleatória com tamanho 24 dos números 2, 3, 4 com diferentes possibilidades de serem sorteados

dados = sample(c(2,3,4), prob = c(0.2, 0.3, 0.4), 24, replace=TRUE); dados
#dados = vetor, sample = , c = selecionar uma quantidade especifica sem ser seguidas independete de ser linhas ou colunas (no caso c(1,5,6,7), 
#prob = a probabilidade que vai gerar os números, replace =  

set.seed(876) # 

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#criando matriz a partir do vetor de dados

M1=matrix(dados, nrow=3, ncol=8)

#não é necessário especificar o número de linhas e colunas 
M1=matrix(dados, 3, 8)
# o segundo argumento é tratado como número de linhas, terceiro como colunas



#--------------------------------------------------------------------------------------------------------------------------------------------------------------


#criando uma matriz de zeros, 10 linhas, 10 colunas
m2=matrix(0,10,10)


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#extraindo submatrizes de uma matriz
M3=matrix(1:24, nrow = 3, ncol = 8, byrow = TRUE)
M3[,2] #todas as linhas, coluna 2
M3[1,] #todas as colunas, linha 1
M3[1,1:3] #linha 1, colunas de 1 a 3

#--------------------------------------------------------------------------------------------------------------------------------------------------------------
#Criando uma matriz a partir de outra Matriz


M4=M3[,c(1,3,5,6)] #Criando uma matriz a partir das colunas de outra matriz
#colunas 1,3,5,6 da M3

M5=M3[-1,] #matriz M5 formada pela matriz M3 sem a linha 1


M6=M3[,-c(1,3)] #matriz M6 formada pela M3 sem a coluna 1 e 3


M7=M3[-1,-(1:3)] #matriz M7 formada pela M3 sem a linha 1 e coluna de 1 a 3

rm(list = all())

#--------------------------------------------------------------------------------------------------------------------------------------------------------------


#substituir números na matrix
M4[2,2] = 99 #substituir por 99 o número da linha 2, coluna 2
M4[1,1:3] = c(10,20,30) #substituir por 10, 20, 30 os valores da linha 1, coluna de 1 a 3
M4[,4] = 88 #substituir por 88 todos os valores da coluna 4


#--------------------------------------------------------------------------------------------------------------------------------------------------------------



#adicionando rotulos (nomes) as linhas e colunas de uma matriz

M1=matrix(1:4, ncol=2, byrow = TRUE);M1

colnames(M1) = c('Coluna 1', 'Coluna 2') #adicionar rotulos as colunas da Matriz M1 
M1

rownames(M1) = c('Linha 1', 'Linha 2') #adicionar rotulos as linhas da matriz M1
M1


#código com os nomes 

M2=matrix(1:4, ncol = 2, byrow = TRUE, dimnames = list(c('Linha 1', 'Linha 2'), c('Coluna 1', 'Coluna 2')))


















