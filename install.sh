#!/bin/sh
### GruvGRUB: Install Script

[ ! -f "GruvGRUB" ] && echo "Error: GruvGRUB not found." && return 1
sudo chown -R root:root GruvGRUB
sudo mkdir -p /boot/grub/themes/GruvGRUB/ && sudo mv GruvGRUB /boot/grub/themes/GruvGRUB/
sudo grub-mkfont --verbose --range=0x0-0x7F --size=8 --output=/boot/grub/fonts/iosevka-8.pf2 /usr/share/fonts/truetype/iosevka/IosevkaNerdFont-Regular.ttf
sudo grub-mkfont --verbose --range=0x0-0x7F --size=10 --output=/boot/grub/fonts/iosevka-10.pf2 /usr/share/fonts/truetype/iosevka/IosevkaNerdFont-Regular.ttf
sudo grub-mkfont --verbose --range=0x0-0x7F --size=12 --output=/boot/grub/fonts/iosevka-12.pf2 /usr/share/fonts/truetype/iosevka/IosevkaNerdFont-Regular.ttf
sudo echo 'GRUB_THEME=/boot/grub/themes/GruvGRUB/GruvGRUB' >> /etc/default/grub && sudo update-grub
