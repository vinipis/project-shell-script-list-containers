#!/bin/bash

docker ps -a | awk -F' ' '{print $1, "\t\t"}' > project.txt

while read LINHA; do
	echo  ${LINHA} >> containerlist.txt

done < project.txt
