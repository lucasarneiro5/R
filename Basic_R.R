# Primeiro c�digo em R
#--------------------------------------
# 1�) VARI�VEIS:

a <- 10
b = 5
a + b -> c
c
d <- "Lucas"
"Camila" -> e
#--------------------------------------
# 2�) FUN��ES:

?C
f <- c(d,e)
f

g = c("Lucas55", "Camila")
g

h <- c(10,15,20)
h
h[1]
?summary
summary(h)
summary(c)

# Fun��o de um pacote nao padrao do R
?str_c
install.packages("stringr")

# Importando o pacote
library(stringr)
Nome <- "Lucas"
Sobrenome <- "Vieira"

Nome_completo = str_c(Nome, " ", Sobrenome)
Nome_completo
#--------------------------------------
# 3� OPERA��ES

# Subtra��o e Soma
10-8
10+8
# Divisao e Multiplica�ao
4/2
4*2
# Potencia
4**2
4^2
# Compara��es
5 == 5
5 != 6
4 > 2
2 < 4
5 >= 5
5 <= 6
6 == 6 & 7 == 7
6 == 6 | 7 == 8
#--------------------------------------
# 4�) Dados Num�ricos

salario <- 3450.89
hora <- 220

sh <- salario/hora
sh
sh_inteiro = as.integer(sh) # transforma para inteiro
sh_inteiro
sh_arredondado = round(sh) # arredonda o numero
sh_arredondado

# Armazenamento de Fatores
cargaHoraria = c(220,220,150,100,100)
summary(cargaHoraria)

CargaHoraria <- as.factor(cargaHoraria)
summary(CargaHoraria)


#--------------------------------------
# 4) LOOPS 
# Criando um dataframe para trabalhar
idades<-c(25,30,24,29,31,12)
nomes<-c("Joao", "Caina", "Maria", "Leo", "Lia", "Enzo")
df <- data.frame(nomes,idades)
df

# Condicional IF
if (5 == 5) 6 + 6
if (5 == 6) 6 + 6 else "Condi�ao nao atendida"
if (5 == 6){
  6+6
} else {
  "Condi��o nao atendida"
  }

if(df$idades[df$nomes=="Joao"]> df$idades[df$nomes=="Caina"]){
  "Mais velho: Joao"
} else {
  "Mais velho: Caina"
}

#-------
# FOR
for (i in idades){
  print(i)
}

v <- 0
for (i in df$idades){
  if (i > v) {v <- i}
}
df$nomes[df$idades == v]

#-------
# WHILE: Enquanto � verdade, fa�a isso
x <- 0
while(x < 10){
  print(x)
  x <- x+1
}

# Ex. que permite somar as idades at� que fiquem menor do que 100
y <- 0
x <- 0
cont <- 0
idades100 <- 0
while (y <- 100){
  cont <- cont+1
  idades100[cont] <- idades[cont]
  x <- x+idades[cont]
  y<-x+idades[cont+1]
}

idades
idades100
sum(idades100)



#--------------------------------------
# 5) FUN��ES
soma <- function(y){
  x<-0
  for (i in y){
    x <- x + i
  }
  print(x)
}
# Aplicando a fun�ao para a lista 'a' e 'b'
a <- c(423,464,69,519,123,258)
b <- c(51,36,123,98,23,37,63,3)
soma(a)
soma(b)
