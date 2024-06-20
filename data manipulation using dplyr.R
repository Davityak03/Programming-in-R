#the dplyr package is used to transform and summarize the tabular data with rows and columns
#install.packages("dplyr")
library(dplyr)
#install.packages("nycflights13")
library("nycflights13")

View(flights)
head(flights)

#subset dataset using filter
f1<-filter(flights,month==07)
View(f1)

f2<-filter(flights,month==07,day==3)
View(f2)

View(filter(flights,month==09,day==3,origin=="LGA"))
#OR

head(flights[flights$month==09 & flights$day==2 & flights$origin=="LGA",])

#slice allows us to select rows by position
slice(flights,1:5)
slice(flights,5:10)

#mutate() is used to add new column 
over_delay<-mutate(flights,overall_delay=arr_delay-dep_delay)
View(over_delay)
head(over_delay)

#transmute() function is used to show only new column
over_delay<-transmute(flights,overall_delay=arr_delay-dep_delay)
View(over_delay)
View(flights)

#summarise() used to find descriptive statistics
summarise(flights,avg_air_time=mean(air_time,na.rm=T))
summarise(flights,tot_air_time=sum(air_time,na.rm=T))
summarise(flights,stdev_air_time=sd(air_time,na.rm=T))
summarise(flights,avg_air_time=mean(air_time,na.rm=T),tot_air_time=sum(air_time,na.rm=T))

#group by calculation using group_by()
#example-1
head(mtcars)
View(mtcars)
by_gear<-mtcars%>%group_by(gear)
by_gear
View(by_gear)

a<-summarise(by_gear,gear1=sum(gear),gear2=mean(gear))#of grouped data such as if gear =3,4,5
a

summarise(group_by(mtcars,cyl),mean(gear,na.rm=T))

b<-by_gear%>% summarise(gear1=sum(gear),gear2=mean(gear))
b

#example-2
by_cyl<-mtcars%>%group_by(cyl)
by_cyl%>%summarise(gear=mean(gear),hp=mean(hp))

#sample_n() and sample_frac for creating samples-------
sample_n(flights,15)#gives 15 random samples

sample_frac(flights,0.4)#returns 40% of the total data

#arrange() used to sort the dataset
View(arrange(flights,year,dep_time))

#usage of pipe operator %>%
#The piping operator allows you to chain together multiple operations sequentially, 
#passing the output of one function call as the input to 
#the next function call. This makes it easier to understand and write code, especially 
#when performing a series of transformations on data.
df<-mtcars
df

#Nesting 
result<-arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg))# mpg>20 and number of rows=5 and ordered according to descending value of mpg
View(result)

#multiple assignments
a<-filter(df,mpg>20)
b<-sample_n(a,size=5)
result<-arrange(b,desc(mpg))
result

#same using pipeline operator
#syntax- data%>% op1%>% op2 %>% op3
result <- df%>% filter(mpg>20) %>% sample_n(size=5) %>% arrange(desc(mpg))
result

#select statement in R
df_mpg_hp_cyl= df %>% select(mpg,hp,cyl)
df_mpg_hp_cyl
