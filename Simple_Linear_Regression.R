#Linear regresion
#it is useful for examining or modelling the relationship between 2 numeric variabbles
#loading the data
data("women")
head(women)

#exploring the data
str(women)
summary(women)

#fitting the linear regression model 
model<-lm(weight~height,data=women)
summary(model)

#to visualize the model
plot(women$height,women$weight,main="weight vs height",
     xlab="Height",ylab="weight",pch=19,col="blue")
abline(model,col="red",lwd=2)

#predicting the future values
new_data<-data.frame(height=c(65,70,75))
predictions<-predict(model,newdata=new_data)
print(predictions)

