#!/usr/bin/env bash

printf "\n\n"
echo "# OPA - Open Policy Agent"
opa version
printf "\n\n"

src=$SRC
opt=$OPT
dst=$DST

echo "SRC=$src"
echo "DST=$dst"
echo "OPT=$opt"

mkdir -p ${$DST%/*}

cwd=$PWD
cd $cwd/$src

cmd="opa build . --bundle --output $cwd/$dst $opt"
echo "exec $cmd"
printf "\n"
eval "$cmd" 

cd $cwd
