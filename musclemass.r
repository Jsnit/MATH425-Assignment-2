#******************************************************************************
# WILL HAVE TO CHANGE setwd TO YOUR OWN DIRECTORY IF NOT USING GITHUB ENVIRONMENT
#setwd("~/Desktop/School/Math 425 Applied Stats Models/MATH425-Assignment-2")
#******************************************************************************

muscle_age_data = read.csv("data/musclemass_age_data.csv", header=T)

# x = AGE
x = muscle_age_data$age
# y = MUSCLEMASS
y = muscle_age_data$musclemass

# Set graph to 1x1
#par(mfrow = c(1, 1))

model = lm(y~x)
summary(model)

p_value <- summary(model)$coefficients[2, 4]

print(paste("P-value:", p_value))

# 95% confidence interval for the slope
confint(model, level = 0.95)
# Extract the slope
slope <- coef(model)[2]

# Print slope
print(paste("Estimated decrease in muscle mass for a one-year increase in age:", slope))
if(p_value < 0.05) {
  print("Reject the null hypothesis. There is significant evidence of a negative linear relationship between age and muscle mass.")
} else {
  print("Fail to reject the null hypothesis. There is not enough evidence to conclude a significant negative relationship between age and muscle mass.")
}


# Find SSE & SSR for R-Squared value
sse <- sum((fitted(model) - muscle_age_data$musclemass)^2)
sse
# 3874.77

#find ssr
ssr <- sum((fitted(model) - mean(muscle_age_data$age))^2)
ssr
# 49077.5

# find sst
#find sst
sst <- ssr + sse
sst

# R-Squared = 1-SSE/SST
r2 = 1-(sse/sst)
r2
# 0.9268