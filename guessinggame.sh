#!/bin/bash
fileguess() {
    ans_right=$(ls -A|wc -l)
    while true;
    do
        echo "Hi User! Guess the number of files present in the current working directory?"
        read  number_guessed
        if [[ $number_guessed ]] && [ $number_guessed -eq $number_guessed 2>/dev/null ]
            then
                if [ $number_guessed -lt $ans_right ]
                then
                    echo "Try Again!.....Your guess is less than the true number"
                continue;
                elif [ $number_guessed -gt $ans_right ]
                then
                    echo "Try Again!....Your guess is greater than the true number"
                continue;
                else
                    echo " Congratulations User!........Your guess is right!"
                break;
                fi
            else
                echo "Wrong input passed. Please pass integer input only"
        fi
    done
}
fileguess
