#Crie os vetores a seguir: ‘mouse.color' com os valores: ‘purple’, ‘red’,
#‘yellow’,‘brown’; ‘mouse.weight’ com os valores 23, 21, 18, 26. Crie um data
#frame chamado de ‘mouse.info’ com esses vetores, formando 4 linhas e 2 colunas.
#Nomeie a primeira coluna para ‘colour’ e a segunda para ‘weight’. De posse 
#desse data frame, responda as perguntas abaixo. OBS.: Ao submeter o comando, 
#retire todos os espaço em branco.

mouse.color <- c("purple", "red","yellow","brown")
mouse.weight <-c ( 23, 21, 18, 26)
mouse.info <- data.frame("colour" = mouse.color, "weight" = mouse.weight)

#Qual comando imprima a estrutura do  data frame no console ?
str(mouse.info)

#Qual comando imprima apenas a linha 3 no console ?
mouse.info[3,]

#Qual comando imprima apenas a coluna 1 no console ?
mouse.info[,1]

#Qual comando imprima o item na linha 4 da coluna 1 ?
mouse.info[4,1]

#Para as questões abaixo use o dataset airquality já incluído no RStudio.

#Qual foi o valor  mínimo de ozônio no mês de maio ?
View(airquality)
str(airquality)

mesmaio <- airquality[airquality$Month == 5,]
min_ozonio <- min(mesmaio$Ozone, na.rm = T)
min_ozonio

#Extraia o subconjunto do data frame em que os valores de Ozônio estão acima
#de 25 e os valores da temperatura (Temp) estão abaixo de 90. Qual é a média
#do Solar.R nesse subconjunto?

sub_conjunto <- airquality[with(airquality, Ozone>25 & Temp < 90),]
mean(sub_conjunto$Solar.R, na.rm = T)
View(sub_conjunto)

#Qual a quantidade de casos completos no dataset airquality ? Ou seja, a
#quantidade de observação (linhas) sem NAs.

nrow(airquality[complete.cases(airquality),])

#Carregue o arquivo genomes.csv numa variável chamada genomas através do 
#seguinte comando: genomas <- as.data.frame(read.csv("https://www.dropbox.com/s/vgh6qk395ck86fp/genomes.csv?dl=1")).
#De posse desse dado, responda as perguntas abaixo.
getwd()
setwd("/mnt/arquivos/UFRPE/AnaliseDeDados/Datas")

genomas <- as.data.frame(read.csv("genomes.csv"))
View(genomas)
str(genomas)

#Selecione os organismos com mais de 40 cromossomos.
exemplo <- genomas[genomas$Chromosomes > 40,]
View(exemplo)

#Selecione os organismos que contém plasmídeos e também possui mais de 
#um cromossomo.
# Yangia
# Vibrio tubiashii
# Vibrio scophthalmi

exemplo_02 <-genomas[genomas$Plasmids > 0 & genomas$Chromosomes > 1 & genomas$Organism == "Vibrio scophthalmi",]
View(exemplo_02)

#Quantos grupos diferentes existem?
length(levels(factor(genomas$Groups)))

#Carregue o arquivo cancer_stats.csv numa variável chamada cancer_stats através do seguinte comando:
#cancer_stats <- as.data.frame(read.csv("https://www.dropbox.com/s/g97bsxeuu0tajkj/cancer_stats.csv?dl=1")). 
#De posse desse dado, responda as perguntas abaixo.
cancer_stats <- as.data.frame(read.csv("cancer_stats.csv"))
View(cancer_stats)
str(cancer_stats)

#Para qual local do câncer (site) do sistema digestivo (Digestive System) existem
#mais casos femininos do que masculinos?
result_cancer <- cancer_stats[cancer_stats$Class == "Digestive System",]
result_cancer_female <- result_cancer[with(result_cancer, Female.Cases > Male.Cases),]
result_cancer_female

#Qual local do câncer tem a melhor taxa de sobrevivência para os homens?
#calcula taxa
cancer_stats$Male.Deaths.Rates <- with(cancer_stats, Male.Deaths/Male.Cases)

#calcula a taxa minima
min_male <- min(cancer_stats$Male.Deaths.Rate, na.rm=T)

#Verificar as linhas válidas
valid_lines <- cancer_stats[!is.na(cancer_stats$Male.Deaths.Rates),]

#Verifica linha com a taxa minima
min_male_site <- valid_lines[valid_lines$Male.Deaths.Rates == min_male,]

min_male_site

#Qual local de câncer tem a pior taxa de sobrevivência para as mulheres?

#calcula taxa
cancer_stats$Female.Deaths.Rate <- with(cancer_stats, Female.Deaths/Female.Cases)

#Verifica a taxa minima
min_female <- min(cancer_stats$Female.Deaths.Rate, na.rm = T)

#Verifica as linhas válidas
valid_lines_female <- cancer_stats[!is.na(cancer_stats$Female.Deaths.Rate),]

# Verifica as linhas com a taxa minima
min_female_site <- valid_lines[valid_lines$Female.Deaths.Rate == min_female,]

min_female_site


cancer_stats$Female.Death.Rate <- with(cancer_stats, Female.Deaths/Female.Cases) #calcula taxa
max_female <- max(cancer_stats$Female.Death.Rate, na.rm=T) #calcula taxa mínima
valid_stats <- cancer_stats[!is.na(cancer_stats$Female.Death.Rate),] #pega linhas válidas
max_female_site <- valid_stats[valid_stats$Female.Death.Rate==max_female,] 

max_female_site
