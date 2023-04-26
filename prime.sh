echo "Enter a range: "
read a
read b
for(( i=$a; i <= $b; i++ ))
do
        if [ $i == 1 ]
        then
                continue
        fi
        x=0
        for(( j=2; $((j*j)) <= $i; j++ ))
        do
                if [ $((i%j)) == 0 ]
                then
                        x=1
                        break
                fi
        done
        if [ $x == 0 ]
        then
                echo $i
        fi
done
