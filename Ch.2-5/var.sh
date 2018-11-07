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
