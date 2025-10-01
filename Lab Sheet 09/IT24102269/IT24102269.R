#1
setwd("C:\\Users\\senes\\Desktop\\IT24102269")
#part 1
set.seed(123)
baking_time <- rnorm(25, mean = 45, sd = 2)
cat("Generated baking times (first 10 values):\n")
print(baking_time[1:10])

#part 2
test_result <- t.test(baking_time, mu = 46, alternative = "less")

cat("\nHypothesis Test Results:\n")
print(test_result)

test_statistic <- test_result$statistic
p_value <- test_result$p.value
confidence_interval <- test_result$conf.int

cat("\nExtracted Values:\n")
cat("Test Statistic (t):", round(test_statistic, 4), "\n")
cat("P-value:", format.pval(p_value), "\n")
cat("95% Confidence Interval:", round(confidence_interval, 4), "\n")

if(p_value < 0.05) {
  conclusion <- "Reject H0: The average baking time is significantly less than 46 minutes at 5% significance level."
} else {
  conclusion <- "Do not reject H0: No significant evidence that average baking time is less than 46 minutes at 5% significance level."
}
cat("\nConclusion:", conclusion, "\n")
