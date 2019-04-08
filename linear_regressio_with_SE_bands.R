library(ggplot2)
library(plyr)
# load data 

df <- read.csv('/home/robert/Desktop/linear_regression_examples/dummy_data.csv', sep = ',')



#the normal plot. However we want to have three times the upper and lower line of the standarderror of the regression line.

ggplot(df, aes(x=Petal.width, y=Petal.length), group = Observer) + geom_point(aes(fill=Species))+ facet_wrap(~Observer, scales = 'free')+
  geom_smooth(method='lm')

# from ggplot book 
# qplot(carat, price, data = diamonds, geom = "smooth",
#       colour = color)
# dense <- subset(diamonds, carat < 2)
# qplot(carat, price, data = dense, geom = "smooth",
#       colour = color, fullrange = TRUE)
# 
# 
# 
# library(mgcv)
# smooth <- function(df) {
#   mod <- gam(price ~ s(carat, bs = "cs"), data = df)
#   grid <- data.frame(carat = seq(0.2, 2, length = 50))
#   pred <- predict(mod, grid, se = T)
#   grid$price <- pred$fit
#   grid$se <- pred$se.fit
#   grid
# }
# smoothes <- ddply(dense, .(color), smooth)
# qplot(carat, price, data = smoothes, colour = color,
#       geom = "line")
# qplot(carat, price, data = smoothes, colour = color,
#       geom = "smooth", ymax = price + 2 * se, ymin = price - 2 * se)
# 
# 
# 
