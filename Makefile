BOOTOPTION_LIVE = quiet locale=ja_JP.UTF-8 kmodel=jp106 vga=788 video=vesa:ywrap,mtrr utc=no tz=Asia/Tokyo splash persistent
BOOTOPTION_INSTALLER = -- locale=ja_JP.UTF-8
#BOOTOPTION_INSTALLER = -- quiet locale=ja_JP.UTF-8 kmodel=jp106 vga=788 video=vesa:ywrap,mtrr utc=no tz=Asia/Tokyo

build: clean config-sid config-iso config-gnome
	sudo lh_build

clean:
	sudo lh_clean

distclean: clean
	sudo lh_clean --purge
	sudo rm -f *.iso *.img *.list *.packages *.buildlog *.md5sum

config-lenny:
	lh_config \
		--distribution lenny \
		--bootappend-live "$(BOOTOPTION_LIVE) keyb=jp" \
		--linux-packages "linux-image-2.6 aufs-modules-2.6 squashfs-modules-2.6 loop-aes-modules-2.6" \
		--debian-installer-gui enabled

config-sid:
	lh_config \
		--distribution sid \
		--bootappend-live "$(BOOTOPTION_LIVE) klayout=jp" \
		--linux-packages "linux-image-2.6.30-2 aufs-modules-2.6.30-2 loop-aes-modules-2.6.30-2 virtualbox-ose-guest-modules-2.6.30-2" \
		--debian-installer-gui disabled 

config-usb:
	lh_config --binary-images usb-hdd 

config-iso: 
	lh_config --binary-images iso 

config-lxde: 
	lh_config \
		--bootappend-install "$(BOOTOPTION_INSTALLER) desktop=lxde" \
		--linux-flavours 486 \
		--packages-lists "lxde 01-system 10-lxde-application 20-japanese" 

config-gnome: 
	lh_config \
		--bootappend-install "$(BOOTOPTION_INSTALLER) desktop=gnome" \
		--linux-flavours 686 \
		--packages-lists "gnome-full 01-system 10-gnome-application 20-japanese 30-rescue 50-debian_meeting 50-openstreetmap"  

