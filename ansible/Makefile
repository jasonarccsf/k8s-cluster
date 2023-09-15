.DEFAULT_GOAL := main

# REF: https://github.com/ansible/ansible/issues/76322
# REF: https://docs.ansible.com/ansible/latest/reference_appendices/faq.html#running-on-macos-as-a-controller
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY := YES

## Playbook Operations

main:
	ansible-playbook main.yml

## Dependencies

deps:
	ansible-galaxy install --role-file=./requirements.yml --force

## AWX

awx-svc-port-forward:
	kubectl --namespace awx port-forward service/awx-service 8080:80

awx-pod-port-forward:
	kubectl --namespace awx port-forward pod/awx-web-69986fd976-md2d9 8052:8052

awx-password:
	kubectl --namespace awx get secret awx-admin-password -o jsonpath="{.data.password}" | base64 --decode ; echo
