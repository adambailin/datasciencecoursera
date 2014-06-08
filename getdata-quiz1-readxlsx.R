setwd("D:/datasciencecoursera/")

#download the file
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx",destfile="natGas.xlsx")

#Read rows 18-23 and columns 7-15 into R and assign the result to a variable called dat
library(xlsx)
dat<-read.xlsx(file="natGas.xlsx",sheetIndex=1,rowIndex=18:23,colIndex=7:15)

#print the value of sum(dat$Zip*dat$Ext,na.rm=T)
print(sum(dat$Zip*dat$Ext,na.rm=T))
