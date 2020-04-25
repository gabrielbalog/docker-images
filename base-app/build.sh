#!/bin/bash 

dir=${PWD##*/} 

docker build -t $dir .