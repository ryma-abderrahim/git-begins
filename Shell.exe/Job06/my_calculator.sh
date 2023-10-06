if  [ "$2" = "+" ]
then 
    result=$(( $1 + $3))
elif [  "$2" = "-" ]
then 
    result=$(( $1 - $3 ))
elif [ "$2" = "x" ]
then 
    result=$(( $1 * $3 ))
elif [ "$2" = "/" ]
then
   result=$(( $1 / $3 ))
fi 

echo  "le résultat est : " $result

