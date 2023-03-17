#!/bin/bash

for name in Tom Jack Harry
do
    echo $name
    echo "next"
done
echo "well done"

echo ""
echo ""
echo "----------- now used break -------------"
echo ""

for name in Tom Jack Harry
do
    echo $name
    if [ "$name" = "Jack" ]
    then
        break
    fi
    echo "next"

done
echo "well done"
