# Primeiro código em R
#--------------------------------------
# 1ª) VARIÁVEIS:

a <- 10
b = 5
a + b -> c
c
d <- "Lucas"
"Camila" -> e
#--------------------------------------
# 2ª) FUNÇÕES:

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

# Função de um pacote nao padrao do R
?str_c
install.packages("stringr")

# Importando o pacote
library(stringr)
Nome <- "Lucas"
Sobrenome <- "Vieira"

Nome_completo = str_c(Nome, " ", Sobrenome)
Nome_completo
#--------------------------------------
# 3ª OPERAÇÕES

# Subtração e Soma
10-8
10+8
# Divisao e Multiplicaçao
4/2
4*2
# Potencia
4**2
4^2
# Comparações
5 == 5
5 != 6
4 > 2
2 < 4
5 >= 5
5 <= 6
6 == 6 & 7 == 7
6 == 6 | 7 == 8
#--------------------------------------
# 4ª) Dados Numéricos

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
