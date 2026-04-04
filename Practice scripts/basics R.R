 # set respositories
setRepositories()

df<- read_xl
dice
1 + 1
sqrt(2)
x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
## -1.0 -0.8 -0.6 -0.4 -0.2  0.0  0.2  0.4  0.6  0.8  1.0
  
)
y <- x^3
y
## -1.000 -0.512 -0.216 -0.064 -0.008  0.000  0.008
##  0.064  0.216  0.512  1.000
qplot(x, y)
library(ggplot2)
roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}
roll()
roll
replicate(101, roll())
rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)
library(ggplot2)
?roll
?sample
??r




roll()

habshi<-c(34,45,67,23,21,2209)
length(habshi)

my_string <-c("x", "y", "z")
print(my_string)


library(readxl)
NR_references <- read_excel("data/NR references.xlsx")
View(NR_references)

df<-read_excel ("data/NR references.xlsx")
View(df)


install.packages("openxlsx")
library(openxlsx)


data(iris)
UKgas_df <- as.data.frame(UKgas)
data(iris)

data(UKgas)
write_xlsx(iris, "data/iris.xlsx")
?openxlsx()
library(ggplot2)

install.packages("ggpubr")
library(ggpubr)
library(tidyverse)

library(ggplot2)
data()
View(ToothGrowth)
df<- ToothGrowth
ggplot(data = df, aes(x = supp, y = dose)) +
  geom_point()


ggplot(df, aes(x = dose, y = len)) +
  geom_point() +
  labs(title = "Tooth Length vs. Dose",
       x = "Dose (mg)",
       y = "Tooth Length") +
  theme_minimal()
