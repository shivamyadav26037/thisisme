# Height and Weight data
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)  # Height
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)            # Weight

# Fit linear regression model
model <- lm(y ~ x)

# Display the regression equation
summary(model)

# Predict weight for height = 170 cm
new_data <- data.frame(x = 170)
predicted_weight <- predict(model, new_data)

# Print predicted weight
predicted_weight

predict(model, data.frame(x = 170))
# Load dataset
data(mtcars)

# Fit multiple linear regression model
model <- lm(mpg ~ disp + hp + wt, data = mtcars)

# Print the summary to get coefficients
summary(model)


# Load dataset
data(warpbreaks)

# Fit Poisson regression model
# breaks: count data → suitable for Poisson regression
model <- glm(breaks ~ wool + tension, family = poisson(), data = warpbreaks)

# Show summary
summary(model)


# Load dataset
data(mtcars)

# Convert 'am' to factor (binary outcome: 0 = automatic, 1 = manual)
mtcars$am <- factor(mtcars$am)

# Fit logistic regression model
model <- glm(am ~ mpg + hp + wt, family = binomial(), data = mtcars)

# Show summary
summary(model)


# Load necessary library
library(car)

# Load the dataset
data(mtcars)

# Fit the linear model
model <- lm(mpg ~ disp + hp + wt, data = mtcars)

# Calculate VIF
vif(model)


# Given vectors
original <- c(-2, 1, -3, 2, 3, 5, 4, 6, 5, 6, 7)
predicted <- c(-1, -1, -2, 2, 3, 4, 4, 5, 5, 7, 7)

# Calculate Mean Absolute Error (MAE)
MAE <- mean(abs(original - predicted))

# Calculate Mean Squared Error (MSE)
MSE <- mean((original - predicted)^2)

# Calculate Root Mean Squared Error (RMSE)
RMSE <- sqrt(MSE)

# Print the results
cat(" (MAE):", MAE, "\n")
cat(" (MSE):", MSE, "\n")
cat(" (RMSE):", RMSE, "\n")


