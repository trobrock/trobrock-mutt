# trobrock-mutt

My Mutt setup

## Installation

```
homesick clone trobrock/trobrock-mutt
homesick symlink trobrock/trobrock-mutt

# Core tools
brew install mutt --with-sidebar-path --with-s-lang
brew install msmtp
brew install offlineimap

# Extras, but used in my config
brew install notmuch
brew install urlview
brew install lynx

touch ~/.mutt/{alias,signature}
```

Drop in any alias you want into ~/.mutt/alias and add your signature to ~/.mutt/signature.

### Note

You should read through the config, there will be hardcoded names and accounts for me. Try searching for trobrock and Trae Robrock. Those should find everything.
