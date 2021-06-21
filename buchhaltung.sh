#!/bin/bash
sudo addgroup Buchhaltung --force-badname
sudo adduser Bruno-Huber --force-badname
sudo adduser Melanie-Neuhausen --force-badname
sudo adduser Bruno-Huber Buchhaltung 
sudo adduser Melanie-Neuhausen Buchhaltung 

sudo mkdir /opt/Buchhaltung 

sudo chown Bruno-Huber /Buchhaltung 
sudo chgrp Buchhaltung /Buchhaltung 
sudo chmod g+s /Buchhaltung

