# Load the dataset
data(mtcars)

# Fit a 2nd-degree polynomial regression model
model_poly <- lm(mpg ~ wt + I(wt^2), data = mtcars)

# Summary of the model (optional)
summary(model_poly)

# Plot the original data
plot(mtcars$wt, mtcars$mpg,
     main = "2nd-Degree Polynomial Regression",
     xlab = "Weight (wt)",
     ylab = "Miles Per Gallon (mpg)",
     pch = 19,
     col = "blue")

curve(predict(lm(mpg ~ wt + I(wt^2), data=mtcars), data.frame(wt=x)), add=TRUE, col="red", lwd=2)


# Load the dataset
data(mtcars)

# Fit a 3rd-degree polynomial regression model
model_poly <- lm(mpg ~ wt + I(wt^2)+ I(wt^3), data = mtcars)

# Summary of the model (optional)
summary(model_poly)

# Plot the original data
plot(mtcars$wt, mtcars$mpg,
     main = "3nd-Degree Polynomial Regression",
     xlab = "Weight (wt)",
     ylab = "Miles Per Gallon (mpg)",
     pch = 19,
     col = "blue")

curve(predict(lm(mpg ~ wt + I(wt^2)+ I(wt^3), data=mtcars), data.frame(wt=x)), add=TRUE, col="red", lwd=2)
