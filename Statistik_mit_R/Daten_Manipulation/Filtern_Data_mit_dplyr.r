demo <- read.csv("/workspaces/r-codespaces/docs/Statistica_con_R/demographic.csv") # nolint
require(dplyr)

# Wir verwenden den Befehl „Filter“, um unverheiratete Personen anzuzeigen. 

demo2 <- filter (demo, marital == "Unmarried")
View(demo2)

# Halten wir die Probanden nur weniger als 50 Jahre. 

demo2 <- filter (demo, marital == "Unmarried" & age < 50)
View(demo2)

# Jetzt erstelle ich ein Dataset nur mit den ersten drei Variablen

demo2 <- select (demo, age, marital, income)
View(demo2)

# Vom letzten Dataset behalte ich nur die unverheiratete Probanden unter 50 Jahren 

demo2 <- filter(demo2, marital == "Unmarried", age < 50)
View (demo2)
