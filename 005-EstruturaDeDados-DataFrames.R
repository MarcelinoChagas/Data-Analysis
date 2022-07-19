# Criando objeto dataframe

A <- c(1,2,3,4)
B <- c("João", "Maria", "José", "Pedro")
C <- c(3.0, 5.0, 2.5, 1.0)

meu.banco <- data.frame("ID" = A, "Nome" = B, "Peso" = C, stringsAsFactors = FALSE)
meu.banco
# Mostrar a estrutura de meu.banco
str(meu.banco)

#Funções dos Data frames

#head() mostra as primeiras linhas
head(ChickWeight)


#tail () mostra as últimas linhas
tail(ChickWeight)

#View() abre o dataframe completo em uma nova janela
View(ChickWeight)

#Mostra um sumária estatístico de todas as colunas de ToothGrowth no console
summary(ToothGrowth)

#Apresenta informações adicionais sobre ToothGrowth no console
str(ToothGrowth)

#Acessar os nomes das colunas dos Data Frames

#Para saber quais são os nome das colunas do dataframe ToothGrowth
names(ToothGrowth)

#Retorna a coluna len de ToothGrowth
ToothGrowth$len

#Apresenta a média da coluna len de ToothGrowth?
mean(ToothGrowth$len)

#Apresenta as coluna len E supp de ToothGrowth

head(ToothGrowth[c("len", "supp")])


##Alterar nome de Colunas em Dataframes

#Muda o nome da primeira coluna do dataframe para "a"
names(df)[1] <- "a"

#Muda o nome da segunda coluna do dataframe para "b"
names(df)[2] <- "b"

#Muda o nome da coluna usando logica vetorial
names(df)[names(df) == "old.name"] <- "new.name"

##Adicionar colunas em Data Frames
#Criar um novo dataframe chamado survey

survey <- data.frame("index" = c(1,2,3,4,5),"age"=c(24,25,42,56,22))

#Adicionar uma nova coluna chamada sex
survey$sex <- c("m","m","f","f","m")

View(survey)

#Utilizando o cbind() para adicionar a coluna sex
survey2 <- data.frame("index" = c(1,2,3,4,5),"age"=c(24,25,42,56,22))

sex <- c("m","m","f","f","m")

survey2 <- cbind(survey2, sex)
View(survey2)

#Manipular Data Frames Vazio
Data <- data.frame(Nome= character(0), Idade= numeric(0), stringsAsFactors = F)
Data[1, ] <- c("José", 30)
Data

#Fatiamento de Data frames
#Slicing  é o processo de seleção de linhas e colunas específicas de dados com 
# base em alguns critérios é comumente # conhecido como fatiamento (slicing).

#Slicing com [,]
#Retorna a linha 1
df[1,]

#Retorna a coluna 5
df[, 5]

#Linhas 1:5 e coluna 2
df[1:5,2]

#Mostra a primeira linha ToothGrowth
ToothGrowth[1,]

#Gibe me the 2nd column (and all rows) of ToothGrowth
ToothGrowth[,2]

#Mostra as linhas 1-6 e coluna 1 de ToothGrowth
ToothGrowth[1:6, 1]

#Apresenta as linhas 1-3 e colunas 1 e 3 de ToothGrowth
ToothGrowth[1:3, c(1:3)]

# Slicing com vetor lógico
# A indexação de dataframes com vetores lógicos é quase idêntica à indexação de
#vetores únicos.

#Criar um novo df com apenas as linhas de ToothGrowth
# onde supp sejaigual a "VC"
ToothGrowth.VC <- ToothGrowth[ToothGrowth$supp == "VC",]

#Criar um novo df com apenas as linhas de ToothGrowth onde supp seja igual a "OJ"
# e dose < 1
ToothGrowth.OJ.a <-ToothGrowth[(ToothGrowth$supp == "OJ" & ToothGrowth$dose <1), ]
ToothGrowth.OJ.a

# Criar um novo df com apenas as linhas de InsectSprays onde spray seja igual a
# "A" ou "B" e count < 10

View(InsectSprays)
str(InsectSprays)

(InsectSprays$spray == "A" | InsectSprays$spray == "B") & InsectSprays$count < 10

Aux <-InsectSprays[(InsectSprays$spray == "A" | InsectSprays$spray == "B") & InsectSprays$count < 10,]

# Slicing com subset()
# A função subset() é uma das mais úteis funções de gerenciamento de dados em R.

#Obtêm linhas de ToothGrowth onde len < 20, supp == "OJ" e dose >= 1
subset(x = ToothGrowth,
       subset = len < 20 &
       supp == "OJ" &
       dose >= 1)

#Obtêm linhas de ToothGrowth onde len > 30 e supp == "VC", porém apenas retorna
# as colunas len e dose
subset(x = ToothGrowth,
       subset = len > 30 & supp == "VC",
       select = c("len", "dose"))

#Combinando Slcing e Funções

#Qual o comprimento médio dos dentes dos porquinhos da índia dado o suplemento OJ?

#Step 1: Criar um subconjunto do dataframe chamado oj

oj <- subset(x = ToothGrowth, subset= supp=="OJ")

#Step 2: Calcular a média da coluna len do novo subconjunto do dataset

mean(oj$len)

#Qual o peso médio das galinhas (ChickWeight) cuja Diet é 1?
View(ChickWeight)

aux <- subset(ChickWeight,
              subset = ChickWeight$Diet==1)
View(aux)
mean(aux$weight)

#Função with()

#Criar o data frame health
health <- data.frame("age" = c(32, 24, 43, 19), "height" = c(1.75, 1.65, 1.50, 1.92),
                     "weight" = c(70,65,62,79))

#Adicionar uma coluna comíndice de massa corporal (IMC)
#Forma tradicional
health$height/health$weight ^ 2

#Usando a função with()
with(health, height/weight ^ 2)

#Removendo NAs
total <- sum(is.na(airquality))
total

x <- airquality[complete.cases(airquality), ]

total <- sum(is.na(x))
total