# Dates and time in R
# Importing the library using library() function

library(tidyverse)
library(lubridate)

today()

now()

# To convert Strigs into date 

ymd("2016-01-19") # in yyyy-mm-dd format all will get converted 

mdy("January 19th, 2018") 

dmy("19-Jan-2018")

ymd(20211901)
