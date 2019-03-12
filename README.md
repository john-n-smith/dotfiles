# dotfiles

## Install brew + packages
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `brew install bash-completion fzf git gpg`

## Install RSA (SSH) key
- `mkdir ~/.ssh`
- `chmod 0700 ~/.ssh`
- copy key to `~/.ssh/id_rsa`
- `chmod 0600 ~/.ssh/id_rsa`
- `ssh -T git@github.com` - test

## Import PGP key
- copy key to `private.asc`
- `gpg --import private.asc` - import private key
- `rm private.asc`
- `gpg --list-secret-keys --keyid-format LONG` - list keys

## Utilise dotfiles
- `mkdir ~/git ~/sequel-pro ~/iterm ~/git/john-n-smith`
- `git clone https://github.com/john-n-smith/dotfiles.git ~/git/john-n-smith/dotfiles`
- ```
  ln -s ~/git/john-n-smith/dotfiles/.gitattributes ~/.gitattributes \
  && ln -s ~/git/john-n-smith/dotfiles/.gitconfig ~/.gitconfig \
  && ln -s ~/git/john-n-smith/dotfiles/.profile ~/.profile \
  && ln -s ~/git/john-n-smith/dotfiles/ssh/config ~/.ssh/config \
  && ln -s ~/git/john-n-smith/dotfiles/sequel-pro/sequel-pro.plist ~/sequel-pro/sequel-pro.plist \
  && ln -s ~/git/john-n-smith/dotfiles/iterm/com.googlecode.iterm2.plist ~/iterm/com.googlecode.iterm2.plist
  ```

## Install Inconsolata
- https://fonts.google.com/specimen/Inconsolata
