#polynomial regression in R
#Polynomial regression is a type of regression analysis in which the relationship between the independent variable (predictor) and the dependent variable (response) is modeled as an n-th degree polynomial.

data(airquality)
head(airquality)

airquality_clean<-na.omit(airquality)

model1<-lm(airquality_clean$Temp~airquality_clean$Wind)
summary(model1)
plot(airquality_clean$Temp~airquality_clean$Wind)
abline(model1,lwd=3,col="red")

