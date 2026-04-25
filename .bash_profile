_PATH="~/.hishtory:$PATH"

case $(uname -s) in
	"Darwin") _PATH="$HOME/.local/bin:/opt/homebrew/bin:$_PATH" ;;
	"Linux") echo ;;
esac

_PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:~/bin:$_PATH"

export PATH=$_PATH

if [ -e $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi
