setwd("C:/Users/IT24100886/Desktop/IT24100886")
getwd()

Delivery_Times <- read.table("ExerciseLab05.txt", header = TRUE, sep = "\t")
str(Delivery_Times)
names(Delivery_Times)<-c("x1")

hist(Delivery_Times$x1, 
     breaks = seq(20, 70, length.out = 10) , 
     right = TRUE, 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Frequency", 
     col = "lightblue")


# 3. Comment on the shape of the distribution
# The histogram shows the distribution of delivery times. Based on the data, the distribution 
# appears to be slightly right-skewed, with more delivery times clustered around 30-50 minutes 
# and fewer occurrences towards the higher end (60-70 minutes). There is no strong evidence 
# of bimodality or symmetry, and the distribution does not appear perfectly normal.

# 4. Draw a cumulative frequency polygon (ogive)
freq_table <- table(cut(Delivery_Times$x1, breaks = seq(20, 70, length.out = 10), right = TRUE))
cum_freq <- cumsum(freq_table)
breaks <- seq(20, 70, length.out = 10)

plot(breaks, c(0, cum_freq), type = "l", 
     main = "Cumulative Frequency Polygon (Ogive) of Delivery Times", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency", 
     col = "blue", 
     lwd = 2)
points(breaks, c(0, cum_freq), pch = 16, col = "blue")

