original <- c(-2, 1, -3, 2, 3, 5, 4, 6, 5, 6, 7)
predicted <- c(-1, -1, -2, 2, 3, 4, 4, 5, 5, 7, 7)

d = original - predicted
mse <- mean((d)^2)
mae <- mean(abs(d))
rmse <- sqrt(mse)

R2 = 1-((sum(d)^2)/sum(original-mean(original))^2)
cat("MAE:",mae,"\n","MSE:",mse,"\n","RMSE:",rmse,"\n","R-squared:",R2)

library(lmtest)
x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c(2,5,9,13,18,24,31,39,48,60) + rnorm(10, mean = 0, sd = x)
model<- lm(y~x)

plot(x,residuals(model),main="Residual vs X ",ylab = "Residuals",xlab = "X")
abline(h="0",col="red")
bptest(model)

library(stats)
sales_data <- c(100, 102, 104, 103, 105, 107, 106, 108, 110, 112)
acf(sales_data,main="Autocorrelation of Salse Data")
acf_values<-acf(sales_data,plot="FALSE")
print(acf_values)


model <- lm(mpg ~ disp + hp + wt, data = mtcars)
library(car)
vif(model)


data(mtcars)  # Load the dataset

# Fit linear model
model <- lm(mpg ~ disp + hp + wt, data = mtcars)
summary(model)
# Install if not already installed
# install.packages("car")
library(car)
vif(model)

install.packages("car")
library(car)
X1<-c(1,2,3,4,5,6,7,8,9,10)
X2<-X1*2+rnorm(10, mean=0, sd=0.5)
Y<-3+2*X1+1.5*X2+rnorm(10, mean=0, sd=1)
model<-lm(Y~X1+X2)
vif_values<-vif(model)
print(vif_values)




x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) 
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) 
model<-lm(y~x)
summary(model)
new_data <- data.frame(x = 170)
predicted_weight <- predict(model , new_data)
predicted_weight


data(mtcars)
mtcars$am <- factor(mtcars$am)
model <- glm(am ~ mpg+ disp + hp + wt ,family = binomial(), data = mtcars)
summary(model)