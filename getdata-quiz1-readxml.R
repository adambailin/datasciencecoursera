setwd("D:/datasciencecoursera/")

#download the file
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml",destfile="baltiRest.xml")

#How many restaurants have zipcode 21231
library(XML)
doc<-xmlTreeParse("baltiRest.xml",useInternal=TRUE)
zipcode<-xpathSApply(doc,"//zipcode",xmlValue)
print(length(zipcode[zipcode[]==21231]))