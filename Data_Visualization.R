install.packages('Tmisc')

library(Tmisc)

data(quartet)

View(quartet)

quartet %>% 
  grop_by(set) %>% 
  sumarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

ggplot(quartet, aes(x,y) + geom_point() + geom_smooth(method= m, se=FALSE) + facet_wrap(-set) )


