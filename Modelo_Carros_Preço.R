# MACHINE LEARNING

# Definindo area de trabalho
setwd("C:/Users/lucas/Downloads")

# Base de dados
df <- read.csv("fipe_Jun2018.csv", header = TRUE, encoding = "UTF-8")
df
str(df) # caracteristicas do dataset

# Excluir colunas do dataset
df$X <- NULL
df$price_reference <- NULL

# Renomear variaveis para pt
?names
names(df)
names(df) <- c("Marca", "Carro", "Ano_Modelo", "Combustivel", "Pre�o")

# Renomear o ano_modelo = 32000 para o "zero KM"
df$Ano_Modelo[df$Ano_Modelo==32000] <- "Zero KM"
df$Ano_Modelo <- as.factor(df$Ano_Modelo)

summary(df$Ano_Modelo)
str(df$Ano_Modelo)

# Transformar a coluna Pre�o em numerico
df$Pre�o1 <- as.numeric(df$Pre�o)
summary(df$Pre�o1)
df$Pre�o1 <- NULL #retirando valoreas NAN

# Padronizar os valores da coluna 'Pre�o", retirando '$', ',', espa�o, etc.
?gsub
df$Pre�o1 <- gsub("R\\$|\\.| ","", df$Pre�o)
df$Pre�o1 <- NULL
# Trocando ponto por virgula
df$Pre�o <- gsub("R\\$|\\.| ","",df$Pre�o)
summary(df$Pre�o)

# Transformando em numerico
df$Pre�o1 <- as.numeric(gsub("\\.",".",df$Pre�o))
summary(df$Pre�o)
str(df$Pre�o)


write.table(df, file = "fipe_Jun2018_transformada.csv", row.names = FALSE, sep=',', fileEncoding = "UTF-8")
