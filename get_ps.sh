#!/bin/bash

#wget $1 -O foo
cat index.html  | sed -e 's/<span/\n<span/g' | sed -e 's/<span .*">//' | sed -e 's/<\/span>//g' | sed -e 's/&quot;/"/g' | grep -v "<" | grep -v ">" | head -1652 | tail -1629 | json_pp 

