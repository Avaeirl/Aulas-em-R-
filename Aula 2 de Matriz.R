#2 parte Matriz


#OPERAÇÕES COM MATRIZES


M1 = matrix (1:64, ncol = 8, nrow = 8, byrow = FALSE); M1
#Multiplicar uma coluna/linha por um número
M1[,2]*3

#Soma
M1[,2]+3

#soma entre linhas e colunas (virse e versa)
M1[,1]+M1[,2]

#somar uma linha com uma linha e coluna
M1[1,]+M1[1,3]

#Quadrado(use livremente)
M1[,3]**2


#--------------------------------------------------------------------------------------------------------------------------------------------------------------


#A e B

A=matrix(1:4, ncol = 2, byrow = TRUE)
B=matrix(c(1,1,0,1), ncol = 2, byrow = TRUE)


#Multiplicação de elemento a elemento
A*B

#Multiplicação de matrizes
A%*%B

#Inversa da matriz
solve(A)

#Transposta da matriz
t(A)

#Determinante da matriz
det(A)

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Criando matriz diagonal 
diag(c(3,9,10:13))


a=5; b=2; d=3; diag(c(a+b, a*d, b-d, round(sqrt(a),1))) 

#--------------------------------------------------------------------------------------------------------------------------------------------------------------


#Adicionando linhas ou colunas em uma matriz


M2=matrix(1:8, ncol = 3)
M2


M2=rbind(M2, 1:3) #Adiciona uma linha à matriz M2
M2

M2=cbind(M2, seq(50,100,10)) #Adiciona uma coluna à matriz M2
M2

M2 = edit(M2) #Abre uma janela para edição da matriz M2







