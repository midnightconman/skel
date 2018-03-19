
ALL_LINKS := .Xresources .aliases .bash_profile .bashrc .dir_colors .dmenurc .dmrc .fluxbox .gtkrc-2.0 .sources .tmux.conf .vim .vimrc .xinitrc .xprofile .xscreensaver
ALL_APPS := xorg-server xorg-apps xorg-xinit fluxbox xscreensaver docker rxvt-unicode cantarell-fonts compton feh

all: all-links install

link-%:
	@$(MAKE) --no-print-directory LINK=$* link

rm-link-%:
	@$(MAKE) --no-print-directory LINK=$* rm-link

all-links: $(addprefix link-, $(ALL_LINKS))

rm-all-links: $(addprefix rm-link-, $(ALL_LINKS))

link:
	@ln -fs $(PWD)/$(LINK) ~/$(LINK)

install:
	@pacman -S $(ALL_APPS)

rm-link:
	@rm -f ~/$(LINK)

clean: rm-all-links
