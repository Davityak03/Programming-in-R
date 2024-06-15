#if statement(an if statement consists of a boolean espression followed by one or more statements)
b<-33
a<-200
if(b>a){
  print("b is greater than a")
}else{
  print("a is greater than b")
}

#while loop the loop contnues until the condition is true
v<-c("Hello world")
count<-2
while(count<7){
  print(v)
  count<-count+1
}

#for loop: it is used to iterate over a list of elements or a range of numbers
fruit<-c("Apple","Banana","Pear","Kiwi")
for (i in fruit){
  print(i)
}

#logical operation
#And-&
#OR-|
#not-!

#using break statement in a while loop
x<-0
while(x<5){
  cat("x is currently:",x)
  print("x is still less than 5, adding 1 to x")
  x<-x+1
  if(x==5){
    print("x is equal to 5")
    break           ##it breaks the loop
    print("Done")
  }
}

## for loop with a range
for(i in 1:5){
  print(i)
}

li<-list(1,2,3,4,5,6)
for (i in 1:length(li)){
  print(li[[i]])
}

#for loop to print a matrix
mat<-matrix(1:25,nrow=5)
mat

for (num in mat){
  print(num)
} 




