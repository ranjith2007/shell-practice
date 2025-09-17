#!/bin/bash

# Index starts from 0, size is 3
FRUITS=("APPLE" "ORANGE" "MANGO") #Array

echo "FIRST fruit is: ${FRUITS[0]}"
echo "SECOND fruit is: ${FRUITS[1]}"
echo "THRID fruit is: ${FRUITS[2]}"

echo "Fruit name:${FRUITS[@]}"

#@ means print everything.