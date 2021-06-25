#!/bin/bash
#pstree



# show parent of process= pstree
# old autostart= rc.local
# for grub= /ect/default/grub
# to update grub update-grub

#to show groups= getent group | cut -d: -f1 | grep ""
#to show users= getent passwd | cut -d: -f1 | grep ""


#User-Creator(){
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

#}

#Install_GrubCustomizer(){

	#sudo add-apt-repository ppa:danielrichter2007/grub-customizer
#adds the repository
	#sudo apt-get update
#updates the list
	#sudo apt-get install grub-customizer
#installs grub-customizer
	#grub-customizer
#starts grub-customizer
#}

#Change_Password(){
	#echo "which user should have his/hers PW changed?"
	#read USinput
#reads User-input
	#echo "what should be the new PW?"
	#read PWinput 
#reads User-input
	#echo "$USinput:$PWinput" | chpasswd 
#transmits the input to the program
#}


#Install_Programm(){

	#echo "which program should get installed?"
	#read input
#reads User-input
	#sudo apt-get install $input 
#installs the specified program
#}
 
#Set_Firefox_Autostart (){

	#input="[Desktop Entry]
	#	Type=Application
	#	Name=Firefox
	#	Exec=firefox"
#declares variable $input
	#cd / 
#changes directory to root
	#sudo touch /etc/xdg/autostart/firefox.desktop
#creates file
	#sudo chmod 777 /etc/xdg/autostart/firefox.desktop
#changes permissions for file
	#echo $input >> /etc/xdg/autostart/firefox.desktop
#transmits $input into the created file
#}

#Set_Startsite_Firefox (){

	#cd ~
	#ff=`find ~/.mozilla/firefox/*.default | head -1`
#stores the found profile path into the "ff" variable 
	#echo $ff

	#touch $ff/user.js
# creates the user.js-file into the profile
 
	#echo 'user_pref("browser.startup.homepage", "https://example.homepage.com | https://example.homepage.com");' > $ff/user.js
#Puts the start-websites into the file
#}

#Set_Background () {

	#cd ~
	#wget --output-document=funny_image.jpg https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/LinuxWasch3.jpg/1280px-LinuxWasch3.jpg
#Downloads an image from Wikipedia, saves it as "funny_image.jpg"
#	
	#gsettings set org.gnome.desktop.background picture-uri "funny_image.jpg"
#sets the image as backgrounf image on gnome
#}

#Set_Keylayout (){
#	sudo apt-get install x11-xkb-utils -y
#Installs xkb
#	setxkbmap de-ch
#sets Keyboard-layout to "de-ch"	
#	echo "setxkbmap ch-ch" >> ~/.bashrc
#sets the Keyboard layout in the bash configuration file, so that the configuration is permanent.
#	setxkbmap -query | grep layout
#checks the setted conf
#	printf "\n"
#}


#//function block, for better understanding
#Set_Keylayout
#Set_Background
#Set_Startsite_Firefox
#Set_Firefox_Autostart
#Install_Programm
#Install_GrubCustomizer
#User_Creator




