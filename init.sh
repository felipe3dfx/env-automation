echo "Installing ansible"
sudo apt install ansible

git clone https://github.com/felipe3dfx/env-automation
cd ./env-automation
make install
echo "Done."