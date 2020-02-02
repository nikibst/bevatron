start-stack:
	minikube start
	eval $(minikube docker-env)
stop-stack:
	minikube stop

containers:
	eval $(minikube docker-env)
	docker build -t sm-fpm ./fpm
	docker build -t sm-nginx ./nginx

app-start:
	bash ./setup.sh

app-down:
	kubectl delete deployment sm-deployment