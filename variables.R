#variables are used to store data with named locations that your 
#programs can manipulate
#A variable name can be combination of letters, digits, period and undersore
#R is case sensitive language 

x<-"Hello World"
x

#cannot have spaces in variables, 
#if there is period in variable it should be followed by a letter

#Datatypes in R->Logical, Numerical, Integer,Complex, char, Raw Data
#Logical->TRUE,FALSE
#Numeric->10.5,6.7
#Integer->30L,40L
#Complex->3+2i
#Character->"hello"
#raw data->"hello" is stored as 48 66 6c 6c 6f
y<-100
typeof(y)
class(y)
#typeof returns what R considers the type. 
#class returns what R considers the class.

y<-100L
typeof(y)

#Logical Operators
#AND(&)
10<20 & 10<30

#OR(|)
10<20 | 10<5

#NOT(!)
10!=20

#reading of dataset
banana<-read.csv("C:\\Users\\dell\\Desktop\\R programs\\banana_dataset.csv")
banana
#to get the data in tabular format
View(banana)

#using operators in dataset
o<-banana[banana$At1==1.14 & banana$At2==-0.114,]
o

#using operators fr creating a sequence
t<-10:30
print(t)

#%%(Modulo) is for finding the remainder
3%%2


#########################Basic Datatype functions############
n1<-10
n2<-10.25
is.numeric(n1)
is.numeric(n2)
I1<-as.integer(10)
I1
I2<-as.integer(10.25)
I2
I3<-as.integer("10")
I3
#all integers are numeruc but not all numerics are integer

#inbuilt string functions
c1<-"John"
c2<-"Rob"
toupper(c1)#to upper case
substr(c1,1,2)#to extract a substring from a string
name<-paste(c1,c2)#join two strings with asingle space in between them 
name

name1<-paste0(c1,c2)#without space betweem them
name1

#replacing set of characeters
newname<-sub("Rob","Cena",name)
newname
c1
length(c1)#takes a string as 1

nchar(c1)#number of characetrs
