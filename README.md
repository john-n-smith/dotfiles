# dotfiles

## Install brew + packages
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `brew install bash-completion fzf git gpg pinentry-mac`
- `$(brew --prefix)/opt/fzf/install` - do not "shell configuration files"

## Install RSA (SSH) key
- `mkdir ~/.ssh`
- `chmod 0700 ~/.ssh`
- `pbpaste > ~/.ssh/id_rsa`
- `chmod 0600 ~/.ssh/id_rsa`
- `ssh -T git@github.com` - test
- `ssh-add -K` - make use of ssh-agent to store passphrase in KeyChain

## Import PGP key
- `pbpaste | gpg --import` - import private key
- `gpg --list-secret-keys --keyid-format LONG` - list keys
- `echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf`
- `killall gpg-agent`
- `echo "test" | gpg --clearsign` - test
- `git log --show-signature -1` - verify a signed commit

## Utilise dotfiles
- `mkdir ~/Documents/git ~/Documents/git/john-n-smith`
- `git clone https://github.com/john-n-smith/dotfiles.git ~/Documents/git/john-n-smith/dotfiles`
- ```
  ln -s ~/Documents/git ~/git \
  && ln -s ~/git/john-n-smith/dotfiles/.gitattributes ~/.gitattributes \
  && ln -s ~/git/john-n-smith/dotfiles/.gitconfig ~/.gitconfig \
  && ln -s ~/git/john-n-smith/dotfiles/.git-prompt.sh ~/.git-prompt.sh \
  && ln -s ~/git/john-n-smith/dotfiles/.profile ~/.profile \
  && ln -s ~/git/john-n-smith/dotfiles/ssh/config ~/.ssh/config
  ```

## Install Inconsolata
- https://fonts.google.com/specimen/Inconsolata
