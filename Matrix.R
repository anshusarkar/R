# In R matrix are also a datatype 
# They are allocated using matrix() function
# The function takes two arguments
# One argument is a vector and another is 
# number of rows or number of cloums which is 
# 'ncolum=' or 'nrow='

mat  <- matrix(c(1:10) , ncol = 2 ) # 2X5

print(mat)

mat2 <- matrix(c(1:10) , nrow = 2 ) # 5X2

print(mat2)