#!/bin/bash

# git clone repo dir
# cd dir

tag=git describe

#tag=1.0.dsfjdkfhkhf
 
#length=${#tag}
#echo $length


if [ ${#tag} > 5 ]
then
   a+=1
   echo 'new iteration is' $a
   newtag=$(echo $tag | awk -F '.' 'BEGIN {print "new commit was pushed with tag:"} {print $1"."$2"."$3+'$a'}')
   echo $newtag
else 
   echo no changes
fi

# cd ../
# rm -rf dir
