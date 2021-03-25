#!/bin/bash
min=58
max=60
number=$(expr $min + $RANDOM % $max)
echo $number
sleep $number