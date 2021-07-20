# DATA FRAMES

# Definir onde vamos trabalhar
setwd("D:/Estudos")

# Importando base de dados
df <- read.csv("DataFrame.csv")

# Analisando um dataframe
df
df[1] # exibir so a 1 coluna
df$ONIBUS # traz os valores especificos desta coluna
col1 <- df[1] # criando uma coluna so com 1 das colunas do dataset
col1
col2 <- df$DIA_SEM
col2 # cria uma linha com os valores da coluna

# Tipos de dados
str(df)
summary(df) # resumos estatisticos

# Excluindo variavel
df$ONIBUS <- NULL

# Alterar tipo da variavel
df$UPS
df$UPS <- as.factor(df$UPS)
df$UPS

# Criando uma nova variavel
df$Nova <- "a" # preenche todas as linhas com 'a'
class(df$Nova)
df
df$Nova <- c(2,5,10, NA,NA,NA,NA,NA,NA) # registra novos elementos: 2,5,10 e restante NA
df$Nova
df$Nova[4:9] <- c(3,6,9) # Preencher os dados das posições de 4 a 9, com 3,6 e 9
df$Nova


# FILTRO DE VARIAVEIS
vogais <- c("a", "e","i","o","u")
vogais[3]
vogais[-3] # acessa tudo, menos o elemento da posião 3
vogais[3:5] # acessar elementos da posiçao 3,4 e 5
length(vogais)
vogais[3:length(vogais)] # Pega elementos da posiçao 3 até a ultima
vogais == 'e' # Verifica onde é 'e' e retorna TRUE
vogais[vogais=='e']
a <- c(1,2,3,4,5)
a[a>2] # elementos maiores que 2
# df[linha,coluna]
df
df[1:6] #Pega da coluna 1 a 6
df[-4] # Pega todas as colunas menos a 4
df[1,1] # Linha 1, coluna 1
df[1,1:6] # Lina 1 e elementos de 1 a 6
df[1,-4] # linha 1, mas exclui a coluna 4
df[1:3,1:6]

# Modificando o df
df <- df[c(-3,-4,-5,-6)] # exclui estas colunas
df
df$DIA_SEM[1] # 1 elemento da coluna Dia_sem
df$AUTO[2:4] # Pega elemento 2, 3, 4 da coluna Auto
df$UPS == 1 # Verifica se tem o valor 1 na coluna, se sim é TRUE, se nao é FALSE
df[df$UPS == 1,] # Exibe as linhas em que UPS = 1


