BOOTOPTION_LIVE = quiet locale=ja_JP.UTF-8 kmodel=acpi utc=no tz=Asia/Tokyo persistent
BOOTOPTION_INSTALLER = -- locale=ja_JP.UTF-8
#BOOTOPTION_LIVE = quiet locale=ja_JP.UTF-8 kmodel=acpi vga=788 video=uvesafb:ywrap,mtrr utc=no tz=Asia/Tokyo splash persistent
#BOOTOPTION_INSTALLER = -- quiet locale=ja_JP.UTF-8 kmodel=jp106 vga=788 video=vesa:ywrap,mtrr utc=no tz=Asia/Tokyo

build: clean config-sid config-iso config-gnome
	sudo lh build

build-usb: clean config-sid config-usb config-gnome
	sudo lh build

clean:
	sudo lh clean

distclean: clean
	sudo lh clean --purge
	sudo rm -f *.iso *.img *.list *.packages *.buildlog *.md5sum

config-lenny:
	lh config \
		--distribution lenny \
		--bootappend-live "$(BOOTOPTION_LIVE) keyb=jp" \
		--linux-packages "linux-image-2.6 aufs-modules-2.6 squashfs-modules-2.6 loop-aes-modules-2.6" \
		--debian-installer-gui true

config-sid:
	lh config \
		--distribution sid \
		--bootappend-live "$(BOOTOPTION_LIVE) klayout=jp" \
		--linux-packages "linux-image-2.6" \
		--packages "live-installer-launcher" \
		--debian-installer-gui false

config-usb:
	lh config \
		--binary-images usb-hdd \
		--binary-filesystem fat32

config-iso: 
	lh config --binary-images iso 

config-lxde: 
	lh config \
		--bootappend-install "$(BOOTOPTION_INSTALLER) desktop=lxde" \
		--packages-lists "lxde" 

config-gnome: 
	lh config \
		--bootappend-install "$(BOOTOPTION_INSTALLER) desktop=gnome" \
		--packages-lists "gnome" 

