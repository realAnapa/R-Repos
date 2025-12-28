library("ggplot2")
library("stats")

rm(list = ls())
gc()

(X <- matrix(1:4,2))

"["(X, ,2)
X[,2]

trace(sum)
hist(rnorm(100)) # shows about 3-4 calls to sum()
untrace(sum)

mat <- data.frame(matrix(rnorm(1000),250,4))

str(mat)

p <- ggplot(mat) + aes(y=X1)+geom_boxplot()

factor()

boxplot.default(mat, use.cols = T)

zscore <- function(x){
  x1 <- mean(x)
  x2 <- sd(x, na.rm = T)
  x3 <- (x - x1)/x2
  return(x3)
}

zscore(mat$X1)

results <- apply(mat, 2, zscore)

boxplot(results)
