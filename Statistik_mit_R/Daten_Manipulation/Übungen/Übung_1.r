# Filtern mithilfe der Datei bankloan.csv 
# die Daten gemäß den folgenden Bedingungen,
# mit der Benutzung den "Klammern", des Subset-Befehls und des Dplyr-Pakets


bank <- read.csv("/Users/enricopirani/Foam/Statistik_mit_R/Datasets/bankloan.csv")
names(bank)
View(bank)

library(dplyr)
bank1 <- select(bank, marital,)
View(bank1)
demo3 <- filter(bank1, marital == "married")
View(demo3)

bank1 <- select(bank, marital, education )
demo2 <- filter(bank1,marital == "married" & education)
