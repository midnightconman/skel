
ALL_LINKS := .Xresources .aliases .bash_profile .bashrc .dir_colors .dmenurc .dmrc .fluxbox .gtkrc-2.0 .sources .tmux.conf .vim .vimrc .xinitrc .xprofile .xscreensaver
ALL_APPS := xorg-server xorg-apps xorg-xinit vim fluxbox xscreensaver docker rxvt-unicode cantarell-fonts compton feh keepassx ttf-dejavu ttf-inconsolata noto-fonts ttf-liberation pidgin tmux jq fakeroot dmenu go
ALL_REPOS := aur.archlinux.org golang.org google.golang.org gopkg.in k8s.io

all: all-links all-repos install

link-%:
	@$(MAKE) --no-print-directory LINK=$* link

rm-link-%:
	@$(MAKE) --no-print-directory LINK=$* rm-link

repo-%:
	@$(MAKE) --no-print-directory REPO=$* repo

rm-repo-%:
	@$(MAKE) --no-print-directory REPO=$* rm-repo

all-links: $(addprefix link-, $(ALL_LINKS))

rm-all-links: $(addprefix rm-link-, $(ALL_LINKS))

all-repos: $(addprefix repo-, $(ALL_REPOS))

rm-all-repos: $(addprefix rm-repo-, $(ALL_REPOS))

link:
	@ln -fs $(PWD)/$(LINK) ~/$(LINK)

rm-link:
	@rm -f ~/$(LINK)

repo:
	@mkdir -p ~/src/$(REPO)

rm-repo:
	@rm -rf ~/src/$(REPO)

install:
	@pacman -S $(ALL_APPS)
	@echo "Please install AUR packages manually, current packages are 'google-chrome' and 'dropbox'"

clean:
	@echo "please run 'make rm-all-links' or 'make rm-all-repos' to clean-up"
