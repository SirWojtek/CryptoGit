# CryptoGit

## Overview
Main target of this git extension is to encode your project code in remote repository,
while local copy of repo stays unencrypted.
You can work with your local copy like normal (make changes, branches, diffs etc.),
file will be encrypted when you push data to remote host.
You only need to use custom commands for initialize empty repository or clone already encrypted.

## How it works?
Core of plugin is git filter mechanism. Git filters was designed mainly for binary file translation
but can be also used for encryption. More detailed info can be found here:

https://git-scm.com/book/en/v2/Customizing-Git-Git-Attributes

GitCrypto uses smudge filter for decryption (checkout working copy)
and clean filter for encryption (push changes).
Filters work is done by aes128 CFB algorithm included in GnuPG package.

Integration with git is ensured by:
- placing plugin files in folder added to PATH,
- giving proper filename (git-*).


## Prequisitions
- Git
- MakeFile
- GnuPG

## Install instructions
1. Clone repository:
`git clone https://github.com/SirWojtek/CryptoGit`

2. Enter repository and run make:
`cd CryptoGit; sudo make install`

It's done! Now you can work with GitCrypto.

## Usage
### Initializing empty repository
Init can be done by typing command:
```
git init-crypto [destination_folder]
```
After type this command you will be prompt for password.
Plugin will create empty git repository ready for work.

### Cloning encrypted repository
Clone already existing repository can be done by typing:
```
git clone-crypto [repo_url] [destination_folder]
```
After type command you will be asked for repository password.
If you type incorrect password repository will be cloned anyway
but downloaded files will be decrypted incorectly.

### Working with repository
You can work with encrypted repository like before.
Your local copy is unencrypted and all git commands should work well.
Encryption is done when you type `git push` command.

### Changing encryption key
With typing `git passwd-crypto` you can change repository encryption password.
Take noticed that all files will be encrypted once again with new password -
this can cause a lot of changes in repository.

## Additional info
If you want to change install path run make with `PREFIX=<path>` option.
Take notice that your custom path must be added to PATH variable.


By default encryption is set for *.cpp and *.hpp files. To change it open _git-init-crypto_ and edit lines:
```
echo "*.cpp filter=aes diff=aes" >> $GIT_ATTRIBUTES
echo "*.hpp filter=aes diff=aes" >> $GIT_ATTRIBUTES
```
You can add/remove additional extensions by manipulating these lines.
Don't forget to install plugin again after editing file.


You can remove plugin by `make clean` command.
If you used PREFIX you must also type it for uninstall command.