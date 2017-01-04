# dotfiles

## encryption keys
### SSH keys
- copy `~/.ssh/id_rsa` to new machine

### PGP keys
- `gpg --export -a D8F0CF15A5FC40AF > public.asc` - export public key
- `gpg --export-secret-keys -a D8F0CF15A5FC40AF > private.asc` - export private key
- `gpg --import public.asc` - import public key
- `gpg --import private.asc` - import private key
- `gpg --list-secret-keys --keyid-format LONG` - list keys

## symlinks

```
┌── ln(1) link, ln -- make links
│   ┌── Create a symbolic link.
│   │                         ┌── the path to the intended symlink
│   │                         │   can use . or ~ or other relative paths
│   │                   ┌─────┴────────┐
ln -s /path/to/original /path/to/symlink
      └───────┬───────┘
              └── the path to the original file/folder
                  can use . or ~ or other relative paths
```
