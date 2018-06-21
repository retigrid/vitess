#!/bin/bash
source=$1
dest=$2
find . -type f -name '*'"${source}"'*' | while read FILE ; do
    newfile="$(echo ${FILE} |sed -e "s/${source}/${dest}/")" ;
		echo "cp ${FILE} to ${newfile}"
    cp "${FILE}" "${newfile}" ;
		echo "replace ${source} with ${dest} in ${newfile}"
		sed -i '' "s/${source}/${dest}/g" "${newfile}"
done 

