#!/bin/bash 

Ucount=0
echo "how many users should be made?"

read Usercount
user_array=() 
while [ $Usercount != 0 ]
do 
echo "username?"
read Username
user_array+=("$Username") 
Usercount=$(( $Usercount - 1 ))
#Ucount=$(( $Ucount + 1 ))
done

#echo "${user_array[0]}"

for index in "${!user_array[@]}";
do 
echo "$index ${user_array[$index]}";
sudo adduser "${user_array[$index]}" --force-badname
done

printf "\n"
echo "${user_array[1]}"


#for $index in $user_array 
#do
#echo "dadjhadsagdsagdgdjsad"

#echo "user ${user_array[$index]}; added"
#done

#["$Usercount"]


#for $Ucount in $user_array 
#adduser $user_array
