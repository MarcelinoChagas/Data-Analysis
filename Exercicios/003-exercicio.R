

#Vetores aceitam apenas um tipo de dados.
#O que acontece com xx com o seguinte comando:  xx <- c(TRUE, 2) ?

xx <- c(TRUE,2)
xx

#No R, todos os tipos de dados a seguir são atômicos, EXCETO:
#Lista
#Inteiro
#Character
#DataFrame (x)
#Lógico

#Suponha que você tenha um vetor x<- 1:4 e 
#y <- 2:3. O que é produzido pela expressão x * y
x <- 1:4
y <- 2:3
x*y

#Dada a tabela no link abaixo que representa uma competição entre Maria
#e Joana,  determine quem foi a vencedora.  Dica: primeiro padronize os
#dados e depois calcule a média dos valores padronizados.
#https://docs.google.com/drawings/d/1_szurYna3gDzTB3ht9AQlWChbq_KLcCMPNJ22J1ydZI/edit?usp=sharing

pessoas <-c("Maria","Joana")
abdominais <- c(42,38)
salto <-c(102, 173)
bracos <-c(38,71)
correrandar <-c(2149,1554)
conhecimento <-c(97,70)

#Valores Padronizados
abdominais.n <- (abdominais - mean(abdominais)) / sd(abdominais)
salto.n <- (salto - mean(salto)) / sd(salto)
bracos.n <- (bracos - mean(bracos)) / sd(bracos)
correrandar.n <- (correrandar - mean(correrandar)) / sd(correrandar)
conhecimento.n <- (conhecimento - mean(conhecimento)) / sd(conhecimento)

#Resultado
media <-abdominais.n + salto.n + bracos.n + correrandar.n + conhecimento.n / 5
max(media)
pessoas[max(media) == media]

#Para responder as questões abaixo, faça download do arquivo disponível em
#https://www.dropbox.com/s/6t7b44acy7yfczu/vetor.RData?dl=1 e mova-o para o
#seu diretório. Em seguida leia-o com o comando load(“vetor.RData”) . O vetor01
#possui 15.000 observações referentes às notas dos candidatos do concurso
#público para auxiliar administrativo da Prefeitura de São Longuinho. Os dados
#foram disponibilizados pela empresa organizadora do concurso. As notas variam
#de 0 a 10 e os candidatos que não realizaram a prova estão com NA nos
#respectivos campos. De posse dos dados, responda as perguntas abaixo.

getwd()
setwd("/mnt/arquivos/UFRPE/AnaliseDeDados/")
load("vetor.RData")

#Substitui valores NA por 0
#vetor01[is.na(vetor01)] <- 0

#Remove valores NA do vetor01
#X <- X[!is.na(X)]
vetor01 <- vetor01[!is.na(vetor01)]
vetor01 <- vetor01[-which(is.na(vetor01))]
vetor01[!is.na(vetor01)] -> vetor01



#Qual foi a média das notas ?
#Média
mean(vetor01)

#Qual foi a mediana das notas ?
#Mediana
median(vetor01)

#Qual o desvio padrão das notas ?
#Desvio padrão das notas
sd(vetor01)

#Qual foi a quantidade de faltosos ?
# Qtd de NA
sum(is.na(vetor01))

#Qual foi percentual de faltosos ?
#percentual
mean(is.na(vetor01))

#Quantos candidatos obtiveram notas maiores do que 7.00 E menores do que 8.00 ?
sum(vetor01>7 & vetor01<8)

#Quantos candidatos obtiveram notas maiores do que 9.00 OU menores do que 1.00?
sum(vetor01>9 | vetor01<1)

#Quais os comandos removem os valores ausentes (NA) do vetor01 e guarda o
#resultado no próprio vetor01 ?
vetor01 <- vetor01[!is.na(vetor01)]
vetor01 <- vetor01[-which(is.na(vetor01))]
vetor01[!is.na(vetor01)] -> vetor01
