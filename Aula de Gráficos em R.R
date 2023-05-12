#Gráficos


#Histograma  (Gráfico de frequência)

data(trees) #Carregando conjunto de dados trees. Esse conjunto de dados fornece medições do diâmetro (erroneamente nomeado circunferencia, Girth),
#altura (Height), e volume (Volume) de madeira em 31 cerejeiras.

str(trees) #Estrutura do conjunto de dados

head(trees, n=3) #primeiras 'n' linhas do conjunto de dados


old.par = par(mfrow = c(1,3))
hist(trees$Girth, freq = FALSE, main = "", xlab = "diâmetro", ylab = "densidade", col = "lightblue")
hist(trees$Height, freq = FALSE, main = "", xlab = "altura", ylab = "densidade", col = "lightpink")
hist(trees$Volume, freq = FALSE, main = "", xlab = "Volume", ylab = "densidade", col = "lightyellow")

#xlab = titulo embaixo, ylab = titulo na lateral (esquerdo), main = Titulo em cima (principal) 

par(old.par) #par é como se fosse uma tabela de gráficos

#--------------------------------------------------------------------------------------------------------------------------------------------------------------


#Sendo de mesma amplitude todas as classes de valores (bases das colunas), o uso da frequência absoluta em vez da densidade não altera 
#o formato do histograma. Exemplo:


old.par = par(mfrow = c(1, 3)) #mfrow é a estrutura do gráfico (o local e como vai organizar os graficos), no caso 1 linha, 3 gráficos
hist(trees$Girth, freq = TRUE, main = "", xlab = "diâmetro", ylab = "frequência",
     col = "lightblue", border = "blue")
hist(trees$Height, freq = TRUE, main = "", xlab = "altura", ylab = "frequência",
     col = "lightpink", border = "lightblue")
hist(trees$Volume, freq = TRUE, main = "", xlab = "volume", ylab = "frequência",
     col = "lightyellow", border = "yellow")

par(old.par)

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Vejamos as informações disponíveis pela função hist. Ilustramos os recursos usando a varivel Heigth.
g = hist(trees$Height, freq = FALSE, main = "Altura das cerejeiras", xlab = "altura",
    ylab = "densidade", col = "lightpink", border = "lightblue", cex.main = 0.8, cex.lab = 0.8, cex.axis = 0.9)

#cex.main = tamanho do título principal (main), cex.lab = tamanho dos títulos da lateral (ylab) e o título debaixo (xlab),
#cex.axis = tamanho dos números
#border = as bordas do gráfico

names(g)


b=g$breaks #Limites das classes
b

f = g$counts #frequencias absolutas
f

d = g$density #densidades
d

m = g$mids #pontos médios das classes
m

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Gráfico Plot

#Plot é um gráfico mais básico. Usado para desenhar(marcar) pontos no Gráfico. 

plot(Orange$age, Orange$circumference, main = "", xlab = "age", ylab = "circumference", col="blue")

#plot(x=idade, y=circunferência) a estrutura do plot é plot(x, y). 

plot(c(1,2,3,4,5),c(1,4,9,16,25)) 

x=seq(-pi,pi,0.1)
y=sin(x)
plot(x,y)                                             

plot(x,y,pch=c(4,5,6),col=c('red','blue','violet','green')) #pch é um argumento usado para colocar um simbolo da sua escolha no gráfico,
                                                            #e é plotado através de números de função R.  



par(mfrow=c(1,2))#lembrando que mfrow é a estrutura do gráfico (o local e como vai organizar os gráficos), no caso 1 linha, 2 gráficos
plot(x,y,type='l')
plot(x,y,pch=c(4,5,6),col=c('red','blue','violet','green'))










#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Box plot

old.par=par(mfrow = c(1, 3))
boxplot(trees$Girth, main = "", ylab = "diâmetro", col = "lightblue")
boxplot(trees$Height, main = "", ylab = "altura", col = "lightpink")
boxplot(trees$Volume, main="", ylab = "volume", col = "lightyellow")

par(old.par)

#na horizontal 

par(old.par)
old.par = par(mfrow = c(1, 3))
boxplot(trees$Girth, main = "", xlab = "diâmetro", col = "lightblue", horizontal = TRUE)
boxplot(trees$Height, main = "", xlab = "altura", col = "lightpink", horizontal = TRUE)
boxplot(trees$Volume, main = "", xlab = "volume", col = "lightyellow", horizontal = TRUE)



