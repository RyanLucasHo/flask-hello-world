#!/bin/bash
min=58
max=69
number=$(expr $min + $RANDOM % $max)
echo $number
sleep $number