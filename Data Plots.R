#data set is mtcars dataset
head(mtcars)

#barchart:a barchart is a visual display of the frequency for each category of a categorical variable or the relative frequency for each category
count<-table(mtcars$cyl)
print(count)
barplot(count,main="Barplot of Cylinders",xlab="Number of Cylinders",ylab="Frequency",las=1,names.arg=c("4Cylinder","6Cylinder","8Cylinder"))#las controls the positioning of the limits in x and y axis

percent<-table(mtcars$cyl)/32
print(percent)
barplot(percent,horiz=TRUE)

#making piecharts:pie charts are used to represent categorical data visually by displaying slices that represent proportions of a whole.
colors<-c("red","blue","green")
pie(count,main="Cylinder Piechart",col=colors)+box()

#boxplots: is a graphical representation of the distribution of a dataset.
quantile(mtcars$mpg,probs=c(0,0.25,0.5,0.75,1))
boxplot(mtcars$mpg,main="Boxplot for mpg",ylab="mpg",ylim=c(0,45),las=2)

boxplot(mtcars$mpg~mtcars$cyl)#boxplot of mpg group by distinct cylinder
#stratified boxplots:used to examine the relationship between a categorical and a numeric variable, between strata or groups defined by a third categorical variable.
boxplot(mtcars$mpg~interaction(as.factor(mtcars$cyl),as.factor(mtcars$gear)),las=2)
#interaction(as.factor(cyl), as.factor(gear)): Combines cyl (cylinders) and gear (gears) into a single factor, creating groups like 4.3, 6.4, etc.

#Histogram:This visualization is appropriate for summarizing the distribution of a numeric variable
hist(mtcars$mpg)
hist(mtcars$mpg,col="skyblue",border="red")
#if we want to modify the number of breaks in histogram
hist(mtcars$mpg,breaks=4,col="lightgreen",border="blue")
hist(mtcars$mpg,freq=FALSE)#to represent a probability density
lines(density(mtcars$mpg),col=36,lwd=2)

#stem and leaf plots
#stem and leaf plots are appropriate for summarizing the distribution of a numeric variable and are most appropriat efor smaller datasets
stem(mtcars$mpg)

#stacked charts
#preparing the data 
#we create a frequency table of cyl and gear
data<-table(mtcars$cyl,mtcars$gear)
data
#stacked barchart
barplot(data,main="Stacked barchart",
        xlab="number of gears",
        ylab="count of cars",
        col=c("red","green","blue"),
        legend.text=rownames(data),
        args.legend=list(x="topright",cex=0.8))

#clustered barcharts
barplot(data,
        beside=TRUE,
        main="Clustered bar plot",
        xlab="number of gears",
        ylab="count of cars",
        col=c("green","red","blue"),
        legend.text=rownames(data),
        args.legend=list(x="topright",cex=0.8))

#mosaic plots
#used to visualize the relationship between 2 or more cateorical variables
mosaicplot(data,
           main="mosaic plot",
           xlab="number of gears",
           ylab="number of cylinders",
           color=TRUE)
