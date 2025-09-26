# Question 1

# Set the working directory
setwd("C:\\Users\\senes\\Desktop\\IT24102269-Lab08")

# Import the dataset
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

# Calculate the population mean of laptop bag weights
popmn <- mean(Weight.kg.)

# Calculate the population variance
popvar <- var(Weight.kg.)

popmn
popvar


# Question 2

# Initialize empty containers for samples and sample names
samples <- c()
n <- c()

# Loop to draw 25 samples of size 6 with replacement
for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)   # Sample of size 6
  samples <- cbind(samples, s)                 
  n <- c(n, paste("s", i))                     
}

# Assign column names to the sample matrix
colnames(samples) <- n

# Calculate sample means and variances for each sample
s.means <- apply(samples, 2, mean)
s.vars <- apply(samples, 2, var)

s.means
s.vars

# Question 3:
# Mean of the 25 sample means
samplesmean <- mean(s.means)

# Variance of the 25 sample means
samplevars <- var(s.means)

# Display population mean and mean of sample means
popmn
samplesmean

# Where n = 6 (sample size)
truevar <- popvar / 6

samplevars
truevar