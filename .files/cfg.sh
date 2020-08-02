#!/bin/zsh

echo "Setting up macOS..."

xcode-select --install
read -s -k "?Wait for xcode clt to install. Press any key to continue."

export HOMEBREW_GITHUB_API_TOKEN=$1

git clone --bare https://clakeb:$1@gitlab.com/clakeb/dotfiles.git $HOME/.cfg

function dotfile {
   $(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

mkdir -p .config-backup
dotfile checkout

if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    dotfile checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;

dotfile checkout
dotfile config status.showUntrackedFiles no

cd /tmp
curl -s https://api.github.com/repos/sagiegurari/cargo-make/releases/latest \
| grep -o "http.*x86_64-apple-darwin.zip" \
| xargs -n 1 curl -O -sSL

unzip *x86_64-apple-darwin.zip
mv cargo-make*/cargo-make $HOME/.files/cargo-make


# Kick it off
cd $HOME/.files
./cargo-make make --makefile kickoff.toml kickoff
