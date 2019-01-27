# dotfiles

## import PGP keys
- copy key to `private.asc`
- `gpg --import private.asc` - import private key
- remove `private.asc`
- `gpg --list-secret-keys --keyid-format LONG` - list keys

## install brew + packages
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `brew install bash-completion fzf git gpg`

## utilise dotfiles
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
