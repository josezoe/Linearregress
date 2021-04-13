
library(tidyverse)

women=women

# let plot the data set 
plot(women$height,women$weight)


# this plot show a linear regression of heightvs weight 

# building model
lmwomen=lm(weight~height,data=women)
lmwomen
# weight =-87.52+3.45*height

# abline or regression line for the model 
abline(lm(weight~height,data=women),col="red",lwd=2)

summary(lmwomen)

> summary(lmwomen)

# Call:
#   lm(formula = weight ~ height, data = women)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -1.7333 -1.1333 -0.3833  0.7417  3.1167 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept) -87.51667    5.93694  -14.74 1.71e-09 ***
#   height        3.45000    0.09114   37.85 1.09e-14 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 1.525 on 13 degrees of freedom

# Multiple R-squared:  0.991,	Adjusted R-squared:  0.9903 
# F-statistic:  1433 on 1 and 13 DF,  p-value: 1.091e-14


#Predicting thhe value of weight with height 

range(women$weight)
range(women$height)

# create new data 
newdata=data.frame(height=c(58,75,80,85))

predictweight=predict(lmwomen,newdata)
predictweight
newdata$height
# newdata$height
# 58     75       80      85
# 1        2        3        4 
# 112.5833 171.2333 188.4833 205.7333
plot(lmwomen)
