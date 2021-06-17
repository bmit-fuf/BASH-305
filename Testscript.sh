#!/bin/bash



Set_Firefox_Autostart (){

input="[Desktop Entry]
	Type=Application
	Name=Firefox
	Exec=firefox"
cd / 
sudo touch /etc/xdg/autostart/firefox.desktop

sudo chmod 777 /etc/xdg/autostart/firefox.desktop

echo $input >> /etc/xdg/autostart/firefox.desktop

}

#Set_Startsite_Firefox (){
#	cd ~
#ff=`find ~/.mozilla/firefox/* | head -1`
#stores the found profile path into the "ff" variable 
#echo $ff

#touch $ff/user.js
# creates the user.js-file into the profile
 
#echo "user_pref("browser.startup.homepage", "https://example.homepage.com | https://example.homepage.com");" > $ff/user.js
#Puts the start-websites into the file
}


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
Set_Firefox_Autostart





