#readr package
# install.packages("readr") # comment in if you need to install the package
library(readr)
?readr
library(readr)
df <- read_csv("data/titanic.csv")
View(df)

# readr package is used to read csv files
library(readxl)
#library(haven)

#importing an excel file
library(readxl)
review_references <- read_excel("data/review_references.xlsx", 1)
View(review_references)


#importing a sceond sheet
review_references2 <- read_excel("data/review_references.xlsx",2)

#write a tsv file
write_tsv(review_references2, "data/review_references2.tsv")
library(writexl)
write_xlsx(df,"data/kuch_bhi_jo_mera_dil_kare.xlsx")

#openxlsx package(has both read and write functions unlike readxl and writexl)
 install.packages("openxlsx") # comment in if you need to install the package
library(openxlsx)
?openxlsx
 
 

