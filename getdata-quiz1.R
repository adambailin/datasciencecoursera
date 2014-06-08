setwd("D:/datasciencecoursera/")

#download the file
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv",destfile="idahoHousing.csv")

#read in the file
idahoHousing<-read.csv("idahoHousing.csv")

#get houses worth $1m+ i.e. VAL==24 (see https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf)
houses1m<-idahoHousing[idahoHousing$"VAL"==24,"VAL"]

#remove missing values and count the number of values
print(length(houses1m[!is.na(houses1m)]))