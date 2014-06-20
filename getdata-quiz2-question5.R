setwd("D:/datasciencecoursera/")
myData<-read.fwf("getdata-wksst8110.for",widths=c(10, 9,4, 9,4, 9,4, 9,4))
print(sum(as.numeric(myData[-c(1:2),4])))