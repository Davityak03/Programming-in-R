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
