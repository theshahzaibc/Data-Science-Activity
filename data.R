library("graphics")
library(lattice)
library(ggplot2)

plot(airquality$Ozone)

plot(airquality$ReportYear, airquality$Ozone)

plot(airquality)

plot(airquality$Ozone, type='b')

plot(airquality$Ozone, type='h')


plot(airquality$Ozone, xlab='Ozone Levels', main='Ozone Con in Air')


plot(airquality$Ozone, xlab='Ozone', ylab='YEAR', main='Ozone Con in Air', horiz=TRUE)

plot(airquality$Ozone, xlab='Ozone', ylab='YEAR', main='Ozone Con in Air', horiz=FALSE)

hist(airquality$Solar.R)

hist(airquality$Solar.R, xlab='Solar Rad', main='Ozone Con in Air', col='red')

boxplot(airquality[, 0:4], main='Multi box')



attach(mtcars)
head(mtcars)
gear_factor<-factor(gear,levels=c(3,4,5),
                    labels=c("3gears","4gears","5gears")) 

cyl_factor <-factor(cyl,levels=c(4,6,8),
                    labels=c("4cyl","6cyl","8cyl"))

densityplot(~mpg, main="Density Plot",  xlab="Miles per Gallon")
splom(mtcars[c(1,3,4,5,6)], main="MTCARS Data")
xyplot(mpg~wt|cyl_factor*gear_factor,  
       main="Scatterplots : Cylinders and Gears",  
       ylab="Miles/Gallon", xlab="Weight of Car")

mtcars$gear <- factor(mtcars$gear,levels=c(3,4,5), labels=c("3gears", "4gears", "5gears"))  
mtcars$am <- factor(mtcars$am,levels=c(0,1), labels=c("Automatic","Manual"))  
mtcars$cyl <- factor(mtcars$cyl,levels=c(4,6,8), labels=c("4cyl","6cyl","8cyl"))

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) + geom_point()

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg, color = as.factor(cyl))) + geom_point()

ggplot(data = mtcars, mapping = aes(x = wt, y = mpg, size = qsec)) + geom_point()

p  <-  ggplot(mtcars,aes(mpg, wt, shape  =  factor(cyl)))
p + geom_point(aes(colour  =  factor(cyl)), size  =  4) + geom_point(colour  =  "grey90", size  =  1.5)


