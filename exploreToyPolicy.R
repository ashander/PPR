source("PPR_nonStationay_example.r")
# explore optimal policy
x <- c(0,0,0) # all available

# action in first time step
t <- 1
s1 <- getState(x)
a1 <- policy[s1+1, t]
cat("purchase", a1, "\n")
x[a1] <- 1 # purchase 
r1 <- R[s1+1, a1, t]
cat("reward", r1, "\n")

# action in second time step
t <- 2
s2 <- getState(x)
a2 <- policy[s2+1, t]
cat("purchase", a2, "\n")
r2 <- R[s2+1, a2, t]
cat("reward", r2+r1, "\n")

# final reward
x[a2] <- 1 # purchase 
s3 <- getState(x)
r3 <- h[s3+1] # h is the terminal reward
cat("reward", r3 +r2 +r1, "\n")



