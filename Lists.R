# Lists in R are diffrent from python the can hold any types of 
# data in them meaning they can hold both integer, float, logical and character 
# data in them even lists

l <- list("a", 1L, 2.5, TRUE )

print(typeof(l))

print(l)

# example a list contanig a list

a <- list(list(list(1.5, 5 ,"cat"), "food"), 1.56)

print(a)

# to determine datatypes in a list str() get's used

print(str(l))

print(str(a)) # a is list of list of a list

#nameing of elements in a list

x <- list('name' = 'Anshu', 'tittle' = 'Sarkar') # any types of values can be assinged to it

print(x)



