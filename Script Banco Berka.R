#Importar os dados dentro do R (depende onde o arquivo esta)

# Obs: Banco de dados Trans é pesado.

account <- read.csv("C:/Users/cesar/Desktop/Banco Berka/account.asc", sep=";")
View(account)
card <- read.csv("C:/Users/cesar/Desktop/Banco Berka/card.asc", sep=";")
View(card)
client <- read.csv("C:/Users/cesar/Desktop/Banco Berka/client.asc", sep=";")
View(client)
disp <- read.csv("C:/Users/cesar/Desktop/Banco Berka/disp.asc", sep=";")
View(disp)
district <- read.csv("C:/Users/cesar/Desktop/Banco Berka/district.asc", header=FALSE, sep=";")
View(district)
loan <- read.csv("C:/Users/cesar/Desktop/Banco Berka/loan.asc", sep=";")
View(loan)
order <- read.csv("C:/Users/cesar/Desktop/Banco Berka/order.asc", sep=";")
View(order)
trans <- read.csv("C:/Users/cesar/Desktop/Banco Berka/trans.asc", sep=";")
View(trans)

# Pacotes:

library(tidyverse)

#limpeza dos dados

#Banco card: 
#Variavel Dummie: Type, devemos converte-la em factor:
card$type <- as.factor(card$type)

#Arrumar a data

card$issued <- as.Date(paste(card$issued), "%y%m%d")

#banco Client:

#Arrumar a data de nascimento


#disp:

#Transformar a a coluna type em dummie

disp$type <- as.factor(disp$type)


#Gráfico de quatidades:
p1 <- ggplot(disp, aes(x = type))
p1 <- p1 + geom_bar(aes(y = (..count..)/sum(..count..),fill=type))
p1 + scale_y_continuous("percent")



