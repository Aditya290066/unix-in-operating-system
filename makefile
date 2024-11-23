README.md:
	echo "# Guessing Game Course Project" > README.md
	echo "" >> README.md
	echo Created on $$(date +%D) at $$(date +%H:%M:%S) >> README.md
	echo "" >> README.md
	echo Script guessinggame.sh contains $$(wc -l guessinggame.sh | egrep -o "[0-9]+") lines >> README.md
