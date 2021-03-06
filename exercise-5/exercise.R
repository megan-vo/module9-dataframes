# Read in the female baby names .csv file into a variable called `female.names`
# Remember to not load the strings as factors!
female.names <- read.csv('data/female_names.csv', stringsAsFactors=FALSE)

# Create a vector `years` as the year column of the dataset
years <- female.names$year

# Create a vector `names` as the name column of the datset
names <- female.names$name
names

# Create a vector `props` as the proportion column of the dataset
props <- female.names$proportion

# Create a vector `names.2013` as your names vector where your years vector is 2013
names.2013 <- names[years == 2014]

# Create a vector `prop.2013` as the your props vector where your years vecctor is 2013


# What was the most popular female name in 2013?


# Write a funciton `most.popular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. Note how you had to make intermediary variables above.


# What was the most popular female name in 1994?


# Write a function `how.popular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year


# How popular was the name 'Laura' in 1995?
