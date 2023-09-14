#!/bin/bash
if [ $# -ne 2 ]
then
    echo "Scriptul se executa astfel: $0 <director> <tip fisier>"
    echo "Sugestii tipuri fisiere: txt, sh, c, html, php, pdf . . ."
    exit 1
else
    if [ ! -d $1 ]
    then
	echo "Argumentul 1 nu este o cale valida . . ."
	exit 1
    else
	contor=0
	for i in `find $1 -type f -name "*.$2"`
	do
	    contor=`expr $contor + 1`
	done
	echo -e "\nIn directorul $1 exita $contor fisiere de tip $2"
    fi
fi