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
names(df) <- c("Marca", "Carro", "Ano_Modelo", "Combustivel", "Preço")

# Renomear o ano_modelo = 32000 para o "zero KM"
df$Ano_Modelo[df$Ano_Modelo==32000] <- "Zero KM"
df$Ano_Modelo <- as.factor(df$Ano_Modelo)

summary(df$Ano_Modelo)
str(df$Ano_Modelo)

# Transformar a coluna Preço em numerico
df$Preço1 <- as.numeric(df$Preço)
summary(df$Preço1)
df$Preço1 <- NULL #retirando valoreas NAN

# Padronizar os valores da coluna 'Preço", retirando '$', ',', espaço, etc.
?gsub
df$Preço1 <- gsub("R\\$|\\.| ","", df$Preço)
df$Preço1 <- NULL
# Trocando ponto por virgula
df$Preço <- gsub("R\\$|\\.| ","",df$Preço)
summary(df$Preço)

# Transformando em numerico
df$Preço1 <- as.numeric(gsub("\\.",".",df$Preço))
summary(df$Preço)
str(df$Preço)


write.table(df, file = "fipe_Jun2018_transformada.csv", row.names = FALSE, sep=',', fileEncoding = "UTF-8")
