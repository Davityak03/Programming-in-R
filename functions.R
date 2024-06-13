####Creation of function in R 
req_years<-function(amount=500){ 
  famt=0 
  month=0 
  while(famt<=8000){ 
    month=month+1 
    famt=famt+amount 
    message("Month=",month,"final_amount=",famt)#printed in red color 
  } 
  year=month/12 
  return(year) 
} 
req_years() 
req_years(750)

#built in functions in R
#1.
seq(1,10,by=2)# by is used for the gap 

#2.
li<-c(1,2,7,3,2,0,9)
rev(li)

#2.append()
set1<-c(1,2,3,4)
set2<-c(5,6,7)
append(set1,set2)

#mathematical built in functions 
#1.abs()
abs(-5)

#2.sqrt()
sqrt(25)

#3.sum()
c<-c(1,2,3)
sum(c)

#4.floor()
floor(5.99)

#5.exp()
exp(5)#returns the exponent of a number

#6.mean()
v<-c(1,2,3,4,5)
mean(c)

#REGULAR EXPRESSIONS IN r(it is used for pattern matching)
#1.grepl()#returns tue or false
text<-"R is fun"
grepl("fun",text)

#2.grep()returns index
text1<-c("Hello","fun")
grep("fun",text1)

#functions with parameters or not 
#1. function with no arguments
hello_world<-function(){
  print("hello world")
}
hello_world()

#@.Function with single argument
hello_name<-function(name){
  print(name)
}
hello_name("Rahul")

#function to add two numbers
addition<-function(num1,num2){
  print(num1+num2)
}
addition(2,3)

#Add a vector to a number
addition(c(1,2,3),5)

#function with default argument values
hello_name<-function(name="Rick"){
  print(name)
}
hello_name("rahul")
hello_name()

#To return a value from the function
full_name<-function(fname,lname){
  return(paste0(fname," ",lname))
}
full_name("rahul","yadav")

##############More built in functions#############
#to generate 1000 random vales from an normal distribution of mean 0 and sd=1
normalDist<-rnorm(1000,0,1)
mean(normalDist)
hist(normalDist)

#to get more info
?hist

#to et histogram with large number of interval breaks
hist(normalDist,breaks=50)

#we can provide arguments to functions by position
#we could do the above example without breaks argument but as a good practice we should provide name to arguments
hist(normalDist,50)

#function with optional arguments
expvalue<-function(x,power=2){
  hist(x^power)
}
expvalue(normalDist)
#or
expvalue(normalDist,power=3)

#using named arguments (and passing any other arguments)
expovalue<-function(x,power=2, ...){
  hist(x^power, ...)
}
expovalue(normalDist,power=2,breaks=50)

#passing logical arguments
expovalue<-function(x,exp=2,hist=FALSE, ...){
  if(hist==TRUE){
    hist(x^exp)
    x^exp
  }else{
    x^exp
  }
}
expovalue(normalDist)
expovalue(normalDist,hist=TRUE)

v<-"I am global variable"
stuff<-"I am global stuff"
fun<-function(stuff){
  print(v)
  print(stuff)
  stuff<-"Reassign stuff"
  print(stuff)
}
print(v)
print(stuff)
fun(stuff)#reassignment happens only in the scope of the function
print(stuff)

#creating a function to find the final amount to be paid by a customer after adding 20%tax to the purchased amount
amount<-function(x=100){
  total=x+x*20/100
  return(total)
}
amount(100)

amount1<-function(amt){
  if (amt>0) famt=amt+amt*(20/100)
  if(amt<=0) famt=amt
  return(famt)
}
amount1(100)
amount(0)

#to check the arguments and the body of a function
args(amount1)
body(amount1)

#Example to convert a name to uppercase
status<-function(name){
  len<-nchar(name)
  if (len>5){ name=toupper(name)}
  message("User given name is:",name)
}
status("rahul yadav")

################Using switch function###########
#returns value matched with first argument
#First argument should be character


#example to return hra amount based on cities
HRA<-function(city)
{
  hra_amt<-switch(toupper(city),
                  BLR=7500,
                  MUM=1000,
                  DEL=8000,
                  CHN=7500,
                  5000  #default value 
  )
  return(hra_amt)
}
HRA("DEL")
HRA("CHN")
HRA("")

######################using repeat in R###############3
time<-15
repeat{
 message("Hello welcomr to R")
  if(time>=20)break
  time=time+1
}








