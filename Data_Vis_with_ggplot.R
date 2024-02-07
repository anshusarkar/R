
library('ggplot2') # The word ggplot stands for grammer of graphics

library('palmerpenguins')

ggplot(data=penguins) + geom_point(mapping = aes ( x = flipper_length_mm, y = body_mass_g))

# + Operator is used to add layers to functions 

# a geom in R stands for geometric data

# mapping function used to determine aesthetics to geom_point using aes function

# Even C has graphics library 

data("penguins")

ggplot(data = penguins) + geom_point(mapping = aes ( x = bill_length_mm, y = bill_depth_mm, color = species)) # parameter color can be added through an uniquely identifying function

ggplot(data = penguins) + geom_point(mapping = aes ( x = bill_length_mm, y = bill_depth_mm, color = species , shape = species)) # Additionally shapes parameter can be used to differenceat the plots

ggplot(data = penguins) + geom_point(mapping = aes ( x = bill_length_mm, y = bill_depth_mm, color = species , shape = species , size = species)) # Also species parameter can be added to determine a specific parameter

