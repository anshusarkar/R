# A vector in R is collection of data elements sotred in a sequence
# that are of same types 
# However Vectors are primarly of two type 'Atomic' and 'Numeric'
# Atmoics are two types 'Logical' and 'Character'
# Numerics are two types 'Integer' and 'Double'
# c() is the function that get's used to assing values to vectors

int_vec <- c(12L, 15L, 16L, 17L) # For integer type 'L' must be assinged after the input

print(int_vec)

float_vec <- c(12.5, 15.5, 15.5)

print(float_vec)

# likewise a vector can be made with 'string' and 'Logicals'

logical_vec <- c(TRUE, FALSE, TRUE, FALSE)

print(logical_vec)

char_vec <- c("Hello", "World", "!")

print(char_vec)

#To determine any length of a vector 

print(length(char_vec))

#To determine the type of a vector

print(typeof(c(3.4 , 4.3)))
print(typeof(int_vec))

print(is.logical(logical_vec))
print(is.integer(int_vec))
print(is.character(logical_vec))

