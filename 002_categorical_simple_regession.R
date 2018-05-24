#####  Penn St ####
#####  4 categorical variables ####
rm(list=ls())
library(tidyverse)

N <- 12   # number of data points
x <- c(1,2,3,4)   # gpa, 4 levels
# True (exact) population equation (usually unknown)
B0 <- 1
B1 <- 5 

## True y
y <- B0 + B1*x

t <-tibble(x=x,
           y=y)
## plot
g <- ggplot(t, aes(x=x,y=y)) + geom_point(color="black") +
  geom_line(color="red")


## generate sample data
e <- rnorm(12,0,1)
s.x <- rep(x,3)
s.y <- rep(y,3) + e
s <- tibble(x=s.x,y=s.y)
m<- lm(s.y ~ s.x)
h <- g + geom_point(data=s, mapping=aes(x=x, y=y) , color="blue") 
k <- h +  geom_smooth(data=s, mapping=aes(x=x,y=y), method="lm", se = FALSE, alpha=0.2, linetype=3)
k
