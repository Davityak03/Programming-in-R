plot(ChickWeight)

#base graphics
library(MASS)
plot(UScereal$sugars,UScereal$calories)
title("plot(UScereal$sugars,UScereal$calories)")

x<-UScereal$sugars
y<-UScereal$calories
library(grid)

#grid graphics
pushViewport(plotViewport())
pushViewport(dataViewport(x,y))
grid.rect()
grid.xaxis()
grid.yaxis()
grid.points(x,y)
grid.text("UScereal$calories",x=unit(-3,"lines"),rot=90)
grid.text("UScereal$sugars",y=unit(-3,"lines"),rot=0)
popViewport(2)

#bar chart is a graph that is used to show the comparisions across descreet categories. The x-axis represents the categories to compare 
library(ggplot2)
View(mpg)
head(mpg,n=10)
str(mpg)
install.packages("tidyverse")
library("tidyverse")
ggplot(mpg,)+geom_bar(aes(x=class,fill=drv))
#side by side(dodged) dodged bar chart
ggplot(mpg, aes(x = class, fill = factor(cyl))) +
  geom_bar(position = position_dodge(width = 0.9)) +
  labs(x = "Class", y = "Count", fill = "Cylinders") +
  ggtitle("Bar Plot of Car Classes by Cylinder Count")

#line_graph: A line graph is a type of graph that displays information as a series of data points
#Filter the data that we need 
Tree_1<-filter(Orange,Tree==1)
ggplot(Tree_1, aes(x = age, y = circumference, color = "blue")) + 
  geom_line() +
  labs(fill = "Color")

#to create a scatter plot
ggplot(mpg, aes(x =class,y=cty)) +
  geom_point() +
  labs(x = "X-axis label", y = "Y-axis label", title = "Scatter Plot")



#piechart for different products and units sold
x<-c(33,45,70,110)
labels<-c("Soap","Detergent","Oil","Shampoo")
pie(x,labels)
pie(x,labels,main="City pie chart",col=rainbow(length(x)))

piepercent<-round(100*x/sum(x),1)
pie(x,labels=piepercent,main="City pie chart",col=rainbow(length(x)))
legend("bottomleft",c("Soap","Shampoo","Oil","Grocery"),cex=0.7,
       fill=rainbow(length(x)))

#3D pieChart 
# to install the library
#install.packages("plotrix")
library(plotrix)

x<-c(33,45,70,110)
lbl<-c("Soal","Deteregent","Oil","Shampoo")
#plot the chart
pie3D(x,labels=lbl,explode=0.1,main="Pie chart of countries")

#creating a histogram
v<-c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,xlab="Weight",col="green",border="red")

hist(v,xlab="weight",col="green",border="red",xlim=c(0,40),ylim=c(0,5),
     breaks=5)

data("airquality")
#scatter plot for the above data 
View(airquality)
ggplot(airquality,aes(x=Day,y=Temp))+geom_point(shape=8,col="red")+labs(x="xlabel",y="ylbel",title="scatter plot")


#to plot a graph between the ozone and wind values
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,airquality$Wind,col="red",pch=7)#pch is used for changing the shape of dots
plot(airquality$Ozone,airquality$Wind,type="h",col="blue")#to plot a histogram

plot(airquality)
#to assign labels to the plot
plot(airquality$Ozone,xlab="Ozone Cocentration",ylab="Number of Instances",main="Ozone level in the NY city",col="green",pch=17)

#histogram
hist(airquality$Solar.R)
hist(airquality$Solar.R,main="Solar radiation values in air",xlab="Solar Concentration",ylab="Number of Instances",col="red",border="green")

Temperature<-airquality$Temp
hist(Temperature)

#hitogram with labels
h<-hist(Temperature,ylim=c(0,40))
text(h$mids,h$counts,labels=h$counts,adj=c(0.5,-0.5))

#histogram with non-uniform wieghts
hist(Temperature,main="Maximum daily temperature",
     xlab="Temperature in F",
     xlim=c(50,100),
     col="chocolate",
     border="brown",
     breaks=c(55,60,70,75,80,100))

#box plot
plot(airquality$Solar.R)
boxplot(airquality$Solar.R)

#multiple box plots
boxplot(airquality[,0:4],main="multiple box plots")

#using ggplot2 library to analyze mtcars dataset 
library(ggplot2)
attach(mtcars)#to temporarly attach the dataset and call the coluumns by their names rathter thane dataset$column_name
p1<-ggplot(mtcars,aes(factor(cyl),mpg))
p1+geom_boxplot()
p1+geom_boxplot()+coord_flip()#to swap the x and y axis
p1+geom_boxplot(aes(fill=factor(cyl)))

#create factors with value labels
mtcars$gear<-factor(mtcars$gear,levels=c(3,4,5),
                    labels=c("3gears","4gears","5gears"))
mtcars$cyl<-factor(mtcars$cyl,levels=c(4,6,8),
                  labels=c("4cyl","6cyl","8cyl"))
mtcars$am<-factor(mtcars$am,levels=c(0,1),
                 labels=c("Automatic","Manual"))
#scatter plot
ggplot(data=mtcars,mapping=aes(x=wt,y=mpg))+geom_point()

#scatter plot by factors
ggplot(mtcars,aes(x=wt,y=mpg,color=as.factor(cyl)))+geom_point(shape=17)

#scatter plot by size
ggplot(mtcars,aes(x=wt,y=mpg,size=qsec))+geom_point()
ggplot(mtcars,aes(x=wt,y=mpg,size=qsec))+geom_point(col="red")

#############Visualization using mpg dataset###################
ggplot2::mpg
View(ggplot2::mpg)

#Bar plot
ggplot(ggplot2::mpg,aes(class))+geom_bar()

#stacked bar plot
ggplot(ggplot2::mpg,aes(class))+geom_bar(aes(fill=drv))

#using dodge- rather than a stacked bar graph it creates a distributed bar graph 
ggplot(ggplot2::mpg,aes(class))+geom_bar(aes(fill=drv),position="dodge")

ggplot(ggplot2::mpg)+geom_point(aes(x=displ,y=hwy))

ggplot(ggplot2::mpg)+geom_point(aes(x=displ,y=hwy,color=class))#it colors the point according to their classes

#######################using plotly Library################
#install.packages("plotly")
library(plotly)
p<-plot_ly(mtcars,x=~hp,y=~wt,marker=list(size=10,color="rgba(255,182,193, .9)",line=list(color="rgba(152,0,0, .8"),width=2))
p

p<-plot_ly(data=mtcars,x=~hp,y=~wt,color=~hp,size=~hp)
p



