#Kickstart for Ubuntu 12.04.4 specifically for NEC Mercury Server
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

#Root password
rootpw --iscrypted $1$YdvBcNwr$dosa4QrabaTpRkQcB9kVm0

#Initial user
user --disabled

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

# Disk partition
part / --fstype ext4 --size 1 --grow --asprimary 
part swap --size 8192
part /boot --fstype ext4 --size 256 --asprimary 

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
