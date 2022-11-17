# dotfiles

## Install brew + packages
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` (installs xcode, which installs git)
- `brew install fzf node gpg pinentry-mac rclone zsh-syntax-highlighting`
- `npm install --global pure-prompt`

## Install RSA (SSH) keys, e.g.
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
  ln -s ~/git/john-n-smith/dotfiles/.gitattributes ~/.gitattributes \
  && ln -s ~/git/john-n-smith/dotfiles/.gitconfig ~/.gitconfig \
  && ln -s ~/git/john-n-smith/dotfiles/.zshrc ~/.zshrc \
  && ln -s ~/git/john-n-smith/dotfiles/ssh/config ~/.ssh/config \
  && ln -s ~/git/john-n-smith/dotfiles/rclone/rclone.conf ~/.config/rclone/rclone.conf
  ```

## Sync files
Documents and Desktop are synced via iCloud Drive. `~/git` is synced using rclone.

### Rclone
It's probably quickest to check out all repos using git, then use the following steps to get any changes that weren't committed.

- Fetch client secret from https://console.cloud.google.com/apis/credentials
- Set client secret in `~/.config/rclone/rclone.conf`
- Fetch a token, follow guided steps from `rclone config`
- `rclone sync johnsmith.io-google-drive:current /Users/john/git --links --progress --checksum --fast-list --transfers=40 --checkers=40 --drive-chunk-size=1M --max-backlog 200000`
 
 ## Make iTerm pretty
 - https://github.com/chrissimpkins/codeface/tree/master/fonts/inconsolata-g, install font
 - iTerm > Preferences > General > Preferences
    - [x] Load preferences (/Users/john/Documents/git/john-n-smith/dotfiles/iterm)
    - [x] Save changes 
  
