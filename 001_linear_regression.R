# https://onlinecourses.science.psu.edu/stat462/node/79/


x <- read.delim("./data/index.txt")
x

plot(x$wt, x$ht)
model <- lm (x$ht ~ x$wt)
str(model)
