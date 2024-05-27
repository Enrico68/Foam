# Filtern mithilfe der Datei bankloan.csv 
# die Daten gemäß den folgenden Bedingungen,
# mit der Benutzung den "Klammern", des Subset-Befehls und des Dplyr-Pakets


bank <- read.csv("/Users/enricopirani/Foam/Statistik_mit_R/Datasets/bankloan.csv")
names(bank)
View(bank)
library(dplyr)

#a. Nur verheiraten Personen 
bank1 <- select(bank, marital,)
View(bank1)
demo3 <- filter(bank1, marital == "married")
View(demo3)

#b. Verheiratete Personen mit Sekundär- und Tertiärbildungsniveau 
bank1 <- select(bank, marital, education,)
View(bank1)
demo2 <- filter(bank1,marital == "married" & (education == "primary" | education == "tertiary" ))
View(demo2)

#c. Nur Probanden mehr als 40 Jahren alt

bank1 <- filter(bank, age > 40 )
View(bank1)

#d. Nur Personen, die einen Kredit und einen Saldo ¨ber 1000 haben 

bank2 <- select(bank, balance, loan,)
View(bank2)
bank3 <- filter(bank2,  balance > 1000)
        View(bank3)


## Übung 2

#a Codiere die Variable ehelich wie folgt: 
# verheiratet -1, ledig -0
