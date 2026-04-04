#GGPLOT2 practice----

# seeing the avail datasets
library(ggplot2)
ggplot(economics, aes(date, unemploy)) +
  geom_line() 
# adding a title
ggplot(economics, aes(date, unemploy)) +
  geom_line() +
  ggtitle("Unemployment over time") +
  xlab("Date") +
  ylab("Number of unemployed")
ggplot(mpg, aes(cty)) +
geom_histogram()
ggplot(mpg,  aes(displ, hwy, shape = drv))+
  geom_point()
library(ggplot2)
ggplot(mpg,  aes(displ, hwy, size = cyl))+
  geom_point()
  
  
ggplot(mpg, aes(displ, hwy)) + geom_point(aes(colour = "blue"))
ggplot(mpg, aes(displ, hwy)) + geom_point(colour = "blue")


ggplot(mpg,  aes(displ, hwy, shape =trans))+
  geom_point()

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_wrap(~city)
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_wrap(~class)


library(ggplot2)
ggplot(mpg, aes(displ, cty)) + # Or whatever your aes mappings are
  geom_point() +
  facet_wrap(~ cyl) # Make sure it's ~ followed by the variable name, no quotes around ~class


#smoothing scatter plot
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth()

#packages for data visualizations-----

#Install plotly
install.packages("plotly")
library("plotly")

# packages for colour palette
install.packages("RColorBrewer")
#gganimate 
install.packages("gganimate")


#ggpubr
install.packages("ggpubr")


#d3heatmap- (not available on recent rstudio versions)
install.packages("d3heatmap") #get from ghub

#heatmaply
install.packages("heatmaply")

#rgl for 3D plots
install.packages("rgl")

#leaflet for Maps
install.packages("leaflet")

# dygraphs for time series
install.packages("dygraphs")

#Gwalkr
install.packages("Gwalkr")

#Data handling packages----
#lubridate 
install.packages("lubridate")



#package for data reporting-----
#markdown 
install.packages("rmarkdown")
#shiny
install.packages("shiny")


##packages for systematic review and Meta-analysis----
#meta
install.packages("meta")
#metafor
install.packages("metafor")
#devtools
install.packages("devtools")
devtools::install_github("MathiasHarrer/dmetar")
#


