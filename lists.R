#Lists are generic vectors that contain objects of different types
#creation of a list 
list1=list("Hello",123,c(67,56))
list1

#Indexing in list
list1[2]
list1[2:3]

list2<-list(x<-c(1,2,3,4),y<-c("hello","world"),z<-c(TRUE,FALSE))
list2

#to check if a variable contains a list in it
is.list(list2)#True will be printed if yes, else False

#mapping of lists/named list
prod.category<-list(product="Music Tracks",count=100,ratings=5)
prod.category

#to print the list in a more compact way
str(prod.category)

#nested lists
similar.prod<-list(product="films",count=50,ratings=4)
similar.prod

prod.category<-list(product="Music Tracks",count=100,ratings=5,similar=similar.prod)
prod.category

#accessing a list
prod.category[[1]]#accessing the object of the list
prod.category[[2]]
prod.category[4]#accessing the list
prod.category[["product"]]
prod.category[c(FALSE,TRUE,FALSE,TRUE)]#accessing only those parts of te list wich are true 

#accessing by the $ function
prod.category$product
prod.category$count

list2<-list(vec=seq(1:10),
            mat=matrix(1:9,3,3),
            lis=list(a=10,b=20))
list2

#recursive variable->variable that can store values of its own type
is.recursive(list2)

# to find the length of the lis
length(list2)
#to find the class of the list
class(list2)

#conversion from vector to list
price<-c(10,20,30)
class(price)
pricelist<-as.list(price)
class(pricelist)

#conversion of a list to a vector
newprice<-unlist(pricelist)
class(newprice)






