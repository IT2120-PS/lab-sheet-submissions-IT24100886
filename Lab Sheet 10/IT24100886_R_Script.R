setwd("C:\\Users\\hasit\\OneDrive\\Documents\\SLIIT\\Work\\Y2S1\\IT2120 - Probability and Statistics\\Lab10\\IT24100886")

getwd()


data <- read.csv("Data.csv", header = TRUE, row.names = 1)

print(data)

# State Hypotheses
# H0: All task responsibilities (Wife, Alternating, Husband, Jointly) are equally distributed.
# H1: At least one category differs significantly.

chi_result <- chisq.test(data)
print(chi_result)

# Conclusion
if (chi_result$p.value < 0.05) {
  cat("\nConclusion: Reject H0. Task distribution is NOT equal among groups.\n")
} else {
  cat("\nConclusion: Fail to reject H0. Task distribution appears equal among groups.\n")
}