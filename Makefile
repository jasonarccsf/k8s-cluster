.DEFAULT_GOAL := main

## AWX

awx-operator:
	(cd apps/awx/awx-operator && make apply)

awx:
	(cd apps/awx/awx && make apply)

awx-svc-port-forward:
	kubectl --namespace awx port-forward service/awx-service 8080:80

awx-pod-port-forward:
	kubectl --namespace awx port-forward pod/awx-web-69986fd976-md2d9 8052:8052

awx-password:
	kubectl --namespace awx get secret awx-admin-password -o jsonpath="{.data.password}" | base64 --decode ; echo
