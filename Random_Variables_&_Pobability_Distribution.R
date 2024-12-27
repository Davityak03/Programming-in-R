#Probability distributions in R

#1.Binomial Distribution
#Models the number of successes in n independent trials, each with a probability p of success.
#X is binomially distributed with n=20 trials and p=1/6 probability of success
#dbinom command is used to find values for th eprbability density function of X, f(x)
n<-20
p<-1/6
k<-5#(number of success)

prob<-dbinom(k,size=n,prob=p)#P(X=5)
print(prob)
#to compute P(X=k) for multiple values of k
prob_vector<-dbinom(0:20,size=n,prob=p)
print(prob_vector)
#Visulization of this vector
barplot(prob_vector,
        names.arg=0:20,
        col="blue",
        main="Binomial distribution for n=20 and p=1/6",
        xlab="number of successes",
        ylab="probability")
lines(prob_vector,col="red",lwd=2)
#pbinomm :is used to compute the cumulative probability P(X<=k)
cummulative_prob<-pbinom(5,size=n,prob=1/6,lower.tail=T)#for X<=5
print(cummulative_prob)


#2.Poisson Distribution in R
#Models the number of events occurring in a fixed interval of time or space, given a constant average rate λ and events occur independently.
#λ=7
#for pmf dpois function is used 
lambda<-7
k<-5
pro<-dpois(k,lambda)#P(X=5)
print(prob)

#cmf ppois is used 
cummulative_prob2<-ppois(k,lambda)#P(X<=5)
print(cummulative_prob2)

#sequence of poisson distribution values
vis_vec<-dpois(0:7,lambda)
barplot(vis_vec,
        names.arg=0:7,
        col="blue",
        main="Poisson distribution for lambda=7",
        xlab="number of successes",
        ylab="probability")
lines(vis_vec,col="red",lwd=2)

#3.Normal Distribution
#The Normal Distribution (or Gaussian Distribution) is a continuous probability distribution characterized by its bell-shaped curve. It is defined by two parameters: μ (mean): The center of the distribution. σ (standard deviation): The spread or width of the distribution.
#mean=75 and standard deviation =5
#dnorm function is used for pdf 
mean<-75
sdeviation<-5
x<-100
prob<-dnorm(x,mean,sdeviation)P(X=100)
print(prob)

#for cmf we use pnorm function
cummulative_prob3<-pnorm(100,mean,sdeviation)#P(X<=100)
print(cummulative_prob3)

#for visualization
vis_vec<-dnorm(0:100,mean,sdeviation)
barplot(vis_vec,
        names.arg=0:100,
        col="blue",
        main="Normal Distribution",
        xlab="X",
        ylab="probability")

#4.t-Distribution
#probability distribution used in statistics, especially in hypothesis testing and when the sample size is small, and the population standard deviation is unknown. 
#mean=0,standard deviation=1 and 25 degrees of freedom 
#one sided
df<-25
x<-2
prob<-pt(x,df)#P(t>2),df=25
print(prob)
pro_dash<-pt(x,df,lower.tail=F)#P(t<=2)
print(pro_dash)
pro_dash2<-pt(-2,df,lower.tail=T)
print(pro_dash2)

#two sided we add both the values(t=2,-2)
print(pro_dash+pro_dash2)

#find the value of t for 95% confidence
#value of t with 2.5% in each tail
qt(p=0.025,df=25,lower.tail=T)


