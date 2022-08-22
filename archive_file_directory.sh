#!/bin/bash
name=$1
path=$2
tar -cvf "${name}.tar.gz" $path
