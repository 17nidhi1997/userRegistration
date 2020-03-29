#! /bin/bash

#UC 1
----------------------------
echo "Enter the First Name"
while read -r name;
do
if (( ${#name} > 3 ))
then
[[ "${name:0:1}" =~ [[:upper:]] ]] && echo "started with upper: $name" || echo "$name not valid ";
break
else
echo "Invalid"
break
fi
done

#UC 2
----------------------------
echo "Enter the last name"
while read -r lname;
do
if (( ${#lname} > 3 ))
then
[[ "${lname:0:1}" =~ [[:upper:]] ]] && echo "started with upper: $lname" || echo "$lname not valid ";
break
else
echo "Invalid"
break
fi
done
echo "$name $lname"
