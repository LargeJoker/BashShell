#!/bin/bash

#################virtuabox
#命令行自动安装extension包
#相关安装包: virtualbox
#autoInstallVboxExtpack
autoInstallVboxExtpack(){
	version=$(vboxmanage -v)
	echo $version
	var1=$(echo $version | cut -d 'r' -f 1)
	echo $var1
	var2=$(echo $version | cut -d 'r' -f 2)
	echo $var2
	#file="Oracle_VM_VirtualBox_Extension_Pack-$var1-$var2.vbox-extpack"
	file="Oracle_VM_VirtualBox_Extension_Pack-$var1.vbox-extpack"
	echo $file
	wget https://download.virtualbox.org/virtualbox/$var1/$file -O ~/Downloads/$file --no-check-certificate

##	sudo VBoxManage extpack uninstall "Oracle VM VirtualBox Extension Pack"
	sudo VBoxManage extpack install ~/Downloads/$file --replace
}

###################mouse used
# about

###################nvidia显示问题
#installNvidiaDriver

autoGenerationConfig(){
	sudo Xorg :0 -configure
	sudo cp /root/xorg.conf.new /etc/X11/xorg.conf
}

installNvidiaDriver(){
	sudo pacman -S nvidia 
	git clone https://aur.archlinux.org/nvidia-xrun.git ~/Downloads/nvidia-xrun/
}
#useNvidiaShow(){
#	
#}

#optirun glxgears -info
#optirun  VBoxManage startvm win10_work

#########安装bumbeblebee安装包，使用nvidia显卡卡开virtual，但使用该种方式不能使用n卡打开虚拟机
#optirun virtualbox

#############wine环境

#########wine环境下安装基础包
#winetricks  msxml5 
#winetricks  dotnet40
#winetricks -q msxml5 
#winetricks -q dotnet40
#winetricks -q  corefonts #无法安装



#*****************获取文件夹下文件名称
getFileNameFromfold(){
	name=$(ls )
	echo ${name}
	echo ${#name}
}




executeFunction(){
autoInstallVboxExtpack
#	getFileNameFromfold
}




executeFunction
