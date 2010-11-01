all: build

config: clean
	lb config

build: clean config
	sudo lb build

clean:
	sudo lb clean

distclean: clean
	sudo lb clean --purge
	sudo rm -f *.iso *.img *.list *.packages *.buildlog *.md5sum

