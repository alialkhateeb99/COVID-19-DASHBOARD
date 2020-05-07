#!/bin/bash

wget -O -  http://vrici.lojban.org/~cowan/XML/tagsoup/tagsoup-1.2.1.jar >> tagsoup-1.2.1.jar
indexCOUNTER=0


while true; do
	wget $1
	wget $2
	java -jar tagsoup-1.2.1.jar --files coronavirus-map-of-the-us-latest-cases-state-by-state
        java -jar tagsoup-1.2.1.jar --files Cases.aspx
	if [ $indexCOUNTER -eq 48 -o $indexCOUNTER -eq 0 ]
	then
		python3 parser.py coronavirus-map-of-the-us-latest-cases-state-by-state.xhtml Cases.xhtml NEWDAY
		let indexCOUNTER=1
		echo SPECIAL BEHAVIOR FROM PARSING FILE
	else
	python3 parser.py coronavirus-map-of-the-us-latest-cases-state-by-state.xhtml Cases.xhtml
	fi
	rm coronavirus-map-of-the-us-latest-cases-state-by-state
	rm coronavirus-map-of-the-us-latest-cases-state-by-state.xhtml
	rm Cases.aspx
	rm Cases.xhtml
	echo $indexCOUNTER
	let indexCOUNTER++
	sleep 1800

done
