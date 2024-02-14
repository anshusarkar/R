
#install.packages('tidyverse')

library('ggplot2') # The word ggplot stands for grammer of graphics

library('palmerpenguins') # select library('') and run them if code is saying could not find function "ggplot"

ggplot(data=penguins) + geom_point(mapping = aes ( x = flipper_length_mm, y = body_mass_g))

# + Operator is used to add layers to functions 

# a geom in R stands for geometric data

# mapping function used to determine aesthetics to geom_point using aes function

# Even C has graphics library that's called <graphics.h>

data("penguins")

ggplot(data = penguins) + geom_point(mapping = aes ( x = bill_length_mm, y = bill_depth_mm, color = species)) # parameter color can be added through an uniquely identifying function

ggplot(data = penguins) + geom_point(mapping = aes ( x = bill_length_mm, y = bill_depth_mm, color = species , shape = species)) # Additionally shapes parameter can be used to differenceat the plots

ggplot(data = penguins) + geom_point(mapping = aes ( x = bill_length_mm, y = bill_depth_mm, color = species , shape = species , size = species)) # Also species parameter can be added to determine a specific parameter

# Applying color , shape , species to entire data dataset insted of specific column

ggplot(data = penguins) + geom_point(mapping = aes ( x = flipper_length_mm, y = body_mass_g) , color = 'green')

# In R geom are the set of functions that helps to represent data in various manner
# such as geom_point is used to represent data in the form of dots i.e scretter plots
# and geom_bar to represent data in geom_line 

ggplot(data=penguins) + geom_smooth(mapping = aes ( x = flipper_length_mm, y = body_mass_g))

# Additionaly using + another layer of geom can be added 

ggplot(data=penguins) + geom_smooth(mapping = aes ( x = flipper_length_mm, y = body_mass_g)) + geom_point(mapping = aes ( x = flipper_length_mm, y = body_mass_g), color = '#0080ff') 

# Bar graphs

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, color = cut , fill = clarity)) # color = cut adds colored boarded among the bars
                                            # or fill = cut can be added to to fill the bars with color
                                            # or fill can be assigned with clarity 
# To vis data with each data categorically separated from each other
# facet functions can be used

ggplot(data = penguins)+ 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))+
  facet_wrap(~species)

# facet_wrap() vises data in a categorical manner 

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, color = cut , fill = clarity))+
  facet_wrap(~cut)

# facet_grid() vises data in the from of grids

ggplot(data = penguins)+ 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))+
  facet_grid(sex~species)

# Annotations in R 

ggplot(data = penguins)+
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length" , subtitle = "Report by Mr. Anshu Sarkar" , caption = "Data collected by Dr. Kristen Gorman" )+
  annotate("text", x=220 , y=3500, label = "The Gentoos are the largest" , color = "Blue" , fontface = "bold" , size = 4.5 , angle = 30)

# If all the code is getting too long certain portion of the code can be assigned to a variable

# That would help in the time when certain codes of the script is meant to repeat

# To save a plot as an image or as a PDF the Export option can be used to to save it

# Or ggsave() can be used to do so 

ggsave("Three Penguin Species.png")
