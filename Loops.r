# R program to demonstrate the use of for loop
 
# using for loop 

# for loop in the r is funniest 

# It's letaraly Python + C :)

# It's not necessary to loop through data types to pint them just print() function can be used for it

for (val in 1: 5)
{
    # statement
    print(val)
}

# Looping through vector

vec  <- c('A' , 'B' , 'C' ,'D')

for(i in vec){

    print(i)
}

# Looping through List

my_list <- list(1, 2, 3, 4, 5)

for (i in seq_along(my_list)) {
  current_element <- my_list[[i]]
  print(paste("The current element is:", current_element)) # past() is used to past a string into print() funtion
}

# Looping through Matrix

mat <- matrix(1:9 , nrow = 3)

for (i in seq_len(nrow(mat)))
{
    for (j in seq_len(ncol(mat)))
    {
        ele <- mat[i, j]
        print(paste("The current element is:", ele))
    }
}

# Looping through Data.frame

df <- data.frame (
    x = c(1,2,3,4,5,6), 
    y = c(1,2,3,4,5,6), 
    z = c(1,2,3,4,5,6) )


for(i in seq_len(nrow(df))){
    ele <- df[i,]
    print(paste(ele))
}


# While loops

val <- 1
while(val <= 10){
    print(val)
    val=val+1
}

# Repet loops i.e. do while in R

v <- 1

repeat{

    print(v)
    v <- v +1

    if(v >= 10){

        break # This statement describes that break the loop if value is greater than 10

    }
}

# break statement in R

for(i in 1:10)
{
    print(i)

    if(i == 4){
        break
    }
}