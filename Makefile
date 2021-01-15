install:
	ansible-playbook hosts playbook.yml --ask-become-pass -vvv

install-only:
	ansible-playbook hosts playbook.yml --tags=vars,$(tags) --ask-become-pass -vvv
