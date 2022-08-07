#!/bin/bash

#PSQL="psql --username=freecodecamp --dbname=number -t --no-align -c"

PSQL="psql -X --username=freecodecamp --dbname=number --tuples-only -c"

# random number between 1 and 1000

NUMBER=$(( $RANDOM % 1000 + 1 ))
GUESS=1

# echo $NUMBER

# When you run your script, you should prompt the user for a username with Enter your username:, and take a username as input. Your database should allow usernames of at least 22 characters

echo -e "\nEnter your username:"

read USERNAME

# get USERNAME
USER=$($PSQL "SELECT username FROM guesser WHERE username ='$USERNAME'")
# get played games
GAMES=$($PSQL "SELECT COUNT(*) FROM guesser INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
# get best game
BEST=$($PSQL "SELECT MIN(guesses) FROM guesser INNER JOIN games USING(user_id) WHERE username='$USERNAME'")

echo $GAMES
echo $BEST

# if customer doesn't exist
if [[ -z $USER ]]
  then
  INSERT_USERNAME=$($PSQL "INSERT INTO guesser(username) VALUES('$USERNAME')")
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  else 
  echo -e "\nWelcome back,$USER! You have played $GAMES games, and your best game took $BEST guesses."
fi

# The next line printed should be Guess the secret number between 1 and 1000:
echo -e "\nGuess the secret number between 1 and 1000:"


# read NUMBER


while read NUM 
  do 
    if [[ ! $NUM =~ ^[0-9]+$ ]]
      then
      # print
      echo -e "\nThat is not an integer, guess again:"
      else
      if [[ $NUM -eq $NUMBER ]]
      then
      break;
      else 
        if [[ $NUM -gt $NUMBER ]]
        then 
        echo -e "It's lower than that, guess again:"
        elif [[ $NUM -lt $NUMBER ]]
        then
        echo -e "It's higher than that, guess again:"
        fi
      fi
    fi
    GUESS=$(( $GUESS +1 ))
done

if [[ $GUESS == 1 ]]
  then
    echo -e "\nYou guessed it in $GUESS tries. The secret number was $NUMBER. Nice job!"  
  else
    echo -e "\nYou guessed it in $GUESS tries. The secret number was $NUMBER. Nice job!"

  fi

USER_ID=$($PSQL "SELECT user_id FROM guesser WHERE username='$USERNAME'")
INSERT_GAMES=$($PSQL "INSERT INTO games(guesses, user_id) VALUES($GUESS, $USER_ID)")




