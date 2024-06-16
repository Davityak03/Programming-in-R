#A data frame is used to store the data in the form of table
#function data.frame is used to create a data frame
#Example
BMI<-data.frame(gender=c("Male","Male","Female"),height=c(152,171.5,165),wieght=c(81,93,78),Age=c(42,38,26))
print(BMI)

#tells about the structure of data frame
str(BMI)

#Accessing any part of the data frame
BMI
BMI[3,2]
BMI[3,"height"]
BMI[3,]#for 3rd row
BMI[3]#for 3rd column 

#getting subset of the data frame in the form of data frame 
df<-BMI[c(2,3),c("height","Age")]
df
df[[1]]#a vector is produced
df$height# a vector is produced 
df[1]# a data frame is produced

#extending the data frame
#Adding a new column
diet<-c("High","High","Medium")
BMI$diet<-diet#or BMI[["diet"]]<-diet
BMI

#adding a new row in the data frame
l<-data.frame(gender="Male",height=134,wieght=100,Age=56,diet="very high")
BMI<-rbind(BMI,l)
BMI

#binding of data frame 
l<-data.frame("hello","to","world")
cbind(BMI,l)

#sorting of data frame according to a column
sort(BMI$height)

##################
#check the list ofpre loaded dataset 
data()
data(AirPassengers)
head(AirPassengers)
data(iris)
head(iris)
View(iris)
View(state.x77)
View(USPersonalExpenditure)
tail(USPersonalExpenditure)

#to check the statistical summary of the dataset
summary(iris)

#to check the structure of a dataset
str(iris)

#creating a dataframe using data.frame() function 
days<-c("Mon","Tue","Wed","Thu","Fri")
days
temp<-c(25.6,30.1,45,37.3,41.2)
temp
rain<-c(TRUE,TRUE,FALSE,FALSE,TRUE)
df<-data.frame(days,temp,rain)
print(df)
summary(df)
str(df)

#Dataframe Indexing 
df[1,]#extract the first row
df[,2]#extract the second column

#selecting using column names
df[,"temp"]#extracts all the temperature values
df[2:4,c("days","temp")]#extract the 2nd,3rd and 4th rows for days and temps

#we use $ sign if we want all the values of a particular column
df$days
df$rain

#accessing the columns using brackets rathter than the $ sign 
df["temp"]
df["rain"]

subset(df,subset=rain==TRUE)#returns all columns where it rained
subset(df,subset=temp>25)#returns the columns where the temperature is higher than 25

#sorting dataframes using order function
sorted.temp<-order(df$temp)
df[sorted.temp,]#returns all the columns with temp sorted in ascending order 
#in descending order
desc.temp<-order(-df$temp)
df[desc.temp,]


#merging dataframes
authors<-data.frame(surname=I(c("Turkey","Venables","Tierney","Ripley","Mcneil")),
                    nationality=c("US","Australia","US","UK","Australia"),
                    deceased=c("yes",rep("no",4)))

books<-data.frame(name=I(c("Turkey","Venables","Tierney","Ripley","Ripley","Mcneil","R Core")),
                  title=c("Exploratory Data Analysis",
                          "Modern Applied Statistics...",
                          "LISP-STAT",
                          "Spatial Statistics",
                          "Stochastic Simulation",
                          "Interactive Data Analysis",
                          "Introduction to R"),
                  other.author=c(NA,"Ripley",NA,NA,NA,NA,"Venables & Smith"))
authors
books
(m1<-merge(authors,books,by.x="surname",by.y="name"))#merging code

#manipulating a dataframe
salesreport<-data.frame(Id=101:110,
                        Product=c("A","B"),
                        Unitprice=as.integer(runif(10,100,200)),#runif generates 10 random numbers between 100 and 200 and convert them to int
                        Qty=as.integer(runif(10,10,20))
                        )
salesreport

#1.Transpose dataframe
transpose.salesreport<-t(salesreport)
View(transpose.salesreport)
head(transpose.salesreport)

#2.Sorting of data frame
salesreport[order(salesreport$Unitprice),]
salesreport[order(salesreport$Unitprice,decreasing=T),]
salesreport[order(salesreport$Product,-salesreport$Unitprice),]#it first order the data frame according to the Product and groups them as weel and in tjos group data is ordered in desc according to Unitprice

#3.Subsetting data frame
subset.ProductA<-subset(salesreport,Product="A")
subset.ProductA

#Extract the rows for which Product is A and unitprice is>150
subset.salesreport<-subset(salesreport,Product=="A" & Unitprice>150)
subset.salesreport

#Extract only the first and fourth column Product is A and Unitprice>150
subset.salesreport<-subset(salesreport,Product=="A" & Unitprice>150, c(1,4))
subset.salesreport

#Merging of subset dataframes 
setA<-subset(salesreport,Product=="A")
setB<-subset(salesreport,Product=="B")
setA
setB
cbind(setA,setB)
rbind(setA,setB)

#Aggregate Function for the datframes
aggregate(salesreport$Qty,list(salesreport$Prod),sum,na.rm=T)


