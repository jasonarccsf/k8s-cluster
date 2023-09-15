.DEFAULT_GOAL := apply

apply: build
	kubectl apply -f _app.yml

build:
	kustomize build --enable-helm base > _app.yml

delete:
	kubectl apply --prune --all -f _app.yml
