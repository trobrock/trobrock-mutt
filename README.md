# trobrock-mutt

My Mutt setup

## Installation

Open up your Keychain then add two accounts (obviously fill in your info for these):

For IMAP
Keychain Item Name: https://outlook.office365.com
Account Name: trobrock@godaddy.com
Password: ********

For SMTP
Keychain Item Name: smtp://smtp.office365.com
Account Name: trobrock@godaddy.com
Password: ********

```
homesick clone trobrock/trobrock-mutt
homesick symlink trobrock-mutt

chmod 600 ~/.msmtprc

# Core tools
brew tap flabbergast/muttpatched
brew install mutt-patched --with-sidebar-patch --with-s-lang
brew install msmtp
brew install offlineimap

# Run offlineimap in background
ln -sfv /usr/local/opt/offline-imap/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.offline-imap.plist

# Extras, but used in my config
brew install notmuch
brew install urlview
brew install lynx

touch ~/.mutt/{alias,signature}
```

Drop in any alias you want into ~/.mutt/alias and add your signature to ~/.mutt/signature.

### Note

You should read through the config, there will be hardcoded names and accounts for me. Try searching for trobrock and Trae Robrock. Those should find everything.
