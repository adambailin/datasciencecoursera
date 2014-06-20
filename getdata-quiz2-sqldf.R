#download file
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv",destfile="getdata-data-ss06pid.csv")

#load into R object called acs
acs<-read.csv("getdata-data-ss06pid.csv")

#install sqldf package and load
install.packages("sqldf")
library(sqldf)

#test queries
sqldf("select pwgtp1 from acs where AGEP < 50")