# 4(c) TRANSFORMATION: EXERCISES

# QUESTION 1
library(datasets)
ChickWeight
names(ChickWeight)

ggplot(ChickWeight) + 
  geom_histogram(bins = 40) + 
  aes(x = weight)


scaled.weights <- data.frame(ChickWeight$weight)

ggplot(scaled.weights) + 
  geom_histogram(bins = 40) + 
  aes(x = ChickWeight.weight)


# OBSERVATIONS:
# THE DISTRIBUTIONS ARE EXACTLY THE SAME - THE ONLY THING STANDARDIZING THE DATA DID WAS ADJUSTING THE RANGE OF THE SAMPLES

qqnorm(ChickWeight$weight, distribution = qnorm)

qqnorm(scale(ChickWeight$weight))

nrow(ChickWeight)

structure(ChickWeight)


qqline(ChickWeight$weight)

test.weight <- transform(ChickWeight, )
