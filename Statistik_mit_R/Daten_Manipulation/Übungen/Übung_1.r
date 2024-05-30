# Filtern mithilfe der Datei bankloan.csv 
# die Daten gemäß den folgenden Bedingungen,
# mit der Benutzung den "Klammern", des Subset-Befehls und des Dplyr-Pakets


bank <- read.csv("/Users/enricopirani/Foam/Statistik_mit_R/Datasets/bankloan.csv")
names(bank)
vd(bank)
library(dplyr)
library(rvisidata)

#a. Nur verheiraten Personen 
bank1 <- select(bank, marital,)
vd(bank1)
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

require(plyr)

bank <- read.csv("/Users/enricopirani/Foam/Statistik_mit_R/Datasets/bankloan.csv")
names(bank)
bank$marital1 = revalue(bank$marital, c("married"="1", "single" = "2"))



# Umkodieren Sie das variable loan  wie folgt: ja – 1, nein – 0A

bank$loan1 = revalue(bank$loan, c("yes" = "1", "no" =  "0"))
bank$balance1 = cut(bank$balance, breaks = c(-Inf, 500, 1000, Inf), 
                    labels = c ("1", "2", "3"))
bank2 <- bank[order(bank$age),]
bank2 <- bank[order(-bank$balance),]
bank1 <- bank[order(bank$balance, -bank$age),]
bank1

# Nel file di dati brand.csv, crea una nuova variabile 
# calcolando la media delle seguenti variabili: qualità, problemi e pubblicità.

brand <- read.csv("~/Foam/Statistik_mit_R/Datasets/brand.csv")
brand$avg <- (brand$quality+brand$problems+brand$ads)/3
brand

