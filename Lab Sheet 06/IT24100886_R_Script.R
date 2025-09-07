setwd('C:\\Users\\hasit\\OneDrive\\Documents\\SLIIT\\Work\\Y2S1\\IT2120 - Probability and Statistics\\Lab06\\IT24100886')
getwd()

n <- 50; p <- 0.85
prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)    
prob_at_least_47_check <- sum(dbinom(47:50, size = n, prob = p))

lambda <- 12
prob_exact_15 <- dpois(15, lambda = lambda)                 

cat("---- ANSWERS ----\n")
cat("(1.i) X ~ Binomial(n=50, p=0.85)\n")
cat(sprintf("(1.ii) P(X >= 47): %.10f\n", prob_at_least_47))
cat(sprintf("       (check)   : %.10f\n", prob_at_least_47_check))
cat("(2.i) X: # calls in one hour\n")
cat("(2.ii) X ~ Poisson(lambda=12)\n")
cat(sprintf("(2.iii) P(X = 15): %.10f\n", prob_exact_15))
