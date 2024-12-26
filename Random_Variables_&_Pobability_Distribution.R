#Probability distributions in R

#1.Binomial Distribution 
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
