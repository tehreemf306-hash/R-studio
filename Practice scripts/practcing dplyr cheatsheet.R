
# ============================
# Practicing the %>% (pipe) operator
# ============================
10 %>% sqrt() %>% round(5) %>% print()

# ============================
# Practicing the paste() function
# ============================
max_hp <- max(mtcars$hp)
min_hp <- min(mtcars$hp)
print(paste("Maximum Horsepower", max_hp))
print(paste("Minimum Horsepower", min_hp))

# ============================
# Practicing summarise() from dplyr cheat sheet
# ============================
library(dplyr)

avg_mpg <- mtcars %>% summarise(avg_mpg <- median(mpg))
data()

sd_fare <- df %>% summarise(sd_fare <- sd(Fare))
max_sepal_length <- iris %>% summarise(max_sepal_length <- max(Sepal.Length))

# ============================
# Exporting dataset to Excel
# ============================
View(sleep)
library(openxlsx)
write.xlsx(sleep, "data/sleep.data.xlsx")

# ============================
# Practicing filter() vs select()
# ============================
iris %>% 
  filter(Sepal.Length > 5) %>% 
  select(Species, Sepal.Length) %>% 
  summarise(avg_sepal_length <- mean(Sepal.Length))

iris %>% 
  filter(Species == "Setosa") %>% 
  select(Species, Sepal.Length) %>% 
  avg_sepal_length <- mean(Sepal.Length) %>% 
  max(Sepal.Length)

# ============================
# Filtering examples with mtcars and iris
# ============================
View(mtcars)
mtcars %>% filter(cyl == 4)
iris %>% filter(Petal.Length > 0.5)

# ============================
# Filtering airquality dataset
# ============================
library(dplyr)
airquality %>% 
  filter(Wind > 10, Temp > 59) %>% 
  select(Ozone, Temp, Month)

# ============================
# Practicing group_by() and summarise()
# ============================
sleep %>% 
  group_by(group) %>% 
  summarise(extra_sleep = mean(extra))

# ============================
# Summarising starwars dataset (overall stats)
# ============================
View(starwars)
summarise(starwars,
          total = n(),
          unique_species = n_distinct(species))

starwars %>% 
  summarise(  # using summarise
    total = n(),                  # total rows
    unique_skin = n_distinct(skin_color) # unique skin colors
  )

# ============================
# Summarising starwars dataset by species
# ============================
starwars %>%
  group_by(species) %>% 
  summarise(total = n())
`