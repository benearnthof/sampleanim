sampleanimation <- function(startn, endn, steps, mean, sd){
  

  
}

startn = 1
endn = 10000
steps = 9999
m <- 0
s <- 50
testseq <- seq.int(from = startn, to = endn, by = round((endn/steps)))
testseq <- c(testseq, endn)
testseq
x <- numeric(length = length(testseq))
y <- numeric(length = length(testseq))
for(i in seq_along(testseq)){
  temp <- rnorm(testseq[i], mean = m, sd = s )
  x[i] <- mean(temp)
  y[i] <- sd(temp)
}
plot(x)
plot(y)
avPlots(lm(prestige~income+education+type, data=Duncan))