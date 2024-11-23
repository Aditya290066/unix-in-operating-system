#!/bin/bash

get_file_count() {
  file_count=$(ls -l | grep -v ^d | wc -l)
  echo $file_count
}
play_game() {
  correct_answer=$(get_file_count)
  
  echo "Welcome to the Guessing Game!"
  echo "Guess how many files are in the current directory."
  while true; do
    read -p "Enter your guess: " user_guess
    if [[ $user_guess -gt $correct_answer ]]; then
      echo "Your guess is too high. Try again."
    elif [[ $user_guess -lt $correct_answer ]]; then
      echo "Your guess is too low. Try again."
    else
      echo "Congratulations! You guessed the correct number of files: $correct_answer."
      break
    fi
  done
}
play_game
