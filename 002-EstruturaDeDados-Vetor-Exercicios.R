#1. Defina a variável v1 como (3,7,-5,-7)
v1 <- c(3,7,-5,-7)

#2. Defina a variável v2 como (1,2,3, ... 48, 49,50)
v2 <- c(1:50)

#3. Defina a variável v3 como (3,7,-5,-7, 1,2,3, ... 48, 49,50)
v3 <- c(v1, v2)

#4. Defina a variável v4 como  (0.0, 0.1, 0.2, 0.3, ... 5.8, 5.9,6.0)
v4 <-c(0:60)/10
v4

#5 Defina a variável fumante com 99 elementos
#como:("sim","não","não","sim","não","não", ..., "sim","não","não")

n1 <- c("sim","não","não")
fumante <- rep(n1,99)
fumante

#6 Some todos os elementos de v1 e v2. Dica: use a função sum()
sum(v1,v2)

#7 Calcule o produto dos elementos do vetor: (2,30,4,5,5). Dica: use a função
# prod()
prod(2,30,4,5,5)

#8 Dado o vetor X <- c(NA, 3, 14,NA,33,17,NA,41), crie um código que remove
# os NAs do vetor. Use a indexação lógica, númerica e which.

X <- c(NA, 3, 14,NA,33,17,NA,41)
X <- X[!is.na(X)]

#9 Dado o vetor X <- c(NA, 3, 14,NA,33,17,NA,41), crie um código que conta
# o número de ocorrências de NAs.
X <- c(NA, 3, 14,NA,33,17,NA,41)
sum(is.na(X))

#10 Dado o vetor X <- c(NA, 3, 14,NA,33,17,NA,41), crie um código em R
# substitui todas as ocorrências de NA por Zero.

X <- c(NA, 3, 14,NA,33,17,NA,41)
X[is.na(X)] <- 0
X

#11 Vetores acitam apenas um tipo de dados. O que acontece com os seguintes
# comandos: xx<-c(1.7,"a"), xq<-c(TRUE,2), xw<-c("a",TRUE)
xx<-c(1.7,"a")
xx

xq<-c(TRUE,2)
xq

xw<-c("a",TRUE)
xw