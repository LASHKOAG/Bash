#!/bin/bash

echo ""
echo "$0 - this is name of script"
echo ""

echo "all arguments here: $@"
echo ""

if [ $# -lt 2 ]
then
    echo "error: you must give 2 arguments"
    exit 1
else
    for arg in $@
    do
        echo "See i find argument: $arg"
    done

    echo ""
    echo "My name is $1 and i live in $2"
    echo ""
fi
exit 0
