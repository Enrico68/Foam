## Ich erstelle einen Dataset basierend auf der Datei "demographic.csv"

demo <- read.csv("/workspaces/r-codespaces/docs/Statistica_con_R/demographic.csv") # nolint
View(demo)

## Wie war die Variablen im Dataset sehen können und welche Art von Variablen sind vorhanden? # nolint

str(demo)

# Es wird ein Dataset nur mit der Geschlechtsvariablen erstellt

demo2 <- demo[demo$gender == "Female", ]

View(demo2)

# Jetzt wird ein Dataset erstellt, dessen Einkommensvarible größer als 100 ist

demo2 <- demo[demo$income > 100,]
View(demo2)

## Ich erstelle ein Dataset mit einem Einkommen über 100, in dem
## nur die Variablen Alter, Einkommen, Geschlecht und Ruhestand ## angezeigt werden.  # nolint: line_length_linter.

demo2 <- demo[demo$income > 100, c (1,3,7)]
View(demo2)

# Was ist, wenn ich die Variable Alter, Geschlecht, Ruhestand weglassen möchte?

demo2 <- demo[demo$income > 100, -c(1,3,7)]

View(demo2)

# Was ist, wenn ich ein Dataset nur mit ein Variable und Kondition erstellen möchte? # nolint

demo2 <- demo[demo$gender == "Female" & demo$income > 100,] # nolint
View(demo2)
