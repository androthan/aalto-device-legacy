android_device_samsung_galaxysl
===============================

Cyanogenmod 10.1 (Android 4.2.2) development for Samsung Galaxy SL (I9003)

Branches: 

	·jellybean: Current stable branch (2.6 kernel). 
	
	·jb-btwilink: Testing branch with changes for the new btwilink driver (2.6 kernel). 
	
	·jb-wl12xx: Testing branch with changes for the new wl12xx drivers (2.6 kernel). 
	
	·jb-next: Testing branch with all the non-stable/non-working changes (2.6 kernel). 

	·cm-10.1: Current stable branch (3.0 kernel).

Android components are also patched. Build scripts and patches are available at http://gist.github.com/rodero95:

	·build.sh: Patch and build cm-10.1 (2.6 kernel).
	
	·kernel.sh: Build just the kernel and make a flashable package (2.6 kernel).
	
The patches and update scripts are automatically downloaded so just download the buildscript you like and you're ready to go. 

ROM: 
	
	curl -O https://gist.github.com/rodero95/5384676/raw/build.sh && chmod +x build.sh
	./build.sh
	
Kernel: 

	curl -O https://gist.github.com/rodero95/5621859/raw/kernel.sh && chmod +x kernel.sh
	./kernel.sh
