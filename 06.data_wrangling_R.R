#load packages for this---
library(tidyverse)
library(lubridate)
library(readxl)

#check the structure of the data
str(mtcars)
#using dplyr
tibble(df)
summarise(df)

#packages
library(tidyverse)
install.packages("nycflights13")
library(nycflights13)
df<-flights
data(package = "nycflights13")
library(writexl)

#data_viewing
airlines

str(iris)
tibble(iris)
glimpse(df)
??glimpse

# determining_data_shape
dim(df)
nrow(df)
ncol(df)
#saving_this_in_csv
jan_flights13<-filter(df,month==1) 
  write.csv(jan_flights13, "data/jan_flights13.csv")
#save_into_excel
write_xlsx(jan_flights13,"data/jan_flights13.xlsx")

#Assignement:save the data for first 15 days of september
df %>%filter(month==9, day<=15) %>% 
  write.csv("data/first_15days_sept.csv")
#using the %in% operator
df %>% filter(carrier %in% c("EV","AA","B6"))
df %>% filter(!carrier %in% c("EV","AA","B6"))

#using the builtin set to practice %in% operator
view(HairEyeColor)
library(dplyr)

  df_haireye<-as.data.frame(HairEyeColor)
  filter(df_haireye,!Hair %in% c("Red", "Blond"), Sex %in% c("Female"))
  filter(df_haireye, Hair %in% c("Black"), Sex %in% c("Male"))
df %>% filter(month %in% c(10,11,12) & day<=15)
df %>% filter(month  %in% c(10,11,12) , day <=15)
df %>% filter(month %in% c(1:5) & day %in%c(1:15)) %>%
    write_xlsx("data/flights_m1-5_first_15days.xlsx")
df %>%filter(month %in% c(10,11,12) & day==15)

#filter flights having delay of more than 120 mins
library(dplyr)
library (tidyverse)
df %>% filter(dep_delay >120 | arr_delay >120) %>% 
  write_xlsx("data/flights_delay>120.xlsx")

 df %>% filter(dep_time==500 | arr_time==500) %>%
  write.csv("data/flights_dep_arr_5am.csv")arrival time of 5 and dep time of 5
df %>% filter(dep_time==500, arr_time==500) %>% 
  write_xlsx("data/flights_having_arrival_time_of_5")

#filter_flight_of_carrier_AA_delayed_60MINS_or_longer
df %>% filter(carrier=="AA", dep_delay>=60) %>% 
  write_xlsx("data/filter_flight_of_carrier_AA_delayed_60MINS_or_longer.xlsx")

#percentage of missing values
is.na(df)#brings_alltrue&false_values as an object for missisng entriesfrom all individual cells
sum(is.na(df))# sums all the rows that have got a missing value
nrow(df)#finds total no of rows in df
sum(is.na(df))/nrow(df)*100
sum(is.na(df$tailnum, df$dep_time))
