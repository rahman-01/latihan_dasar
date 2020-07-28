#Rules Applied in String Construction

a <- 'start and end with single quote'
print (a)

b <- "start and end with double quotes"
print(b)

c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quote'
print(d)

#String Manipulation
a <- "hello"
b <- 'how'
c <- "are you ?"

print(paste(a,b,c))
print(paste(a,b,c, sep = "-"))
print(paste(a,b,c, sep = "", collapse = ""))

#Formatting numbers & strings - format() function
# Total number of digits displayed. Last digit rounded off.
result <-format(23.123456789, digit = 9)
print(result)


# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47,nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(6)

# Numbers are padded with blank in the beginning for width.
result <- format(13.7,width =6)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)


# Justfy string with center.
result <- format("Hello", width = 8, justify = "c")
print(result)

#Counting number of characters in a string - nchar() function
result <- nchar("Count the number of characters")
print(result)

#Changing the case - toupper() & tolower() functions

# Changing to Upper case.
result <-toupper("Canging To Upper")
print(result)

# Changing to lower case.\
result <- tolower("Changing To Lower")
print(result)

#Extracting parts of a string - substring() function
# Extract characters from 5th to 7th position.
result <- substring("Extract", 5, 7)
print(result)
