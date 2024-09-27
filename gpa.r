#******************************************************************************
# WILL HAVE TO CHANGE setwd TO YOUR OWN DIRECTORY IF NOT USING GITHUB ENVIRONMENT
#setwd("~/Desktop/School/Math 425 Applied Stats Models/MATH425-Assignment-2")
#******************************************************************************

gpa_act_data = read.csv("data/gpa_act_data.csv", header=T)

# x = ACT SCORE
x = gpa_act_data$act
# y = GPA
y = gpa_act_data$gpa

# Set graph to 1x1
par(mfrow = c(1, 1))
