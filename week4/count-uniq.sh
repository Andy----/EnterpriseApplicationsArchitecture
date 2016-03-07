#!/bin/bash

cd $1

file * -b |sort | cut -f 1-2 -d ' '| uniq -c > $HOME/Documents/4areport.txt
