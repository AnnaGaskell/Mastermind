# make a 4-digit random number between 0000 and 9999
# in a loop:
# ask for a guess
# finish if the guess is completely right
# count how many digits are correct and in the right place
# count how many digits are correct but in the wrong place
# print the counts


# method allows the user to choose the mode they want to play
# codemaker or codebreaker

# shows the mode options and makes sure that the mode that the user
# chooses is valid.

#generate random code from numberss array

# make the computers intial guess, 4 random numbers from the numbers array


#  method for logic for the computers guesses
# It first checks if any of the hints returned are "Exact"
# if there any, it will add these to a temp array and then
# check for any hints that are equal to "near" if there are
# any it will keep them and put them in a different position
# in the temp array. It will then check if there are any 
# "nope" hints. If there are any it will delete them from the
# array of possible numbers. The final array is then made from
# the temp array and is returned. This will be used as the 
# computers next guess


# method checks to see if any elements in the temp array are equal to nil
# if they are, they will be assigned a new random number.

# method chooses a random number from the possible_numbers array

# method finds any empty indexes in the temp array



# def code_maker
# it asks the user to enter a 4 number code and makes sure it is valid
# the computer then makes a random intial guess from the numbers array
# the results of this guess will be shown
# the computer then takes the hints into consideration for its next guess
# if the hints contain any exacts, the computer will keep these
# if the the hints contain any nears, they will keep them but put them in
# another random posistion.
# if they have any nopes they wont use them again
# this will repeat until the computer has guessed the code directly
# or if the iteration runs out.


# def code_breaker
# It first gets the computer to generate a random code from the numbers array
# it then starts a loop, each time it asks for the user to enter thier guess
# and it will output the results to the screen.
# it will stop when the user guesses the code correctly or when the iteration reaches 10


# def results
# detemines the hints from the guess array and
# fills the hints array with the following:
# The hint will be exact if the guess is the same number as the code and in the same position
# the hint will be near if the guess is just the same number but not in the same position as the code
# the hint will be nope if the guess number is not in the code


# def show_results
# outputs the results of the guess to the screen
# It shows the guess and the coresponding hints below it


# def win?
# checks to see if all the elements in the hint array
# when they do, the method will return true

# def play_again?
# user the option to play again


#display module

#mastermind/game class

#human player class

#computer player class


