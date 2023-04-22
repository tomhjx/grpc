#!/bin/bash

# tag.sh 0 > v1(+1).0.0
# tag.sh 1 > v0.1(+1).0
# tag.sh 3 > v0.0.1(+1)

ver1i=2

ver1s=(0 1 2)

if [[ ${ver1s[@]} =~ $1 ]]; then
    ver1i=$1
fi



tag=$(git describe --tags `git rev-list --tags="*" --max-count=1`)

array=(${tag//-/ })
ver1=${array[0]}
ver1=${ver1/v/ }
ver1=(${ver1//./ })

let ver1[$ver1i]++

c=$ver1i

while [ $c -lt 2 ]
do
    let c++
    ver1[$c]=0
done


tag=$(printf ".%s" "${ver1[@]}")
tag=${tag:1}
tag="v$tag"
echo $tag
git tag $tag && git push origin $tag