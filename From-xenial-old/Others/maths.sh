cd ~/Desktop/IITB/MA\ 108/Lectures/bash

if [ $# -eq 0 ]
then
    x="1"
else
    x="$1"
fi

if [ $x -lt "2" ]
then
    bash Lecture-1.sh &
fi
if [ $x -lt "3" ]
then
    bash Lecture-2.sh &
fi
if [ $x -lt "4" ]
then
    bash Lecture-3.sh &
fi
if [ $x -lt "5" ]
then
    bash Lecture-4.sh &
fi
if [ $x -lt "6" ]
then
    bash Lecture-5.sh &
fi
if [ $x -lt "7" ]
then
    bash Lecture-6.sh &
fi

