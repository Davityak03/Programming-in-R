#polynomial regression in R
#Polynomial regression is a type of regression analysis in which the relationship between the independent variable (predictor) and the dependent variable (response) is modeled as an n-th degree polynomial.

# Load necessary library
library(ggplot2)

# Load the iris dataset
data(iris)

# Fit a polynomial regression model with degree 2 (quadratic)
model <- lm(Sepal.Length ~ poly(Petal.Length, 2), data = iris)

# Summarize the model
summary(model)

# Predict using the model
iris$predicted_sepal_length <- predict(model, newdata = iris)

# Plot the data and the fitted polynomial regression curve
ggplot(iris, aes(x = Petal.Length, y = Sepal.Length)) +
  geom_point() + 
  geom_line(aes(x = Petal.Length, y = predicted_sepal_length), color = "blue") +
  labs(title = "Polynomial Regression (Degree 2)", x = "Petal Length", y = "Sepal Length")


