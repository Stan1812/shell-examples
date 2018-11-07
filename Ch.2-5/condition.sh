#!/bin/bash
#  condion
# [ -f tets.txt ] && echo 1 || echo 0

SumLines() {
    local sum=0
    local line=””
    while read line ; do
        sum=$((${sum} + ${line}))
    done
    echo ${sum}
}

SumLines < test.txt


log() {
    local prefix="[$(date +%Y/%m/%d\ %H:%M:%S)]=>"
    echo "${prefix} $@" >&2
}

log "INFO" "a message"

ConditionTest(){
    echo -n "Please input a char:"
    read var
    [ "$var" == "1" ] &&{
        echo 1
        # exit 0
    }
    [ "$var" == "2" ] &&{
        echo 2
        # exit 0
    }
    [ "$var" != "2" -a "$var" != "1" ] &&{
        echo error
        # exit 0
    }
}
ConditionTest
