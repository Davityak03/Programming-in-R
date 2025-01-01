#bootstrap hypothesis testing
#Bootstrap hypothesis testing is a resampling-based approach used to test hypotheses without making strong parametric assumptions about the data's distribution. It involves generating many bootstrap samples, calculating the test statistic for each sample, and comparing it to the observed test statistic to determine the significance.
#comparing numeric variables for two groups

# Loading the mtcars dataset
data(mtcars)

# Splitting the mpg by am (0 = automatic, 1 = manual)
group1 <- mtcars$mpg[mtcars$am == 0]  # Automatic cars
group2 <- mtcars$mpg[mtcars$am == 1]  # Manual cars

# Observed statistic: difference in means
observed_statistic <- mean(group2) - mean(group1)

# Combining the data under the null hypothesis
combined_data <- c(group1, group2)

# Number of bootstrap samples
n_bootstrap <- 10000

# Generating bootstrap samples
set.seed(123)  # For reproducibility
bootstrap_stats <- replicate(n_bootstrap, {
  # Shuffling the combined data
  shuffled <- sample(combined_data)
  
  # Splitting into two groups of the same size as original groups
  bootstrap_group1 <- shuffled[1:length(group1)]
  bootstrap_group2 <- shuffled[(length(group1) + 1):length(combined_data)]
  
  # Computing the difference in means for bootstrap sample
  mean(bootstrap_group2) - mean(bootstrap_group1)
})

# Calculate two-tailed p-value
p_value <- mean(abs(bootstrap_stats) >= abs(observed_statistic))

# Display results
cat("Observed Statistic (Difference in Means):", observed_statistic, "\n")
cat("P-value:", p_value, "\n")

# Visualize bootstrap distribution
hist(bootstrap_stats, breaks = 30, main = "Bootstrap Distribution of Mean Differences",
     xlab = "Difference in Means", col = "skyblue", border = "white")

