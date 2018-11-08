#!/bin/bash
# fake bash script to install lamp or lnmp
path=./scripts
[ ! -d $path ] && mkdir $path -path
#menu
cat <<END
  1.[install lnmp]
  2.[isntall lamp]
  3.exit
END

read num
expr $num + 1 &>/dev/null
[ $? -ne 0 ] &&{
    echo "the num input must be {1|2|3}"
}

case "$num" in
    1)
        echo "starting install lamp"
        sleep 2s
        [ -x "$path/lamp.sh" ] ||{
            echo "$path/lamp.sh run failed"
        }
        $path/lamp.sh
        # exit $?
    ;;
    2)
        echo "starting install lnmp"
        sleep 2s
        [ -x "$path/lnmp.sh" ] ||{
            echo "$path/lnmp.sh run failed"
        }
        $path/lnmp.sh
        # source $path/lnmp.sh
    ;;
    3)
        echo "bye"
        exit 3
    ;;
esac

[[ ! "$num" =~ [1-3] ]] &&{
    echo "Input Error"
}