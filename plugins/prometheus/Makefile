deploy-labs:
	helm dep up
	kubectl config use-context arn:aws:eks:$AWS_REGION:$AWS_ACCOUNT:cluster/$EKS_CLUSTER
	helm upgrade -i --create-namespace -n prometheus prometheus . -f values.yaml -f values.labs.yaml
