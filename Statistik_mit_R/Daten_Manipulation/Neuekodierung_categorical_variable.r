demo <- read.csv("/workspaces/r-codespaces/docs/Statistica_con_R/demographic.csv") # nolint
View(demo)

# Ich mochte die Geschlechtsvariable als männlich = 1 und weiblich = 0 umwandeln 

demo$gender2[demo$gender == "Male"] = "1"
demo$gender2[demo$gender == "Female"] = "2"
View(demo)

require(plyr)

# Erstelle ich eine neue Variable "gender3"

demo$gender3 = revalue(demo$gender , c ("Male" = "1", "Female" = "2"))
View(demo)

# Du kannst die Variable mit demselben Variablennamen codieren

demo$gender = revalue(demo$gender , c("Male" = "1", "Female" = "2"))
