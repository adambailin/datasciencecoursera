setwd("D:/datasciencecoursera/")

#download the file
#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv",destfile="idahoHousing.csv")

#using the fread() command load the data into an R object DT
library(data.table)
DT<-fread(input="idahoHousing.csv",sep=",")

#test DT[,mean(pwgtp15),by=SEX]
print(system.time(for(i in 1:1000) DT[,mean(pwgtp15),by=SEX]))

#test sapply(split(DT$pwgtp15,DT$SEX),mean)
print(system.time(for(i in 1:1000) sapply(split(DT$pwgtp15,DT$SEX),mean)))

#test mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)
print(system.time(for(i in 1:1000) mean(DT[DT$SEX==1,]$pwgtp15))+system.time(for(i in 1:1000) mean(DT[DT$SEX==2,]$pwgtp15)))

#test tapply(DT$pwgtp15,DT$SEX,mean)
print(system.time(for(i in 1:1000) tapply(DT$pwgtp15,DT$SEX,mean)))
