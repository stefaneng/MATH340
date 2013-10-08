# For problem 41

# Sum up the binomial distributions
# Where our x is greater than 10, but less than 15
# So the probability of guessing the correct answer more than 10 times is:
answer <- sum(dbinom(10:15, size=15, prob=(1/5)))
# .0001...
rounded <- round(answer, digits=3)
# Basically a zero percent change
                         

# For problem 61 part c
# Want a sample of people so there is a probability of 90%
# that at least 5 of the people have Rh

# Function that can take in vector that will see what probability of having
# at least 5 people wiht Rh
unknownSize <- function(n) {
    sum <- NULL   
    for(k in n) {
        sum <- c(sum,sum(dbinom(5:k, size=k, prob=.8)))
    }
    return(sum)
}

# Run untill we find the first sample size where probability is bigger than .90
solution <- function() {
    # Has to be bigger than 5
    i <- 5
    while(.9 > unknownSize(i)) {
        i <- i + 1        
    }
    return(i)
}

