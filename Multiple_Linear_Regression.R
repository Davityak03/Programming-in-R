#multiple linear regression
#loading the dataset
data(airquality)
head(airquality)

str(airquality)
summary(airquality)

#handling missing data
air_quality_clean<-na.omit(airquality)
summary(airquality)

model<-lm(Ozone~Solar.R+Wind+Temp,data=air_quality_clean)
summary(model)

#making predictions
new_data <- data.frame(Solar.R = c(200, 250), Wind = c(7, 10), Temp = c(85, 90))
predictions <- predict(model, newdata = new_data)
print(predictions)

# Residuals vs Fitted plot
plot(model, which = 1)

# Actual vs Predicted Ozone levels
plot(air_quality_clean$Ozone, predict(model), 
     xlab = "Actual Ozone Levels", ylab = "Predicted Ozone Levels", 
     main = "Actual vs Predicted")
abline(0, 1, col = "red") # Reference line