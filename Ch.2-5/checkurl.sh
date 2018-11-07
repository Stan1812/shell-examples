#!/bin/bash
# 检查网站 lklkjoiolip
echo $1
CheckUrl (){
    timeout=5
    fails=0
    success=0
    # while true
    #   do
    wget --timeout=$timeout --tries=1 "$1" -q -O /dev/null
    if [ $? -ne 0 ]
    then
        let fails=fails+1 #之间不要有空格 否则会let: =: 语法错误: 需要操作数 (错误符号是 "=")
    else
        let success=success+1
    fi
    echo $success
    if [ ${success} -ge 1 ] #注意空格
    then
        echo success
        # exit 1
    fi
    if [ ${fails} -ge 2 ]
    then
        echo "system is down"
        # exit 2
    fi
    # done
}
CheckUrl $1