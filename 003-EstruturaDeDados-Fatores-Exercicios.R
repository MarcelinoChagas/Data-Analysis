getwd()
setwd("/mnt/arquivos/UFRPE/AnaliseDeDados")

#1. Se x = c(1,2,3,3,5,3,2,4,NA), quais são os níveis do fator (x)?
#Levels: 1 2 3 4 5
x <- c(1,2,3,3,5,3,2,4,NA)
ex1 <- factor(x); ex1

#2. Execute e análise as seguintes instruções:
f<- factor(c("a","a","b", "c","c","d"))
f[f=="a"]
f[f %in% c("b","c")]
f[1:3]
f[-3]

#3. Categorize o vetor abaixo e identifique a frequência dos elementos usando
#o comando table(). Além disso, organize os nomes dos meses para uma ordem
# que faça mais sentido. Ex.: January, February, March, etc.

mths = c("March", "April", "January", "November",
         "January", "September","October","September",
         "November", "August", "January", "November", "November",
         "February", "May", "August", "July", "December",
         "August", "August", "September", "November", "February",
         "April")
mounts_ordered <- factor(mths,levels = c("January", "February","March","April",
                                         "May", "June", "July", "August",
                                         "September","October","November",
                                         "December"),ordered = TRUE)

table(mounts_ordered)

#4. Considere o fator Resposta <- factor(c("Concordo","Concordo",
#"Concordo Plenamente", "Discordo","Concordo")). Criei um código que inclui o
#"Discordo Plenamente" e que a saída dos níveis seja "Levels: "Concordo Plenamente"
#"Concordo" "Discordo Plenamente" "Discordo".
Resposta <- factor(c("Concordo","Concordo","Concordo Plenamente", "Discordo",
                    "Concordo"))
levels(Resposta) <-c(levels(Resposta),"Discordo Plenamente")
Resposta_ordenado <- factor(Resposta, levels = c("Concordo Plenamente","Concordo",
                                   "Discordo Plenamente", "Discordo"),ordered = TRUE)

table(Resposta_ordenado)

#5. Dado o vetor z<- factor(c("p","q","p","r","q")) e os níveis "p", "q", e "r",
# crie um código em R que substitui o nível "p" por "w"
z <- factor(c("p","q","p","r","q"))
table(z)
z <-factor(z, levels = c("w","q","r"))
table(z)
