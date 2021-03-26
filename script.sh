#!/bin/bash
echo 'Script is running...'
number=`shuf -i 40-50 -n1`
echo 'Script will run for ' $number ' seconds'
sleep $number