#Parte 2 Data.frame

#Nomeando colunas e editando banco de dados

dados = data.frame(v1 = 80:86, v2 = letters[1:7], v3 = paste0(letters[1:7], 1:7))
dados

colnames(dados) #cabeçalho do banco de dados
str(dados) #estrutura do banco de dados
is(dados) #tipo do objeto

dados=edit(dados) #editar banco de dados "dados"
dados

dados2 = edit(data.frame()) #editar um novo banco de dados
dados2

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Algumas funções

set.seed(12)
a = rpois(15, 160) #10 números aleatórios da Poisson(4)
set.seed(123)
p = round(rnorm(15, 60, 3), 1) #10 números aleatórios da Normal(60,9)
set.seed(1234)
s = sample(letters[1:5], 15, replace = TRUE) #Amostra de tamanho 10 com repetição
set.seed(12345)
f = sample(1:20, 15, replace = FALSE) #Amostra de tamanho 10 sem repetição
dados3 = data.frame(a, p, s, f) #O cabeçalho é dado pelo nome dos objetos
dados3

summary(dados3)

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

colMeans(dados3[, 1:2]) #médias das colunas 1 a 2 de dados3

colSums(dados3[, 1:2]) #somas das colunas 1 a 2 de dados3

which(dados3[, 1] == 179) #identifica, na coluna 1 de dados3, a posição do registro 179 (que não existe)
#o resultado integer(0) which indicates that none of the elements in a vector evaluated to TRUE.
which(dados3[, 1] == 149) #identifica, na coluna 1 de dados3, a posição do registro 149 

which(d3$a == 149) # identifica a posição do registro 149 da variável 'a' em dados3


which(d3[1, ] == "a") # identifica, na linha 1 de dados, a posição do registro 'a'


which(d3[, 3] != "d") # identifica, na coluna 3 de dados3, as posições com registros diferentes de 'd'

which(d3 == "d", arr.ind = TRUE) # identifica, em dados3, as posições(linhas e colunas) com registros iguais a 'd'
#arr.ind = TRUE signifca que 

dados3 = data.frame(altura = a, peso = p, setor = s, filial = f) # alterando o cabeçalho
attach(dados3) # identifica as colunas de dados3 pelo nome
dados3

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

mean(peso) #média
median(altura) #mediana

peso+10 #somando 10 a cada valor do peso

setor[7] #a sétima posição do setor 

peso^2 #elevado ao quadrado

sum(filial) #somar a filial

min(altura) #minimo

max(altura) #maximo

sort(peso) #ordenar o vetor 'peso'

tabela = table(setor) # distribuição de frequência do vetor setor (indica a quantidade de cada um, a frequência)
tabela


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Extra

# Instalar pacote "xtable" (caso não esteja instalado)
# install.packages("xtable", dependencies = TRUE) # instalar pacote "xtable"
install.packages("xtable", dependencies = TRUE)


# Carregar o pacote para uso
require(xtable)


# Converte o objeto tabela em código latex
xtable(tabela)
