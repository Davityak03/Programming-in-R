#a vector is the most common data structure. 
#It is like an array of data elements, each the same type 
#(integer, double, character, logical, complex, and raw). 
#even if you create a single value in R it creates a vector with a size of 1.
vector1<-c(81,125)
vector1

#Initialization of a vector
x<-vector("numeric",length=10)
x

#three types of vectors are there
#1Numeric
vector1<-c(81,125)
vector1
#2Character
char_vector<-c("hello","world")
char_vector
#3Logical 
log_vector<-vector1>90
log_vector

#####################vector operations################
#Concatenating two vectors
num=c(1,2,3,4,5)
let=c("Hello","World")
mixed_vec=c(num,let)
print(mixed_vec)

#mapping 2 vectors together
year<-c(1985,2003,2010,2002)
names(year)<-c("The Breakfast","American","Black","Chicago")#mapping of variables in two vectors
year["Black"]

#Length of a vector
length(year)

#sorting of vector
year_sorted<-sort(year)
year_sorted

#finding min and max from a vector
min(year)
max(year)

#average of numbers
mean(year)

#vector indexing
year[1]
year[1:3]
year[-1]#removes that element(-ve sign)
year

#mixing 2 objects
y<-c(1.7,"a")##character
y
class(y)

y<-c(TRUE,2)##numeric
y
class(y)

y<-c("a",TRUE)##Character(True will be converted to 1)
y
class(y)
#mixing isn't allowed in vectors, if mixing occurs in vector coercion,
#occurs so that all elements are of the same class.Above is an example of implicit coercion

vec4<-c(1:20)#to create sequence
vec4

vec5<-seq(1,20,2)#by range like function
vec5

#to create a vector with 10 odd values starting from 20
vec6<-seq(from=21,by=2,length.out=10)
vec6

#naming a vector using name function
temperature<-c(1,2,3)
temperature
names(temperature)<-c("Mon","tue","wednesday")
temperature

days<-c("Monday","Tuesday","Wednesday")
temperature1<-c(40,25,35)
names(temperature1)<-days
temperature1

##Basic operations on vectors
v1<-c(1,2,3)
v2<-c(4,5,6)

#add 2 vectors elemnt to element
v1+v2

#subtract 2 vectors
v1-v2

#multiply 2 vectors
v1*v2

#division
v1/v2

#using basic inbuilt math functions
sum(v1)#add all the values in the vector
sd(v1)#find standard deviation 
var(v1)#to display the variance 
prod(v1)#give the product of all the vector values
max(v1)#returns the max value in the vector
min(v1)#returns the min value in the vector
round(45.1253)
ceiling(45.12453)
floor(45.12453)
trunc(45.12453)
log(2)
exp(2)

#comparing two vectors using comparision operators
v1<v2#returns true or false element by element
v1>v2
v1!=v2
v1==v2

#vector slicing and indexing 
price1<-seq(550,670,20)
names(price1)<-paste0("p",1:7)
price1
#accessing the elements using index positions
price1[3]
price1[3:4]
price1[c(1,4)]

#indexing with names
price1[c("p3")]
price1[c("p3","p4","p7")]
price1["p3"]

#using logical positions
price1[c(T,T,T,T,F,F,F)]

#using exclude position method
price1[-2]
price1[c(-2,-5)]

#using comparision operators
price1[price1<600]

filter<-price1<600#returns a logical vcetor on this condition
filter


order_detail<-c(20,30,NA,40,50,60)
order_detail
names(order_detail)<-c("Mon","Tue","Wed","Thu","Fri","Sat")
order_detail
order_detail+5#any operation applied is applied to all the elements of the vector

#to add two vectors
new_order<-c(5,10)
order_detail
order_detail+new_order
update_order<-order_detail+new_order
update_order

#to create a subset of vectors
firsttwo<-order_detail[1:2]
firsttwo
l<-length(order_detail)
l

v1<-order_detail[(l-1):l]
v1
v2<-order_detail[(l-1):2]#move backwards from l-1 to 2 index of the vector
v2
v3<-order_detail[l:1]
v3
v4<-order_detail[(l-2):l]
v4

#to omit NA values from the vector
na.omit(order_detail[order_detail<30])
#to find the order details that are multiples of 3
(order_detail%%3)==0
order_detail[(order_detail%%3)==0]

#to remove the na value and then take out sum
sum(order_detail,na.rm=T)


#explicit Coercion
#explicit coercion can be done as-
x<-0.6
class(x)
as.numeric(x)
as.logical(x)#if near 1 then True else 0
as.character(x)

##########################Factors in R#################

#factors are used to work with categorical variables, 
#variables that have a fixed and known set of possible values. 
#They are also useful when you want to display character vectors in 
#a non-alphabetical order. Historically, factors were much easier to 
#work with than characters
#factors-
genre_vector<-c("Animation","Comedy","Crime","Animation","Comedy")
genre_factor<-factor(genre_vector)
genre_factor

#to get the summary of a vector
summary(genre_vector)

#to get the summary of the factor
summary(genre_factor)

#ordered factor
movie_length_vector<-c("Very short","Short","Medium","Short","Long","Very short","Very long")
movie_length_vector
movie_length_factor<-factor(movie_length_vector,ordered=TRUE,levels=c("Very short","Short","Medium","Long","Very long"))
movie_length_factor

Type<-c("s","m","l","s","l","m")
Type[3]>Type[4]
Type[1]>Type[2]
Type[2]<Type[3]

Type.factor<-factor(TRUE)

#default nominal factor
Type.factor

Type.factor2<-factor(Type,ordered=T)
#factor created in ordinal
Type.factor2

Type.factor3<-factor(Type,ordered=TRUE,levels=c("s","m","l"))
#order factor with user given order
Type.factor3

Type.factor4<-factor(Type,ordered=TRUE,levels=c("s","m","l"),
                     labels=c("small","medium","large"))
Type.factor4

bloodgrp<-c("B","AB","O","A","O","O","A","B")
bloodgrp
bloodgrp_factor<-factor((bloodgrp))
bloodgrp_factor
str(bloodgrp_factor)#prints the different levels and prints their level according to their indices

dresssize<-c("M","L","S","S","L","M","L","M")
dresssize_factor<-factor(dresssize,ordered=TRUE, levels=c("S","M","L"))
dresssize_factor
dresssize_factor[1]<dresssize_factor[2]

#example with hieght vector
Type<-c("Small","Tall","Tallest","Medium","Small","Medium",
        "Tallest","Tall","Small","Small")
Type
Type.factor5<-factor(Type,ordered=TRUE,levels=c("Small","Medium","Tall","Tallest"))
Type.factor5

Type.factor5[1]>Type.factor5[4]

as.integer(Type.factor5)






