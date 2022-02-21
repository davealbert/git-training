I=0;
grep "^git" ./bin/setup.cfg|while read -r LINE; do
    I=$(( $I + 1 ))

    NAME=$(echo $LINE | sed 's/ /_/g')

    [ $I -lt 10 ] && echo "touch 0${I}_${NAME}.txt"
    [ $I -ge 10 ]  && echo "touch ${I}_${NAME}.txt"
done 
echo
echo

