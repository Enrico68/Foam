setwd("/Users/enricopirani/Foam/Statistik_mit_R")
demo <- read.csv("Datasets/demographics.csv")

## Wie kann man einen Datensatz sortieren?

## Es wird jedes Mal ein neue Datensatz , demo2, erstellt 
## Der Datensatz wird nach Einkommen sortiert

demo2 <- demo[order(demo$income),]
View(demo2)

## Hier absteigend sortieren wir den Datensatz 

demo2 <- demo[order(-demo$income),]
View(demo2)

## Hier kann man nach dem Einkommen und Alter sortieren 

demo2 <- demo[order(demo$income, demo$age),]
View(demo2)


demo2 <- demo[order(demo$income, -demo$age),]
View(demo2)
