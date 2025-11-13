export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:~/bin:/usr/local/bin:/usr/bin:/bin:/sbin"

if [ -e $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi
