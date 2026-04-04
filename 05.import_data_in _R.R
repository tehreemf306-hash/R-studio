            #readr package s used to READ and WRITE csv,tsv,cvs2,etc files
# install.packages("readr") # comment in if you need to install the package
library(readr)
?readr 
library(readr)#readr cannot import excel file
df <- read_csv("data/titanic.csv")
View(df)

#write a tsv file(part of readr)
write_tsv(review_references2, "data/review_references2.tsv")



#importing excel files ----
# install.packages(readxl) comment in if u dont have package
library(readxl)
review_references <- read_excel("data/review_references.xlsx", 1)
View(review_references)
# example 
library(readxl)
?read_excel

#importing a second sheet
review_references2 <- read_excel("data/review_references.xlsx",2)

# Note: You can use either the sheet (number) or the sheet name (string)
alisalman <- read_excel(
  "data/Resources Drive Catalogue.xlsx", 
    "Aclands Atlas of Human Anatomy") #its better to use sheet name 


#openxlsx package(has both read and write functions unlike readxl and writexl)
#install.packages("openxlsx") # comment in if you need to install the package
library(openxlsx)
?openxlsx
read.xlsx()
write.xlsx()


#Importing STATA/SPSS file 
library(haven)



#using writexl
library(writexl)
?write_xlsx
write_xlsx(alisalman,"data/Aclands Atlas of Human Anatomy.xlsx")



 

