# GruvGRUB
## about
A minimal gruvbox GRUB2 theme
## installation
1. `git clone https://github.com/aldavs/GruvGRUB.git`
2. `sudo chown -R root:root GruvGRUB/`
3. `sudo mkdir -p /boot/grub/themes/ && sudo mv GruvGRUB/ /boot/grub/themes/`
4. `sudo grub-mkfont --verbose --range=0x0-0x7F --size=8 --output=/boot/grub/fonts/iosevka-8.pf2 /usr/share/fonts/truetype/iosevka/IosevkaNerdFont-Regular.ttf`
5. `sudo grub-mkfont --verbose --range=0x0-0x7F --size=10 --output=/boot/grub/fonts/iosevka-10.pf2 /usr/share/fonts/truetype/iosevka/IosevkaNerdFont-Regular.ttf`
6. `sudo grub-mkfont --verbose --range=0x0-0x7F --size=12 --output=/boot/grub/fonts/iosevka-12.pf2 /usr/share/fonts/truetype/iosevka/IosevkaNerdFont-Regular.ttf`
7. `sudo echo 'GRUB_THEME=/boot/grub/themes/GruvGRUB/gruvgrub' >> /etc/default/grub && sudo update-grub`
