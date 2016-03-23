((i = 0))
while true
do
    python gen.py > in
    ./sub < in > out
    python sub.py < in > ans
    if !(diff out ans > /dev/null)
    then
        echo "Wrong answer for substraction"
        break
    fi
    
    ./mul < in > out
    python mul.py < in > ans
    if !(diff out ans > /dev/null)
    then
        echo "Wrong answer for multiplication"
        break
    fi
  
    echo Ok $i
    ((i++))
done;
