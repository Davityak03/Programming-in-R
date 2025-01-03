#Wilcoxon Signed Rank test
#Wilcoxon Signed Rank Test is a non-parametric alternative to the paired t-test. It is used to compare the median of paired data (e.g., before and after measurements) when the data is not normally distributed.

#Loading the mtcars dataset
data(mtcars)

#Extracting mpg values for cars with 4 and 6 cylinders
mpg_4cyl <- mtcars$mpg[mtcars$cyl == 4]
mpg_6cyl <- mtcars$mpg[mtcars$cyl == 6]

#Checking the lengths of the two groups
length(mpg_4cyl)
length(mpg_6cyl)

#Randomly sample the larger group to match the size of the smaller group
mpg_4cyl_sample <- sample(mpg_4cyl, length(mpg_6cyl))

#boxplots of both the groups
boxplot(mpg_4cyl_sample)
boxplot(mpg_6cyl)

#Perform the Wilcoxon Signed Rank Test
wilcox_test_result <- wilcox.test(mpg_4cyl_sample, mpg_6cyl, paired = TRUE)

#Print the result
print(wilcox_test_result)
