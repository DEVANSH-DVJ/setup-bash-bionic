cd ~/Desktop/IITB/PH\ 108/Books/bash

if [ $# -eq 0 ]
then
    x="1"
else
    x="$1"
fi

if [ $x -lt "2" ]
then
    bash Appendix-A.sh &
    bash Chapter-1.sh &
    bash Important*.sh &
fi
if [ $x -lt "3" ]
then
    bash Appendix-B.sh &
    bash Chapter-2.sh &
fi
if [ $x -lt "4" ]
then
    bash Chapter-3.sh &
fi
if [ $x -lt "5" ]
then
    bash Chapter-4.sh &
fi
