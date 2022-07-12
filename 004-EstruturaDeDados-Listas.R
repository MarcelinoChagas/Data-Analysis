#Listas
myList <- list(Nome="Ermeson",CPF=0000000, resp=c(TRUE,FALSE,TRUE))
myList

#visualizar estrutura da lista
str(myList)


#Acessando um elemento da lista

myList[2]

myList[c(T,F,T)]

myList$Nome

myList[[3]][3]

#Alterando elementos das listas
myList[2] <- 1111111
myList

myList[[3]][2] <-TRUE
myList[3]

#Exemplo do Uso de Listas

AVRuralinda <- list(Nome="João", CPF=0000000, Def=c("Respeito", "Compromisso",
                                                    "Amizade"))
str(AVRuralinda)

#Nomes

names(AVRuralinda)

#Acessar elementos

AVRuralinda$Nome

AVRuralinda[3]

AVRuralinda[[3]][3]

#Alterar elementos

AVRuralinda[[3]][3] <- "Amor"

#Deletar elementos

AVRuralinda[2] <- NULL

#Adicionar elementos

AVRuralinda$CPF<-1111111

#Unlisting

x<-unlist(AVRuralinda)
