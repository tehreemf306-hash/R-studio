# installing packages 

#setting up repositories
setRepositories()
# install pkg from CRAN  

## 1. Packages for Data Loading and data writing ----
install.packages("readxl")
install.packages("readr")
install.packages("openxlsx")
install.packages("writexl")
install.packages("writexls")

## 2. Packages for Data Manipulation or Data Wrangling/Handling ----
install.packages("dplyr")

install.packages("tidyverse")
library(tidyverse)

# lubridate
install.packages("lubridate")


#loading builtin data
data()               # opens the list of datatsets
df1 <-iris
df2 <- cars 

View(mtcars)
data(mtcars)#adds data to environmemt
remove(mtcars) #removes the datsets from env

 # write data in csv/excel file (writexl) is a better package than WriteXLS 
library(writexl)
write_xlsx(mtcars, "data/mtcars.xlsx")


## 3. Packages for Data Visualization ----

install.packages("ggplot2")
library("ggplot2")

#make a simple graph 
df <- mpg #data
ggplot(df, aes(x=model,y=year)+#aes(x and y axis)
 geom_point()) #type of geometry o graph

#make another plot example
ggplot(df, aes(x=model,y=year, color=class)+
 geom_point())#for static plots
 
#PLOTLY package (for interactive plots)
install.packages("plotly")
library("plotly")
#make a plotly plot 
plot_ly(data=df, x=~model, y=~year, color=~class, type="scatter", mode="markers")

#ANIMATED PLOTS
install.packages("gganimate")
library("gganimate")

#publication Ready graph
install.packages("ggpubr")
library("ggpubr")


#packages for colours
install.packages("RColorBrewer")
#always use a color blind palette so everybody can benefit from it

# install heatmaps packages
install.packages(heatmaply)
#3D viz packages
plotly, rgl 



