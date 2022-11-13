# title: "K-means Clustering"
# author: "Said Sharify"
# date: "2022-08-08"
# output: html_document
---

install.packages("Rserve")
library(Rserve)

# for Tableau example
install.packages("mvoutlier")
install.packages("plyr")

Rserve()

# Generate 44 random numbers
X <- runif(44)
X

# Generate anothr 44 random numbers
Y <- runif(44)
Y

# Combine them
XandY <- cbind(X,Y)
XandY

# Plot the result
plot(XandY)

# kmeans clustring
kclustr <- kmeans(XandY, 4)
str(kclustr)






