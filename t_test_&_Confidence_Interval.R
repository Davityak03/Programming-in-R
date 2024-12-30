#one sample t test: A one-sample t-test is used to test whether the mean of a sample is significantly different from a hypothesized value. 
#performing one sample t-test
boxplot(mtcars$mpg,las=2,ylim=c(10,35))
#This tells us that mean of the whole mtcars$mpg is equal to 20

#H0=Null Hypothesis:Mean of mpg=20
#Ha=Alternate Hypothesis: mean of mpg is greater than 20
#df=n-1(n= number of elements
test_mtcars<-t.test(mtcars$mpg,mu=20,alternative="greater",conf.level=0.95)
print(test_mtcars)
#by the output we can say that the alternate hypothesis is correct

#two sided confidence interval
test_mtcars<-t.test(mtcars$mpg,mu=20,alternative="two.sided",conf.level=0.95)
print(test_mtcars)

#for 99% confidence interval
test_mtcars<-t.test(mtcars$mpg,mu=20,alternative="two.sided",conf.level=0.99)
print(test_mtcars)

#Two sample t test(Indepenedent groups)
#these are parametric methods appropriate for examining the difference in means for 2 populations
#these are ways of examining the relationship between numeric outcome variable Y and categorical explanatory variable
#for eg we ill compare the mean mpg for cars 4 cylinders vs 6 cylinders
data(mtcars)
head(mtcars)
group1<-mtcars$mpg[mtcars$cyl==4]
group2<-mtcars$mpg[mtcars$cyl==6]
boxplot(mtcars$mpg~mtcars$cyl)
#t test
t_test_result<-t.test(group1,group2,mu=0,alternative="two.sided",conf.level=0.95 ,var.equal=FALSE,paired=F)#assume non eqqual variance
print(t_test_result)

#if variance equals to true
t_test_result<-t.test(group1,group2,mu=0,alternative="two.sided",conf.level=0.95 ,var.equal=TRUE,paired=F)#assume non eqqual variance
print(t_test_result)

#Levenes test
var(group1)
var(group2)
#Ho:population variances are equal
library(car)
leveneTest(group1,group2)#possible only if number of elements are same in the both groups 

