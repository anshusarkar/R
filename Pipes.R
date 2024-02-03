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

# Pipes 
# To aaply pipes using shortcut in linux and PC
# press ctrl/command + shift + m

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len,na.rm = T),.group = "drop")
  arrange(len)

