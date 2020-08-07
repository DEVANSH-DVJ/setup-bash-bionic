## Git configurations
git config --global user.name "devansh-dvj";
git config --global user.email "devansh.dvj@gmail.com";
echo "[alias]
  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
" >> ~/.gitconfig;

## Test
# cat ~/.gitconfig;

## For ssh setup
ssh-keygen -t rsa -b 4096 -C "devansh.dvj@gmail.com";
ssh-add ~/.ssh/id_rsa;
sudo apt -y install xclip;
xclip -sel clip < ~/.ssh/id_rsa.pub;
## The ssh rsa key has been copied to the clipboard, paste it while creating a new ssh key at https://github.com/settings/keys.

## No need to reboot
