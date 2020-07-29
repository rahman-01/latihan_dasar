#In contrast to other programming languages like C and java in R, the variables are not declared as some data type. The variables are assigned with R-Objects and the data type of the R-object becomes the data type of the variable. There are many types of R-objects. The frequently used ones are ???

#Vectors
#Lists
#Matrices
#Arrays
#Factors
#Data Frames

#Logical TRUE, FALSE
v <- TRUE 
print(class(v))

#Numeric 12.3, 5, 999
v <- 23.5
print(class(v))

#Integer 2L, 34L, 0L
v <- 2L
print(class(v))

#Complex 	3 + 2i
v <- 2+5i
print(class(v))

#Raw "Hello" is stored as 48 65 6c 6c 6f
v <- charToRaw("Hello")
print(class(v))


#Vectors
# Create a vector.
apple <- c('red','green',"yellow")
print(apple)

# Get the class of the vector.
print(class(apple))

#Lists
# Create a list.
list1 <- list(c(2,5,3),21.3,sin)

# Print the list.
print(list1)

#Matrices
# Create a matrix.
M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)

#Arrays
# Create an array.
a <- array(c('green','yellow'),dim = c(3,3,2))
print(a)

#Factors
apple_colors <- c('green','green','yellow','red','red','red','green')

# Create a factor object.
factor_apple <- factor(apple_colors)

# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))


#Data  Frames
# Create the data frame.
BMI <- 	data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)
print(BMI)