#!/bin/bash

out=$(seq 5 | ./plus)
echo ${out}

[ "${out}" = 15 ]

