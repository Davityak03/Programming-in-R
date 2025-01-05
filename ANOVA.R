#ANOVA(One way Aanalysis of Variance)
#anova is a parametric methid appropriate for comparing the means for 2 or more independent populations 
# Custom data
data <- data.frame(
  Scores = c(85, 87, 88, 86, 84, 
             78, 82, 80, 79, 77, 
             92, 91, 94, 89, 90),
  Group = c(rep("A", 5), rep("B", 5), rep("C", 5))
)

# Print the dataset
print(data)

boxplot(data$Scores~data$Group)

#Ho: Mean Scores is the same for all groups

#doing the anova
anova_result<-aov(Scores~Group,data=data)
print(anova_result)
summary(anova_result)
attributes(anova_result)

#coeffecients of the anova
anova_result$coefficients

#residual diagnostic plot
plot(anova_result,2)

#If ANOVA is significant, we perform a post hoc test to find which group differs
tukey_result<-TukeyHSD(anova_result)
print(tukey_result)
plot(tukey_result)
#all groups show statistically significant diferences in their means

#Kruskal Wallis One way analysis variance is a non parametric quivalent to the one way analysis of variance
kruskal.test(Scores~Group,data=data)
