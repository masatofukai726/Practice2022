#!/bin/bash 
# SPDX-FileCopyrightText: 2022 Masato Fukai
# SPDX-License-Indentifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}
res=0
num=15

out=$(seq 5 | ./plus)
echo "Compared:"${num}
echo "Caluculated:"${out}

[ "${out}" -eq "${num}" ] || ng $LINENO

[ "$res" = 0 ] && echo "res: $?"
exit $res
