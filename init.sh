echo "Installing ansible"
sudo apt install ansible

git clone https://github.com/felipe3dfx/env-automation /tmp/env-automation
cd /tmp/env-automation
ansible-playbook playbook.yml --ask-become-pass
echo "Done."