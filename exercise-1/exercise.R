# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawk.scores <- c(20, 31, 31, 26)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
opp.scores <- c(36, 25, 24, 15)

# Combine your two vectors into a dataframe
game.scores <- data.frame(seahawk.scores, opp.scores)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
game.scores$diff <- abs(seahawk.scores - opp.scores)

# Create a new column "won" which is TRUE if the Seahawks won
game.scores$won <- seahawk.scores > opp.scores

# Create a vector of the opponent names corresponding to the games played
opp.names <- c("Falcons", "Bills", "Patriots", "Eagles")

# Assign your dataframe rownames of their opponents
rownames(game.scores) <- opp.names

# View your data frame to see how it has changed!
View(game.scores)