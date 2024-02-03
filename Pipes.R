# Pipes in R

data("Toothgrowth")

View(ToothGrowth)

install.packages("dplyr")

libray(dplyr)

# filtering the data

filtered_tg <- filter(Toothgrwth, dose == 0.5)

view(filtered_tg)

# arranging the data in assending order

arrange(filtered_tg, len)

# above functions also can be nested to do same  
# menanig it can be done like this fun(fun())
# Pipes dose the job of fun(fun()) in a new way
# To aaply pipes using shortcut in linux and PC
# press ctrl/command + shift + m
# all above and some extra work was done using pipes

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len,na.rm = T),.group = "drop")
  arrange(len)

