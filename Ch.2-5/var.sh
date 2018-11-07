#!/bin/bash
# shell变量相关

# 1 设置环境变量的方式
# export NAME=value
# NAME = value;export NAME
# declare -x NAME = value

export NAME = oldboy
declare -x NAME = oldboy
NAME = oldboy; export oldboy


# 2 显示环境变量
# env
# set

# $0		当前脚本的文件名
# $n		传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2。
# $#		传递给脚本或函数的参数个数。
# $*		传递给脚本或函数的所有参数。
# $@		传递给脚本或函数的所有参数。被双引号(" ")包含时，与 $* 稍有不同，下面将会讲到。
# $?		上个命令的退出状态，或函数的返回值。一般情况下，大部分命令执行成功会返回 0，失败返回 1。
# $$		当前Shell进程ID。对于 Shell 脚本，就是这些脚本所在的进程ID。