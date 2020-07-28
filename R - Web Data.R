install.packages("RCurl")
install.packages("XML")
install.packages("stringr")
install.packages("plyr")

library("RCurl")
library("XML")
library("stringr")
library("plyr")

#Input Data
#Read the URL.

url <- "https://www.bps.go.id/"


# Gather the html links present in the webpage.
links <- getHTMLLinks(url)


