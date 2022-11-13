# title: "K-means Clustering"
# author: "Said Sharify"
# date: "2022-08-08"
# output: html_document

# Generate 44 random numbers
X <- runif(44)
X

# Generate another 44 random numbers
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

# In order to understand the structure of kmeans cluster,
# we will use the animation package here.
install.packages("animation")
library(animation)
kAnimat <- kmeans.ani(XandY, 4)


# Look into the data
# Check the cluster number
kclustr$cluster

# Check the centers
kclustr$centers

# Lower the value of tot.withinss, the better it is. 
# This means more similarity and closeness.



