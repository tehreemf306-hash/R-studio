##--practicing----
library(tidyverse)
library(lubridate)
library(openxlsx)

df %>% summarize(cyln= n_distinct(df$cyl))
df %>% summarize(mean=mean(cyl))                 
kuch_bhi <- df %>% summarize(patanaikya=IQR(cyl)) 
mincyl <- mtcars %>% summarize(mincyl=min(cyl))
sdcyl <- mtcars %>% summarize(sdcyl=sd(cyl))
nmtcars <- mtcars %>% summarize(tcars= n())
#single code that runs this
mtcars %>% summarize(avgmpg=mean(mpg),
                     medianmpg=median(mpg),
                     totalmpg=n())

#LOAD TITANIC
library(readxl)
df <- read_xlsx("data/titanic.xlsx")

titanic <- read_excel("data/titanic.xlsx")



df %>% 
  group_by(SibSp) %>% 
  summarize(mean_fare = mean(Fare)) %>% 
  ungroup()
df %>% group_by(Survived) %>% 
  summarize(survivedmoney=mean(Fare)) %>% 
  ungroup
df %>% filter(Embarked=="S") %>% 
  summarize(mean_fare=mean(Fare, na.rm=TRUE))
avg_fare_class<- df %>% group_by(Pclass) %>% 
    summarize(avg_fare_per_class=mean(Fare, na.rm=TRUE))
class(df)

# i want to only check females that survived and were in 1st class
df %>% 
    filter(Pclass == 1,Sex=="female",Survived=="1") %>% 
?writexsxl

#task:seperate  female and male data from titanic
df_female<- df %>% filter(Sex=="female")
df_male<- df %>% filter(Sex=="male")

#plot the data of 

        ##lets play with nycflights13 package----

library(nycflights13)
data(package = "nycflights13")#R lists all the datasets available within the nycflights13 package.
#nycflights is a package with datasets in it.that ned to be loaded

#assigning flights dataset to df 
flights <- flights
airports <- airports
airlines <- airlines
planes <- planes
weather <- weather 

# save the flight data before 15 january  and then into excel file
flights %>% filter(month==1, day<=15) %>% 
  write.xlsx("data/janflights_before_15th.xlsx") 

# assignment save data of 1st 15 days of September
flights %>% filter(month==9,day<=15) %>% 
  write.xlsx("data/1st_15_days_of_september.xlsx") #readxl function

#using the %in% operator

flights %>% filter(dep_delay %in% dep_delay>=15)
flights %>% filter(month %in%c(4,5,7))       
  





