#Exemplo
v <- c("M","F","F","F","M","M")
a <- factor(v); a

levels(a)
table(a)

#Exemplo Fatores ordenados
week=c("sunday","monday","tuesday","wednesday","thursday","friday","saturday","wednesday","tu
esday","thursday","wednesday")

week <- factor(week, ordered = T)

table(week)

week_ordered = factor(week, levels = c("sunday","monday","tuesday","wednesday","thursday","friday","saturday"), ordered=TRUE)
table(week_ordered)

#Acessando elementos de fatores
x <- factor(c("Solteiro","Casado","Casado","Solteiro"))
x

#acessa o 3 elemento
x[3]
#acessa o 2 e o 4 elemento
x[c(2,4)]
#acessa todos os elementos, exceto o 1
x[-1]

levels(x)[1]

#Alterando elementos de fatores
x<- factor(x,levels = c("Solteiro","Casado","Divorciado"))

#Modifica o segundo elemento
x[2] <- "Divorciado"
x

#Não pode atribuir valores fora dos níveis(levels) neste caso ele gera um
#fator NA
x[3] <- "Viuvo"
x

#Adiciona um nível(levels)
levels(x) <-c(levels(x),"Viuvo")
x

#Modificando apenas 1 elemento dos levels
x <- factor(c("Solteiro","Casado","Casado","Solteiro"))
x <- factor(x, levels = c("Solteiro","Casado","Divorciado"))
x[2] <- "Divorciado"
x[3] <- "Viuvo"

levels(x) <- c(levels(x), "Viuvo")
x[4] <- "União Estável"

levels(x) <- c(levels(x), "União Estável")
x[2] <- "Solteiro"

levels(x) <- c(levels(x), "Não Casado")
levels(x)[1] <- "Não Casado"