# Mit dem Befehl "subset" verwende ich einen Kategorifilter mit einer Variablen 

demo <- read.csv("/workspaces/r-codespaces/docs/Statistica_con_R/demographic.csv") # nolint

demo2 <- subset(demo, marital == "Married")
View(demo2)

# Nehmen wir nun an, wir wählen Verheiratete aus, die älter als 35 Jahre sind

demo2 <- subset(demo, marital == "Married" & age > 35)

View(demo2)

# Wir wählen im Dataset die Variablen Alter, Familienstand und Einkommen aus

demo2 <- subset(demo, marital == "Married" & age > 35, select = c(1:3))
View(demo2)

# Mit diesem Befehl entferne ich die Variablen 4 bis 8 und 8 aus dem Dataset 

demo2 <- subset(demo, marital == "Married" & age > 35, select = -c(4:6, 8))
View(demo2)
