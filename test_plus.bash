#!/bin/bash 
# SPDX-FileCopyrightText: 2022 Masato Fukai
# SPDX-License-Indentifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}
res=0

### I/O TSET ###
num=15
out=$(seq 5 | ./plus)
echo "Compared:"${num}
echo "Caluculated:${out}"

[ "${out}" = ${num} ] || ng $LINENO

### STORANGE INPUT ###
str="あ"
echo ${str}
echo "Compared:"${str}
out=$(echo ${str} | ./plus)
[ "$?" = 1 ]      || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

echo "Compared: Nul"
out=$(echo | ./plus)
[ "$?" = 1 ]      || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res
