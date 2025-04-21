# Load necessary library
library(car)

# Fit linear model
model <- lm(mpg ~ disp + hp + wt, data = mtcars)

# View model summary (optional for understanding)
summary(model)

# Check VIF for multicollinearity
vif_values <- vif(model)
print(vif_values)

# Analyze autocorrelation
# Your sales data
sales_data <- c(100, 102, 104, 103, 105, 107, 106, 108, 110, 112)
acf_values<-acf(sales_data, plot=FALSE)
print(acf_values)
# Analyze autocorrelation
acf(sales_data, main = "ACF Plot of Sales Data")


#Breusch-Pagan test for detecting heteroskedasticity
install.packages("lmtest")
library(lmtest)
x<-c(1,2,3,4,5,6,7,8,9,10)
y<-c(2,5,9,13,18,24,31,39,48,60) + rnorm(10, mean=0, sd=x)
model<-lm(y~x)
plot(x, residuals(model), main="Residuals vs X", ylab="Residuals", xlab="X")
abline(h=0, col="red")
bptest(model)
