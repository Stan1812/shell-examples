#!/bin/bash

a=$1 b=$2
[ $# -ne 2 ] &&{
    echo "USAGE: $0 NUM1 NUM2"
    exit 1
}
expr $a + 10 &>/dev/null
RETVAL1=$?
expr $b + 10 &>/dev/null
RETVAL2=$?
test $RETVAL1 -eq 0 -a $RETVAL2 -eq 0 || {
    echo "please input two nums again"
    exit 2
}
[ $a -gt $b ] &&{
    echo "$a>$b"
}
[ $a -lt $b ] &&{
    echo "$a<$b"
}
[ $a -eq $b ] &&{
    echo "$a=$b"
}