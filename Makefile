install:
	ansible-playbook playbook.yml --ask-become-pass -vvv

install-only:
	ansible-playbook playbook.yml --tags=vars,$(tags) --ask-become-pass -vvv
