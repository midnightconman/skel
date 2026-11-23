PATH="$HOME/.local/bin:$HOME/bin:$HOME/.hishtory:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin"

case $(uname -s) in
	"Darwin") PATH="$PATH:/opt/homebrew/bin" ;;
	"Linux") echo ;;
esac

PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

export PATH

if [ -e $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi
