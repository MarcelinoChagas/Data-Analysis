getwd()
setwd("/mnt/arquivos/UFRPE/AnaliseDeDados/Meu RCurso")
install.packages("grid")
library(grid)

# Questao 01
#Atribua o valor 133 para X e o valor 36 para Y. Em sequência, adicione a soma de X e Y a Z. 
#Depois, calcule a raiz quadrada de Z e o logaritmo natural do resultado da raiz quadrada. 
#Por fim, arredonde o resultado para zero dígitos.  Qual o valor resultante ? Note que a resposta é um número inteiro.
x <- 133
y <- 36
z <- sum(x,y)
round(log(sqrt(z)),0)

# Questao 02
# 0,1, 1, 2, 3, 5, 8
#Pesquise a respeito da “sequência de Fibonacci”  (a sequência inicia com ZERO) e obtenha os cinco primeiros números dessa sequência.
#Qual o logarítimo natural da soma desses cinco números? (Observação: use a função round() para arredondar
#a resposta de modo que ela tenha apenas três casas decimais)
fibonacci <- function(x){
fib = c(0,1)
for(i in 3:x){
  fib[i] = fib[i-1] + fib[i-2]
}
return(fib)
}
fibonacci(5)
resul <-sum(fibonacci(5))
round(log(resul),3)

# Questao 03
#Dada a função f(x) = sin(x) + x. Calcule o valor da derivada de primeira ordem de f(x) quando x=2.
#(Observação: use a função round() para arredondar a resposta de modo que ela tenha apenas três casas decimais)
var <- deriv(x ~ sin(x) + x, "x",2)
var
round(1.99939082702, 3)
deg 

#Questao 04
#Calcule o factorial de 10. Com o resultado em mãos, calcule o logaritmo de base 10 desse resultado.
#(Observação: use a função round() para arredondar a resposta de modo que ela tenha apenas duas casas decimais).

qo4 <- factorial(10)
resul_qo4<- log10(qo4)
round(resul_qo4, 2)

# Resultado em 1 só linha
round(log10(factorial(10)),2)

#Questao 05
#Suponha que a velocidade da luz seja  c = 300000000 m/s. A equação da equivalência massa-energia de Einstein é dada
#como E=m*c^2, sendo ‘m’ a massa e ‘c’ a velocidade da luz. Calcule o logarítmo natural do valor da energia originada
#de um objeto de 10Kg. (Observação: use a função round() para arredondar a resposta de modo que ela tenha apenas duas casas decimais)

E <-10 * 300000000^2
round(log(E),2)

# Resultado em 1 só linha
round(log((10*300000000^2)),2)

#Questao 06
#Crie um vetor de dados com o seguinte comando da linguagem R:  v<-c(2,5,7,8,9) . 
#Agora tome o seguinte polinômio f(x) = x^3 + x^2 + x. Calcule a média dos valores gerados pela função f(x)
#quando você substituir a variável ‘x’ do polinômio pelo vetor ‘v’.

v <- c(2,5,7,8,9)
qo6 <- v^3 + v^2 + v
result_qo6 <- mean(qo6)
result_qo6


#aux! <- 1
#1contador <- 1
teste_121 <- 1
#$ <- 1
c-ccc123 <- 1
teste_ <- 1

sum((10:20)^2)
sum((10:20)*2)
