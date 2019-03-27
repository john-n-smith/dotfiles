# dotfiles

## Install brew + packages
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `brew install bash-completion fzf git gpg pinentry-mac`

## Install RSA (SSH) key
- `mkdir ~/.ssh`
- `chmod 0700 ~/.ssh`
- copy key to `~/.ssh/id_rsa`
- `chmod 0600 ~/.ssh/id_rsa`
- `ssh -T git@github.com` - test
- `ssh-add -K` - make use of ssh-agent to store passphrase in KeyChain

## Import PGP key
- copy key to `private.asc`
- `gpg --import private.asc` - import private key
- `rm private.asc`
- `gpg --list-secret-keys --keyid-format LONG` - list keys
- `echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf`
- `killall gpg-agent`
- `echo "test" | gpg --clearsign` - test
- `git log --show-signature -1` - verify a signed commit

## Utilise dotfiles
- `mkdir ~/git ~/sequel-pro ~/iterm ~/git/john-n-smith`
- `git clone https://github.com/john-n-smith/dotfiles.git ~/git/john-n-smith/dotfiles`
- ```
  ln -s ~/git/john-n-smith/dotfiles/.gitattributes ~/.gitattributes \
  && ln -s ~/git/john-n-smith/dotfiles/.gitconfig ~/.gitconfig \
  && ln -s ~/git/john-n-smith/dotfiles/.profile ~/.profile \
  && ln -s ~/git/john-n-smith/dotfiles/ssh/config ~/.ssh/config \
  && ln -s ~/git/john-n-smith/dotfiles/sequel-pro/Favorites.plist ~/Library/Application\ Support/Sequel\ Pro/Data/Favorites.plist \
  && ln -s ~/git/john-n-smith/dotfiles/sequel-pro/com.sequelpro.SequelPro.plist ~/Library/Preferences/com.sequelpro.SequelPro.plist \
  && ln -s ~/git/john-n-smith/dotfiles/iterm/com.googlecode.iterm2.plist ~/iterm/com.googlecode.iterm2.plist
  ```

## Install Inconsolata
- https://fonts.google.com/specimen/Inconsolata
