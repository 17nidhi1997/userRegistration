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

#UC 3
----------------------------
while true
do
   read -p "enter admin emial:" email
   echo
   if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$ ]]
   then
       echo "email adres $email is valid."
       break
   else
        echo "email adress $email is invalid."
        break
   fi
done

#UC 4
----------------------------
echo "Enter the phone number"
read phoneno

if [[ $phoneno =~ "^[[:digit:]]{2}[[:space:]][[:digit:]]{10}$" ]]
then
    echo "valid Phone Number"
else
    echo "Invalid Phone number"
fi

#UC 5
----------------------------
echo "Enter the password"
read password
if[[ $password =~ "^[a-zA-Z0-9]{8,}$" ]]
then
echo "Valid"
else
echo "Invalid"
fi
