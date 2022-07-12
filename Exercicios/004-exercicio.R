#Um factor também pode ser gerado usando a função gl(). Qual o comando cria um 
#factor com 100 repetições tanto para"M" quanto para "F" ? Note que o comando 
#deve ser submetido no seguinte formato: gl(x,k,labels = z). 
#OBS.: Ao submeter o comando, retire todos os espaço em branco.

resultado<-gl(2,100,labels=c("M","F"))
table(resultado)
levels(resultado)

#Crie o fator drinks <- factor(c("beer","beer","wine","water")).
#Depois, submeta apenas o comando em R para calcular a proporção de cervejas (beer)
#no objeto fator de bebidas (drinks). 
#É obrigatório o uso da função mean para calcular a proporção.  
#OBS.: Ao submeter o comando, retire todos os espaço em branco

drinks <- factor(c("beer","beer","wine","water"))
(sum(table(drinks)["beer"])/(sum(table(drinks))))


#Crie o fator drinks <- factor(c("beer","beer","wine","water")). Depois, 
#altere o primeiro nível do fator com o seguinte comando: 
#levels(drinks)[1] <- "water". Qual o fator resultante quando acessar os
#elementos do mesmo?

drinks <- factor(c("beer","beer","wine","water"))
levels(drinks)[1] <- "water"
drinks

#Considere os vetores: nomes=[João, Paula, Maria, Ingrid, José, Marcos],
#pesos=[80, 65, 70, 58, 78, 70]  e alturas=[1.70, 1.66, 1.65, 1.60, 1.76, 1.70].
#Crie uma lista com esses vetores chamada de lista_pessoas. Depois, crie um 
#quarto objeto chamado IMC de acordo coma equação IMC=pesos/alturas^2.
#Por fim, adicione o vetor IMC a lista_pessoas (ao final da lista) e responda as
#questões abaixo:
lista_pessoas <- list(nomes=c("João", "Paula", "Maria", "Ingrid", "José", "Marcos"),
              pesos=c(80, 65, 70, 58, 78, 70), alturas =c(1.70, 1.66, 1.65,
                                                            1.60, 1.76, 1.70))
str(lista_pessoas)

lista_pessoas$IMC <- lista_pessoas$pesos/lista_pessoas$alturas^2


#Qual o comando para acessar o primeiro nome  contido no primeiro elemento da 
#lista (lista_pessoas)? OBS.: Ao submeter o comando, retire todos os espaço
#em branco.

lista_pessoas[[1]][1]

#O que retorna o seguinte comando lista_pessoas[[4]][3]?

lista_pessoas[[4]][3]

#A partir do dateset ‘airquality’, crie uma variável ‘lista’ com o seguinte 
#comando: lista<-lapply(airquality, function(x){mean(x)}). A função lapply() 
#retorna um objeto do tipo lista com os valores das médias de cada uma das 
#colunas do dataset ‘airquality’. Usando o RStudio, analise o dataset 
#'airquality' e a variável ‘lista’.  Em seguida, escreva o comando que apenas
# apresenta a média das temperaturas contida na variável ‘lista’ .

list <- lapply(airquality, function(x){mean(x)})
list$Temp


#Para responder as questão abaixo, faça download do arquivo disponível em
#https://www.dropbox.com/s/luxinhu8d1hmc1j/chuvas.RData?dl=1 e mova-o para o 
#seu diretório. Em seguida leia-o com o comando load("chuvas.RData"). 
#A matriz chuvas possui dados (em mm) sobre precipitações em 100 municípios do
#Brasil, durante um período de 30 dias. Os municípios estão representados em
#códigos através das linhas e os dias através das colunas. Diante de tais dados,
#resolva as questões abaixo:

load("Datas/chuvas.RData")

#Qual a média do volume de chuvas do período observado?

mean(chuvas)

#Qual município teve o maior volume de chuvas considerando os 30 dias observados?

somas_municipios <-rowSums(chuvas)
maior_municipio <- max(somas_municipios)
somas_municipios[somas_municipios == maior_municipio]

#Considerando o volume de todos os municípios observados, em qual dia menos choveu?

somas_dias <- colSums(chuvas)
minimo <- min(somas_dias)
somas_dias[somas_dias==minimo]

#Quais comandos abaixo calculam o volume de chuvas do município 81 (mun_81)
#nos primeiros 10 dias observados?

aux<-chuvas["mun_81" , ];
aux<-sum(aux[1:10])
aux

aux<-chuvas[81 , ];
aux<-sum(aux[1:10])
aux

aux<-chuvas[81 , ];
aux<-sum(aux[seq(1,10,1)])
aux

aux<-chuvas["mun_81" ];
aux<-sum(aux[1:10])
aux

aux<-chuvas["mun_81" , ];
aux<-sum(aux[c(1:10)])
aux
