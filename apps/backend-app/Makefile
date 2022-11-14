test-labs:
	helm dep up
	kubectl config use-context arn:aws:eks:$AWS_REGION:$AWS_ACCOUNT:cluster/$EKS_CLUSTER
	helm template test . --debug -f values.yaml -f values.labs.yaml > manifest.yaml

deploy-labs:
	helm dep up
	kubectl config use-context arn:aws:eks:$AWS_REGION:$AWS_ACCOUNT:cluster/$EKS_CLUSTER
	helm upgrade --install --create-namespace -n backend-app backend-app . -f values.yaml -f values.labs.yaml
