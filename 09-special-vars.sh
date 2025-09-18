#!/bin/bash

echo "ALL variables passed to the script: $@"  # @ means everything
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of the script executing now: $$"
sleep 100 &
echo "PID of last background command: $!"



