[![MIT License][license-image]][license-url]

# Development Environment Automation

My lovely developer enviroment. 

## Installation

```
bash <(curl -s https://raw.githubusercontent.com/felipe3dfx/env-automation/master/init.sh)
```

If you install it from scratch, you would need some dependencies to be installed first. Use init.sh or manually install:

1. Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu).
2. Install Git `apt install git`

If you have one machine that is already provisioned. You can setup a fresh one remotelly.

```
ansible-playbook playbook.yml --ask-become-pass
ansible-playbook playbook.yml --tags=vars,$(tags) --ask-become-pass
```

## Features

* Pop!_OS defaults configuration
* Apps installation via apt
* Snazzy theme for NVIM, ZSH, Alacrity
* ZSH configuration, aliases, mappings, completion etc.
* VIM configuration, mappings, custom functions etc.
* Alacritty as main terminal app
* Tmux configuration, plugins, keybindings (terminal tabs)

## License

[MIT](LICENSE)

[license-url]: LICENSE

[license-image]: https://img.shields.io/github/license/mashape/apistatus.svg

[capture]: capture.png
