# dotfiles

## import SSH keys
- copy `~/.ssh/id_rsa` to new machine
- `chmod 400 ~/.ssh/id_rsa`

## import PGP keys
- copy key to `private.asc`
- `gpg --import private.asc` - import private key
- remove `private.asc`
- `gpg --list-secret-keys --keyid-format LONG` - list keys

## install brew
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `brew install gpg bash-completion fzf`

## utilise dotfiles
- `mkdir ~/git ~/sequel-pro ~/iterm`
- `git clone https://github.com/john-n-smith/dotfiles.git ~/git/dotfiles`
- `ln -s ~/git/dotfiles/.git-prompt.sh ~/.git-prompt.sh`
- `ln -s ~/git/dotfiles/.gitattributes ~/.gitattributes`
- `ln -s ~/git/dotfiles/.gitconfig ~/.gitconfig`
- `ln -s ~/git/dotfiles/.profile ~/.profile`
- `ln -s ~/git/dotfiles/ssh/config ~/.ssh/config`
- `ln -s ~/git/dotfiles/sequel-pro/sequel-pro.plist ~/sequel-pro/sequel-pro.plist`
- `ln -s ~/git/dotfiles/iterm/com.googlecode.iterm2.plist ~/iterm/com.googlecode.iterm2.plist`
