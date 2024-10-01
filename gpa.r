#******************************************************************************
# WILL HAVE TO CHANGE setwd TO YOUR OWN DIRECTORY IF NOT USING GITHUB ENVIRONMENT
#setwd("~/Desktop/School/Math 425 Applied Stats Models/MATH425-Assignment-2")
#******************************************************************************

data = read.csv("data/gpa_act_data.csv", header=T)

# x = ACT SCORE
x = data$act
# y = GPA
y = data$gpa

# Set graph to 1x1
par(mfrow = c(1, 1))


model=lm(y~x,data=data)
anova(model)
#For the F test we look at the P-value of V2. Since it is less than 0.05, we reject 
#the null hypothesis and declare that there is a correlation

summary(model)
r.squared=summary(model)$r.squared
correlation.coefficient=sqrt(r.squared)
r.squared
#0.0726
correlation.coefficient
cor(data)
#0.2694
