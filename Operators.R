# Operators in R
# Arithmetic operators + , -  , / , *

quater_1_sales <- 74513.5 # leftwards assignment operator that can be  = too  also <<- works 

84525.2 -> quater_2_sales # rightwards assignment operator even ->> works

total_sales <- (quater_1_sales + quater_2_sales)

print(total_sales)

# Logical Operators & , && , | , || , !

X <- 12

print(X < 10 && X < 9)

print(X > 10 || X > 9)

print(!X)

# Conditional operators

x <- 10

if(x > 0){
	  print("X is a positive number !")
}
elseif( x > 9 ){
	  print("X is greater than 9 ")
}else{
	  print("Value isn't assinged to X")
}







