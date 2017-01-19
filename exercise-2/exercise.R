# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
# Hint: use the `paste()` function to produce the list
employees <- c(paste("Employee", 1:100))

# Create a vector of 100 random salaries for the year 2014
# Use the `runif()` function to pick a random number between 40000 and 50000
salary.start <- c(runif(100, 40000, 50000))

# Create a vector of 100 salaries in 2015 that have increased from 2014 by some amount
# Hint: use `runif()` to add a random number to 2014's salaries. Starting from a
# _negative_ number so that salaries may decrease!
salary.2015 <- c(salary.start + runif(100, -10000, 10000))

# Create a data.frame 'salaries' by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
salaries <- data.frame(employees, salary.start, salary.2015, stringsAsFactors=FALSE)
View(salaries)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries$raise <- salaries$salary.2015 - salaries$salary.start

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raise <- salaries$raise > 0

### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)

# What was the 2015 salary of employee 57
salaries[57, 'salary.2015']  # salaries$salary.2015[57]. Other way

# How many employees got a raise?
nrow(salaries[salaries$got.raise == TRUE,]) 
# length(salaries$got.raise[salaries$got.raise]) also works

# What was the value of the highest raise?
highest.raise <- max(salaries$raise)

# What was the "name" of the employee who received the highest raise?
name.increase <- salaries$employees[salaries$raise == highest.raise]
print(name.increase)

# What was the largest decrease in salaries between the two years?
largest.decrease <- min(salaries$raise)

# What was the name of the employee who recieved largest decrease in salary?
name.decrease <- salaries$employees[salaries$raise == largest.decrease]
print(name.decrease)

# What was the average salary increase?
mean.increase <- mean(salaries$raise)

### Bonus ###

# Write a .csv file of your salaries to your working directory


# For people who did not get a raise, how much money did they lose?


# Is that what you expected them to lose based on how you generated their salaries?
