# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c('red', 'yellow', 'blue', 'orange', 'purple', 'pink')

# Use the `sample` function to select a single marble
my.marble <- sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)

MarbleGame <- function(guess){
  chosen <- sample(marbles, 1)
  if(chosen == guess){
    return ('you win!')
  }else{
    return ('you lost :(')
  }
}

# Play the marble game!
MarbleGame('yellow')

# Bonus: Play the marble game until you win, keeping track of how many tries you take
have.not.won <- TRUE
tries <- 0

while(have.not.won){
  tries <- tries + 1
  result <- MarbleGame('yellow')
  if(result == 'yellow'){
    have.not.won <- FALSE
  }
}
print (tries)

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability