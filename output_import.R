#R version 3.1.0 (2014-04-10) -- "Spring Dance"
#Copyright (C) 2014 The R Foundation for Statistical Computing
#Platform: x86_64-w64-mingw32/x64 (64-bit)

data <- read.csv('trainLabels.csv')
data <- data[,2]
z <- as.character(data)

asc <- function(x) { strtoi(charToRaw(x),16L) }

Z <- sapply(z, asc)
library(R.matlab)
writeMat('output.mat', y = Z)
