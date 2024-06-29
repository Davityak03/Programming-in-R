########### Data manipulation using tidyr##########
# it helps to tidy data and visualise the model
#install.packages("tidyr")
library("tidyr")
#########major functions###########3
#1.gather()-it makes wide data longer
#2.spread()- it makes long data wider
#3.separate()-it splits a single column into multiple column 
#4.unite()-It combines multiple columns into a single column


n=10
wide<-data.frame(
  ID=c(1:n),
  Face.1=c(411,723,325,456,579,612,709,513,527,379),
  Face.2=c(123,300,400,500,600,654,789,906,413,567),
  Face.3=c(1457,1000,569,896,956,2345,780,599,1023,678)
)

View(wide)

#1.gather()-
long<-wide %>% gather(Face,ResponseTime,Face.1:Face.3)
View(long)

#separate()
long_separate<-long %>% separate(Face,c("Target","Number"))
View(long_separate)

#unite()-
long_unite<- long_separate %>% unite(Face,Target,Number,sep=".")
View(long_unite)

#spread()-it takes two columns (key& value) and spreads in to multiple column
#it makes long data wider
back_to_wide<-long_unite %>% spread(Face,ResponseTime)
View(back_to_wide)