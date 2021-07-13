# Primeiro código em R

# 1ª) VARIÁVEIS:

a <- 10
b = 5
a + b -> c
c
d <- "Lucas"
"Camila" -> e

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

