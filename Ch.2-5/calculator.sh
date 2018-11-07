#!/bin/bash
#add sub mult divide
print_usage(){
    printf "Please enter am integer\n"
    exit 1
}
read -p "please input first number:" firstnum
if [ -n "`echo $firstnum|sed 's/[0-9]//g'`" ]; then
    print_usage
fi
read -p "please input the operator:" operators
if [ "${operators}" != "+" ]&& [ "${operators}" != "-" ]&& [ "${operators}" != "*" ]&& [ "${operators}" != "/" ];then
    echo "please use {+|-|*|/}"
    exit 2
fi

read -p "please input second number" secondnum
if [ -n "`echo ${secondnum}|sed 's/[0-9]//g'`"]; then
    print_usage
fi
echo "${firstnum}${operators}${secondnum} = $((${firstnum}${operators}${secondnum}))"