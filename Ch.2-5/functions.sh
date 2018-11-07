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

test(){
    [ -f /etc/hosts -a -f /etc/services ] && echo 1 || echo 0
    [[  -f /etc/hosts && -f /etc/services  ]] && echo 1 || echo 0
    [  5 -eq 6 -o 5 -gt 3 ] && echo 1 ||echo 0
    ((5==6||3>=3))  && echo 1 ||echo 0
    
}