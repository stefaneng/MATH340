# Histogram for homework 4
# Problem 3.9 part b

library("ggplot2")

y0 <- (.95)^3
y1 <- (.95)^2 * .05
y2 <- (.95) *(.05)^2
y3 <- (.05)^3
y <- c(y0,y1,y2,y3)
x <- c(0,1,2,3)

df = data.frame(errors=x, prob=y)


hist <- ggplot(df, aes(x = factor(x), y = y), color=y) +
    geom_bar(stat="identity") +
    labs(title = "Probability Histogram") +
    xlab("Number of Errors Detected") +
    ylab("P(Y=y)")

ggsave(filename="hist_prob9.png", plot=hist)