#--------------------------------------------------------------------------------------------------------------------------------------------------------------

g = boxplot(trees$Volume, main = "Cerejeiras", xlab = "volume", col = "lightyellow",
        horizontal = TRUE, cex.main = 0.8, cex.lab = 0.8, cex.axis = 0.8)

names(g)

g$stats #Medidas no boxplot

abline(v = g$stats, lty = 2) #Linhas nos valores de g$stats

g$out #Valor extremo (outlier)


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Funções com outros conjuntos de dados.

fivenum(trees$Volume)  #Esquema dos 5 números

quantile(trees$Volume) #Quantis

summary(trees$Volume)  #Mínimo, quartis, média e máximo

data(iris)  #Carregando o conjunto de dados iris. Este conjunto de dados fornece medições em centímetros das variáveis
#comprimento e largura da sépala e comprimento e largura da pétala, respectivamente, para 50 flores de cada uma das 3 espécies de íris: íris
#setosa, versicolor e virginica.

str(iris) # estrutura da base dedados iris.

#As três primeiras variáveis são numéricas e a última (Species) é factor. Factor é usado para representar variáveis categóricas que apresentam 
#um número determinado de 'valores'. Os fatores são criados com base nos números inteiros e possuem o atributo níveis.
head(iris)

#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Exemplo abaixo de uma forma para construir boxplots e histogramas para variáveis numéricas segundo uma variável categórica.


boxplot(iris$Petal.Length ~ iris$Species, xlab = "espécies", ylab = "comprimento da pétala",
        col = "lightpink", horizontal = TRUE)




old.par = par(mfrow = c(1, 3))

hist(iris[iris$Species == "setosa", 3], ylab = "Densidade", col = "lightblue", main = "Setosa",
     freq = FALSE, xlab = "Comprimento da pétala")

hist(iris[iris$Species == "versicolor", 3], ylab = "densidade", col = "lightpink",
     main = "Versicolor", freq = FALSE, xlab = "Comprimento da pétala")

hist(iris[iris$Species == "virginica", 3], ylab = "densidade", col = "lightyellow",
     main = "Virginica", freq = FALSE, xlab = "Comprimento da pétala")


#--------------------------------------------------------------------------------------------------------------------------------------------------------------

#Usamos os argumentos breaks e right da função hist para mostrar uma forma de controlar os limites das classes e o tipo de intervalo. 
#Por exemplo, para breaks = c(1.0,1.5,2.0) e right= FALSE, estabelecemos as classes 1.0 |- 1.5 e 1.5 |- 2.0. 
#Usando right = TRUE o intervalo seria aberto à esquerda e fechado à direita (a).
#O argumento at da função boxplot indica a localização no eixo y onde o boxplot será adicionado ao histograma.


old.par = par(mfrow = c(1, 3))

hist(iris[iris$Species == "setosa", 3], ylab = "", col = "lightblue", main = "setosa",
     freq = FALSE, xlab = "comprimento da pétala", ylim = c(-1, 2.6), axes = FALSE,
     right = FALSE, breaks = seq(1, 2, length.out = 11))

boxplot(iris[iris$Species == "setosa", 3], add = TRUE, horizontal = TRUE, at = -0.5)

hist(iris[iris$Species == "versicolor", 3], ylab = "", col = "lightpink", main = "versicolor",
     freq = FALSE, xlab = "comprimento da pétala", ylim = c(-1, 3), axes = FALSE,
     right = FALSE, breaks = seq(3, 5.5, length.out = 11))

boxplot(iris[iris$Species == "versicolor", 3], add = TRUE, horizontal = TRUE,
        at = -0.5)

hist(iris[iris$Species == "virginica", 3], ylab = "", col = "lightyellow", main = "virginica",
     freq = FALSE, xlab = "comprimento da pétala", ylim = c(-1, 3), axes = FALSE,
     right = FALSE, breaks = seq(4.5, 7, length.out = 11))

boxplot(iris[iris$Species == "virginica", 3], add = TRUE, horizontal = TRUE,
        at = -0.5)



par(old.par)
















