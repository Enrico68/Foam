math <- read.csv("/Users/enricopirani/Foam/Statistik_mit_R/Datasets/math.csv")

names(math)
str(math)
View(math)

# Wie kann man eine nue Variable erstellen, die die Differenz zwischen den ##Beiden Vektoren aufzeichnet? # nolint: line_length_linter.
math$diff = math$grade2 - math$grade1

# Hier es wird die Variable des Durchschnitts zwischen den Stimmen berechnet.

math$avg = (math$grade1 + math$grade2) / 2


View(math)
