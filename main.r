# Install the BSDA package if you haven't already
#install.packages("BSDA")

# Load the BSDA package
library(BSDA)
# Generate random data
data1 <- rnorm(1000, mean = 78, sd = 20)
data2 <- rnorm(1000000, mean = 80, sd = 20)
# Create a histogram
#hist(random_data_1, main = "Histogram of Random Data 1", xlab = "Value", ylab = "Frequency", col = "lightblue", border = "black")
#hist(random_data_2, main = "Histogram of Random Data 1", xlab = "Value", ylab = "Frequency", col = "lightpink", border = "black")

# Perform the T-test
result <- z.test(x = data1, y = data2, alternative = "two-sided", sigma.x = sd(data1), sigma.y = sd(data2), conf.level = 0.95)

# Print the result
print(result)