# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data('USPersonalExpenditure')

# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
my.data <- data.frame(USPersonalExpenditure)
my.data

# What are the column names of your dataframe?
colnames(my.data)

# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!


# What are the row names of your dataframe?
rownames(my.data)

# Create a column "category" that is equal to your rownames
my.data$category <- rownames(my.data)
my.data

# How much money was spent on personal care in 1940?
money.personal.care <- my.data$X1940[4] # Doesn't take in 'Personal Care' b/c vector d/n have string
# also my.data['Personal Care', 'X1940']
money.personal.care

# How much money was spent on Food and Tobacco in 1960?
food.tobacco <- my.data['Food and Tobacco', 'X1960']
food.tobacco

# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
max <- my.data$category[my.data$X1960 == max(my.data$X1960)]
max


# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year
DetectHighest <- function(year) {
  year <- paste0('X', year)
  category <- my.data$category[my.data[, year] == max(my.data[, year])]  # why not my.data$year
  return(category)
}

# Using your function, determine the highest spending category of each year
max.1940 <- DetectHighest(1940)
max.1945 <- DetectHighest(1945)
max.1950 <- DetectHighest(1950)
max.1955 <- DetectHighest(1955)
max.1960 <- DetectHighest(1960)
