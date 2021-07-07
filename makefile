all: readme.md

readme.md:
	touch readme.md
	echo "Project guessinggame" > readme.md
	echo "====================" >> readme.md
	now=$$(date); echo "generated on $$now" >> readme.md
	echo "This is a project for a coursera assignment." >> readme.md
	lines=$$(wc -l guessinggame.sh | egrep -o "[0-9]*"); echo "Lines of code in guessinggame.sh: $$lines" >> readme.md

clean:
	rm readme.md

