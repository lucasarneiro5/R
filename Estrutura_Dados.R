# ESTRUTURAS DE DADOS

# VETOR
h <- c(10,15,20)
is.vector(h)
#--------------------------------------


# LISTA
a <- c(1,2,3,4,5)
is.list(a) # Nao é uma lista
is.vector(a)

b <- c(1,"2","3","4",5)
b <- as.numeric(b) # transforma em numerico
b
c <- c(1, "a", 2, "3")
c <- as.numeric(c) # as strings "" viram Nulos(NA)
c
mode(c) #tipo

d <- list(10,6,"2",8)
is.list(d)  
str(d) # Tipos de elementos dentro da lista

e <- list(c(10,6,51,5), "2",8)
str(e)
e[[1]][1] # Pega o primeiro elemento
e[[1]] # Pega a 1 lista
#--------------------------------------


# MATRIZ
m <- matrix(1:9, nrow = 3)
m
mode(m) # tipo das variaveis da matriz
class(m)
m[1,3] # Acessar o elemento da linha 1 e coluna 3 = [linhas, coluna]
m[1,3] <- "a" # Altera o valor desta posição para "a" e altera todo o modo da matriz
m
mode(m)
