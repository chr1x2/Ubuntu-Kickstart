#Kickstart Generic
#platform=AMD64 or Intel EM64T

#System language
lang en_US

#Language modules to install
langsupport en_US

#System keyboard
keyboard us

#System mouse
mouse

#System timezone
timezone Asia/Manila

#Disable root login
rootpw --disabled

#Initial users
user cforonda --fullname "Christian Foronda" --iscrypted $1$PK4dLTtT$6CFTKPJJyi08orejkhth71

#Reboot after installation
reboot

#Use text mode install
text

#Install OS instead of upgrade
install

#Use Web installation
url --url http://192.168.241.3/ubuntu

#System bootloader configuration
bootloader --location=mbr 

#Clear the Master Boot Record
zerombr yes

#Partition clearing information
clearpart --all --initlabel 

#System authorization infomation
auth  --useshadow  --enablemd5 

#Network information
network --bootproto=dhcp --device=eth0

#Firewall configuration
firewall --disabled 

#Do not configure the X Window System
skipx

# Install packages
%packages
build-essential
openssh-server
ntp
