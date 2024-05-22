## wie man eine kontinuierliche Variable in einen Faktor umkodiert

## Wir wollen eine kategoriale Variable wie folgt erstellen:
## Personen mit einem Einkommen von weniger als 200 --> niedriges Einkommen 
## Personen mit einem Einkommen über 200 --> hohen Einkommen 

## Beginen wir mit dem Ausmachen des Datasets

demo <- read.csv("/Users/enricopirani/Foam/Statistik_mit_R/Datasets/demographics.csv")
demo$incat[demo$income > 200] = "Niedriges Einkommen"
demo$incat[demo$income < 200] = "Hohen Einkommen"
View(demo)

## Jetzt machen wir drei Groupe mit dem Variable Einkommen 
## Niedriges Einkommen  - weniger als  150
## Mittel Einkommen - zwischen 150 und 300
## Hohen Einkommen - 300 und mehr 
## So haben wir zwei Schnittpunkte: 150 und 300 

demo$incat2 = cut(demo$income, breaks = c(-Inf, 150, 300, Inf), labels=c("Niedrigs Einkommen", "Mittel Einkommen", "Hohen Einkommen"))
View(demo)
