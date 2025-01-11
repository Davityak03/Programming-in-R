# Dummy variables are binary variables (0 or 1) used in regression models to represent categories of a categorical variable.

data(iris)
head(iris)
str(iris)

model <- lm(Sepal.Length ~ Species + Petal.Width, data = iris)
summary(model)

dummy_vars <- model.matrix(~ Species, data = iris)
head(dummy_vars)

iris_with_dummies <- cbind(iris, dummy_vars[, -1])
model_manual <- lm(Sepal.Length ~ Petal.Width + Speciesversicolor + Speciesvirginica, data = iris_with_dummies)
summary(model_manual)
