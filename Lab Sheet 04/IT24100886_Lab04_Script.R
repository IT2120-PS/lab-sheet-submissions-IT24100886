setwd("C:\\Users\\IT24100886\\Desktop\\IT24100886")
getwd()

#Question 1
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
attach(branch_data)

head(branch_data)

#Question 2
str(branch_data)


#Question 3
boxplot(branch_data$Sales_X1, main = "Boxplot of Sales", ylab = "Sales", col = "lightblue")


#Question 4
summary_stats <- summary(branch_data$Advertising_X2)
five_number <- c(
  Min = min(branch_data$Advertising_X2),
  Q1 = quantile(branch_data$Advertising_X2, 0.25),
  Median = median(branch_data$Advertising_X2),
  Q3 = quantile(branch_data$Advertising_X2, 0.75),
  Max = max(branch_data$Advertising_X2)
)

iqr_advertising <- IQR(branch_data$Advertising_X2)

print("Five-number summary for Advertising_X2:")
print(five_number)
print("IQR for Advertising_X2:")
print(iqr_advertising)


#Question 5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  outliers <- x[x < lower_bound | x > upper_bound]
  if (length(outliers) == 0) {
    return("No outliers found")
  } else {
    return(outliers)
  }
}

outliers_years <- find_outliers(branch_data$Years_X3)
print("Outliers in Years_X3:")
print(outliers_years)