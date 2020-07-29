#install package

install.packages("tm")  # for text mining
install.packages("SnowballC") # for text stemming
install.packages("wordcloud") # word-cloud generator 
install.packages("RColorBrewer") # color palettes
install.packages("tidytext") 
install.packages("textclean") 

#load package
library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)
library(tidytext)
library(textclean)

# Read the text file from internet
filePath <- "http://www.sthda.com/sthda/RDoc/example-files/martin-luther-king-i-have-a-dream-speech.txt"
text <- readLines(filePath)

#Load the data as a corpus
texts <- Corpus(VectorSource(text))


#Inspect the content of the document
inspect(texts)


#Text transformation
toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
texts <- tm_map(texts, toSpace, "/")
texts <- tm_map(texts, toSpace, "@")
texts <- tm_map(texts, toSpace, "\\|")

#Cleaning the text
inspect(texts)

# Convert the text to lower case
texts <- tm_map(texts, content_transformer(tolower))
# Convert the text to lower case
texts <- tm_map(texts, content_transformer(tolower))
# Remove numbers
texts <- tm_map(texts, removeNumbers)
# Remove english common stopwords
texts <- tm_map(texts, removeWords, stopwords("english"))
# Remove your own stop word
# specify your stopwords as a character vector
texts <- tm_map(texts, removeWords, c("blabla1", "blabla2")) 
# Remove punctuations
texts <- tm_map(docs, removePunctuation)
# Eliminate extra white spaces
texts <- tm_map(texts, stripWhitespace)
# Text stemming
# docs <- tm_map(docs, stemDocument)


#Build a term-document matrix
dtm <- TermDocumentMatrix(texts)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
head(d, 10)


#Generate the Word cloud
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

#Explore frequent terms and their associations
findFreqTerms(dtm, lowfreq = 4)
findAssocs(dtm, terms = "freedom", corlimit = 0.3)

#The frequency table of words
head(d, 10)

#Plot word frequencies
barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")