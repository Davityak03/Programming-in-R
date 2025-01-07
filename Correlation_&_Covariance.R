#correlation measures the strength and direction of the linear relationship beteen the two variables. It ranges from -1 to 1
#there are different types one is pearsons which is used for parametric measure of the linear association between 2 numeric variables
#and the other is Spearman's rank correlation is a non parametric measure of the monotonic association between 2 numeric variables
#another is Kendalls rank correlation is another non parametric measure of the association , based on the concordance or discordance of x-y pairs
data(mtcars)
head(mtcars)

#scatter plot vsualiztion
plot(mtcars$mpg,mtcars$hp,main="Scatterplot",las=1)

#correlation between the variables
cor(mtcars$mpg,mtcars$hp,method="pearson")
cor(mtcars$hp,mtcars$mpg,method="pearson")

cor(mtcars$hp,mtcars$mpg,method="spearman")

cor(mtcars$hp,mtcars$mpg,method="kendall")

cor.test(mtcars$hp,mtcars$mpg,method="pearson")

#Covariance:Covariance measures the extent to which two variables change together
cov(mtcars$mpg,mtcars$hp)

pairs(mtcars)

