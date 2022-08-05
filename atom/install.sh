sudo apt update;
curl -fsSL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/atom.gpg;
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/atom.gpg] https://packagecloud.io/AtomEditor/atom/any/ any main" | sudo tee /etc/apt/sources.list.d/atom.list;
sudo apt update;
sudo apt -y install atom;

## Test Atom once
# atom .;

## Update config
