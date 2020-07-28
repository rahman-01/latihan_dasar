#Getting and Setting the Working Directory
# Get and print current working directory.
print(getwd())

# Set current working directory.
setwd("/Belajar Data Scientis/R praktek/lat_dasar")

# Get and print current working directory.
print(getwd())

#Reading a CSV File
data <-read.csv("input.csv")
print(data)

#Analyzing the CSV File
data <- read.csv("input.csv")
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

#Get the maximum salary
data <- read.csv("input.csv")

# Get the max salary from data frame.
sal <- max(data$salary)
print(sal)

#Get the details of the person with max salary
# Create a data frame
data <- read.csv("input.csv")

# Get the max salary from data frame.
sal <- max(data$salary)

# Get the person detail having max salary.
retval <- subset(data,salary == max(salary))
print(retval)


#Get all the people working in IT department
# Create a data frame.
data <- read.csv("input.csv")

retval <- subset(data,dept == "IT")
print(retval)

#Get the persons in IT department whose salary is greater than 600
#create data frame
data <- read.csv("input.csv")

info <- subset(data,salary > 600 & dept == "IT")
print(info)

#Get the people who joined on or after 2014
data <-read.csv("input.csv")

retval <-subset(data,as.Date(start_date) > as.Date("2014-01-01"))
print(retval)

#Writing into a CSV File
#Create a data frame
data <-read.csv("input.csv")
retval <- subset(data,as.Date(start_date) > as.Date("2014-01-01"))

# Write filtered data into a new file.
write.csv(retval,"output.csv")
newdata <-read.csv("output.csv")
print(newdata)

# Create a data frame.
data <- read.csv("input.csv")
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))

# Write filtered data into a new file.
write.csv(retval,"output.csv", row.names = FALSE)
newdata <- read.csv("output.csv")
print(newdata)



