#apply functions are a set of loop functions in R 
#the main difference is that apply functions are effecient than for loop
head(mtcars)

#the dataset that will be used will be the mtcars dataset
#to apply sum for each column except for cylinder column
column_sum<-apply(mtcars[,c("mpg","disp","hp","drat","wt")],2,sum)
print(column_sum)

#1.apply functions are used to apply functions over the row and columns
#to calculate the mean of each row
row_mean<-apply(mtcars[,c("mpg","disp","hp","drat","wt")],1,mean)
print(row_mean)

#to apply custom functions 
sum_of_squares<-function(x){
  sum(x^2)
}
#applying the custom function to each row
row_squares<-apply(mtcars[,c("mpg","disp","hp","drat","wt")],1,sum_of_squares)
print(row_squares)

#printing the standard deviation of each column 
column_sd<-apply(mtcars[,c("mpg","disp","hp","drat","wt")],2,sd)
print(column_sd)

#2.lapply:applies a function to each element of a list(vector) and returns the list
column_means<-lapply(mtcars[,c("mpg","disp","hp","drat","wt")],mean)
print(column_means)

#3.sapply:it is similr to lapply but it simplifies the reault into an array or vector if possible
column_mean_simplified<-sapply(mtcars[,c("mpg","disp","hp","drat","wt")],mean)
print(column_mean_simplified)

#4.tapply:applies a function to a subset of a vector,grouped by a factor
#it applies mean to mpg grouped by hp
mean_mpg_by_hp<-tapply(mtcars$mpg,mtcars$hp,mean)
print(mean_mpg_by_hp)

#5.mapply: applies a function to multiple arguments or lists in parallel.
#apply sum to mpg and hp columns in parallel
sum_hp_mpg<-mapply(sum,mtcars$mpg,mtcars$hp)
print(sum_hp_mpg)
