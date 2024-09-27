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
par(mfrow = c(1, 1))
