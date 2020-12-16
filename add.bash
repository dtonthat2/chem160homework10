#/bin/bash 
intregex='^(\+|-)?[0-9]+$' 
if [ $# -ne 3 ] || ! [[ $1 =~ $intregex ]] || ! [[ $2 =~ $intregex ]] || ! [[ $3 =~ $intregex ]]; then 
echo "Need 3 numerical args"
exit 1 
fi
let added=$1+$2+$3
let multi=$added*12
echo $multi

