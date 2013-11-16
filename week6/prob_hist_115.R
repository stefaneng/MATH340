library(ggplot2)

y <- 0:2

prob <- dhyper(0:2, 2, 4, 3)

Y <- data.frame(y,prob)

ggplot(Y, aes(x = factor(y), y = prob)) + 
    geom_bar(stat = "identity") +
    xlab("Defects Observed") + 
    ylab("Probability")
