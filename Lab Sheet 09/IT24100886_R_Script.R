setwd('C:\\Users\\OneDrive\\Documents\\IT')
getwd()

weights <- read.table("ExerciseLaptopsWeights.txt", header=TRUE)
attach(weights)

# Part 1

population_mean <- mean(weights$Weight)
population_sd <- sd(weights$Weight)

print(population_mean)
print(population_sd)


#Part 2
sample_means <- numeric(25)
sample_sds <- numeric(25)

for(i in 1:25) {
  sample <- sample(weights$Weight, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample)
  sample_sds[i] <- sd(sample)
}

print(sample_means)
print(sample_sds)


# Part 3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

print(mean_of_sample_means)
print(sd_of_sample_means)

print(population_mean)
print(population_sd)

