# Estrutura de Dados - Vetor (Parte 2)

#Indexação Numérica
v <- c(2,3,4,5)
v[3]

v[c(1,2)]

v[1:3]

#Indexação Lógica
boat.names <-c("a","b","c","d")
boat.colors <- c("black", "green", "pink", "blue")
boat.ages <- c(143, 53, 356, 23)
boat.prices <- c(53, 87, 54, 66)
boat.costs <- c(52, 80, 20 ,100)

boat.ages > 100
boat.names == "c"

#Comparando vetores de mesmo tamanho
boat.prices > boat.costs

#Obtendo preços cuja idade é > 100
boat.prices[boat.ages>100]

(boat.prices > 70 | boat.prices <60) & boat.colors=="black"
(boat.colors=="blue" & boat.prices>60) | boat.costs < 80

boat.names[(boat.prices > 70 | boat.prices <60) & boat.colors=="black"]
boat.names[(boat.colors=="blue" & boat.prices>60) | boat.costs < 80]

# Estrutura de Dados - Vetor (Parte 3)

# A Operação %in% ajuda a criar facilmente vários argumentos OR.
x <- c("a", "t", "a", "b", "z")
x %in% c("a", "b", "c", "d")

# Função retorna a posição dos elementos que se enquadram
# na resposta da pergunta.

v <- c(1,1,1,10,10)
which(v>3)
v[which(v>3)]

x <- c(1,2,3,-5,-5,-5,-5,-5)
#Qtd de valores positivos
sum(x>0)
#Porcentagem de positivos 
mean(x>0)

# Estrutura de Dados - Vetor (Parte 4)

#Nomes
x <- 1:3
names (x)

names(x) <- c("um", "dois", "três")
names(x)
x["três"]

#Alterando elementos
v <- c(2,3,0,5)
v[2] <- 0
v

v<3
v[v<3] <- 1

#Manipular Vetor Vazio
v <- vector(mode = "numeric", length = 3)
v

v[1] <- 1
v

v<-c(v,5)
v

#Not  Available (NA)
v <- c(1,2,3,NA,6)
is.na(v)

mean(v)
mean(v, na.rm=TRUE)

#Escore padronizado
# Subtrair o vetor pela média e dividir o resultado
# pelo desvio padrão do vetor

a <-c(5,3,7,5,5,3,4)
mean(a)
sd (a)

a.z <- (a - mean(a)) / sd(a)
a.z

# Dada a tabela abaixo que representa uma competição entre
#piratas de beber (grogg) e escalar (climbing), determine qual
#pirata foi o vencedor. Dica: primeiro padronize os dados e
#depois calcule a média das duas colunas.

piratas <-c("Heidei", "Andrew", "Becki","Maidsen", "David")
beber <-c(12,8,1,6,2)
escalada<-c(100,520,430,200,700)

#Padronizar a variável beber
beber.n <- (beber - mean(beber)) / sd(beber)

#Padronizar a variável escalada
escalada.n <- (escalada - mean(escalada)) / sd(escalada)

#O melhor pirata
media <- beber.n+escalada.n/2
max(media)

piratas[max(media)==media]
