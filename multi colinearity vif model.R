# Step 1: Load dataset
data(mtcars)

# Step 2: Fit the linear regression model
model <- lm(mpg ~ disp + hp + wt, data = mtcars)

# Step 3: Load car package (for VIF)
install.packages("car")       # Run only once
library(car)

# Step 4: Calculate VIF
vif(model)
