#chi square test of independence
#chi square test checks whether two categorical variables are independent of each other.

#Ho:Age group and Movietypes are independent.
#H1:Age group and movie type are not independent

data<-matrix(c(50, 30, 20, 10, 40, 60, 30, 70),
             nrow=2,byrow=TRUE)
colnames(data)<-c("action","romance","comedy","drama")
rownames(data)<-c("young","old")
data<-as.table(data)

print(data)

#visulaization
barplot(data,beside=T,legend=T)

#performing the test
chi_square_test<-chisq.test(data)
print(chi_square_test)

#Fishers Exact test is a non parametriics alternative to chi square test 
fisher.test(data,conf.int=T,conf.level=0.99)
