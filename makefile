readme.txt:
	touch README.md
	echo "Bash, Make, Git and Github" > README.md
	date >> README.md
	wc -l scripts/guessinggame.sh | sed s'/[^0-9]//g' >> README.md
