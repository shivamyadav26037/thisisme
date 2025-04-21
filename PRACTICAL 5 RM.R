df <- data.frame(hours=c(1, 1, 2, 2, 2, 3, 4, 4, 4, 5, 5, 5, 6, 6, 7, 8),
                 score=c(48, 78, 72, 70, 66, 92, 93, 75, 75, 80, 95, 97, 90, 96, 99, 99))
#fit simple linear regression model
model <- lm(score ~ hours, data = df)
#view summary of model
summary(model)
#Call:
  lm(formula = score ~ hours, data = df)
  
  plot(fitted(model), resid(model), xlab='Fitted Values', ylab='Residuals')
  #add a horizontal line at 0 
  abline(0,0)
  
  #install.packages("lmtest")
  #load lmtest package
  library(lmtest)
  #perform Breusch-Pagan test
  bptest(model)
  
  #define weights to use
  wt <- 1 / lm(abs(model$residuals) ~ model$fitted.values)$fitted.values^2
  #perform weighted least squares regression
  wls_model <- lm(score ~ hours, data = df, weights=wt)
  #view summary of model
  summary(wls_model)
  #Call:
    lm(formula = score ~ hours, data = df, weights = wt)
    
   
    #Example 1: Manually Creating an Indicator Variable
     # Sample data
    gender <- c("Male", "Female", "Male", "Female", "Male")
    score <- c(80, 75, 90, 70, 85)
    # Create indicator variable manually
    gender_male <- ifelse(gender == "Male", 1, 0)
    # Build model using indicator variable
    model <- lm(score ~ gender_male)
    summary(model)
    
    #Example 2: Let R Handle the Factor Automatically
    # Convert to factor
    gender_factor <- factor(gender)
    # R will automatically create dummy variables (reference coding)
    model2 <- lm(score ~ gender_factor)
    summary(model2)
   
      # Set "Female" as reference
      gender_factor <- relevel(gender_factor, ref = "Female")
    model3 <- lm(score ~ gender_factor)
    summary(model3)
    
    
    #Example 3: Multiple Categories (e.g., Education Levels)
    education <- c("High School", "Bachelor", "Master", "Bachelor", "High School")
    education_factor <- factor(education)
    # R will automatically create dummy variables for Bachelor and Master (reference: High  School)
model4 <- lm(score ~ education_factor)
summary(model4)

model.matrix(~ gender_factor)
model.matrix(~ education_factor)