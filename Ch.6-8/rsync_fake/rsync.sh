#!/bin/bash
#chkconfig:2345 20 80
. /etc/init.d/functions
usage(){
    echo $"usage:$0 {start|stop|restart}"
    exit 1
}


start(){
    rsync --deamon
    sleep  1s
    if [ `netstat -lntup|grep rsync|wc -l` -ge 1 ];
    then
        action "rsync is started." /bin/true
    else action "rsync is started" /bin/false
    fi
}

stop(){
    killall rsync &>/dev/null
    sleep 2
    if [ `netstat  -lntup|grep rsync|wc -1` ];
    then
        action "rsync is stoped"  /bin/true
    else action "rsync is stoped" /bin/false
    fi
}
main(){
    if [ $# -eq 1 ]; then
        usage
    fi
    case "$1" in
        "start")
            start
        ;;
        "stop")
            stop
        ;;
        "restart")
            stop
            sleep 2
            start
        ;;
        "*")
            usage
        ;;
    esac
}
