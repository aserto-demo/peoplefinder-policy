#!/usr/bin/env bash

curr=`cut -d '.' -f 3 trigger.txt`
next=`expr $curr + 1`

build="v0.0.$next"

echo "trigger release $build"

cat <<EOF > trigger.txt
release $build
EOF

git commit -am $build
git push
git tag $build
git push --tags

