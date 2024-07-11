#time series is any data set where the values are measured at different points in time.
mydata<-read.csv("C:/Users/dell/Desktop/R programs/opsd_germany_daily.csv",header=TRUE,row.names="Date")
mydata
head(mydata)
tail(mydata)
View(mydata)
str(mydata)
summary(mydata)

#withoutt parsing the dta format
mydata2<-read.csv("C:/Users/dell/Desktop/R programs/opsd_germany_daily.csv",header=TRUE)
mydata2

#convert into date format
x<-as.Date(mydata2$Date)
head(x)
class(x)
str(x)

#creating your month,day columns
year<-as.numeric(format(x,"%Y"))
head(year)

month<-as.numeric(format(x,"%m"))
head(month)

day<-as.numeric(format(x,"%d"))
head(day)

#add columns to the existing dataset
mydata2<-cbind(mydata2,year,month,day)
head(mydata2)
