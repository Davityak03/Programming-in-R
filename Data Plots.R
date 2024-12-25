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
