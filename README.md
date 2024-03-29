# bevatron

```
__________                     __                        
\______   \ _______  _______ _/  |________  ____   ____  
 |    |  _// __ \  \/ /\__  \\   __\_  __ \/  _ \ /    \ 
 |    |   \  ___/\   /  / __ \|  |  |  | \(  <_> )   |  \
 |______  /\___  >\_/  (____  /__|  |__|   \____/|___|  /
        \/     \/           \/                        \/ 
```

Local Installation
1. Install Minikube  https://kubernetes.io/docs/setup/learning-environment/minikube/
2. Install ```kubectl``` https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux
2. ```minikube config set memory 8096```
3. ```minikube addons enable ingress ```
4. ```minikube start```

Install Kong API Gateway for Kubernetes Ingress
```kubectl apply -f https://bit.ly/k4k8s```

Install Kafka in Kubernetes
1. ```kubectl create namespace kafka```
2. Download https://github.com/Yolean/kubernetes-kafka
3. Go to repo root and do: ```kubectl apply -k ./variants/dev-small```

Replace kube-dns with CoreDNS:
1. Download https://github.com/coredns/deployment/tree/master/kubernetes
2. ```./deploy.sh | kubectl apply -f -```
3. ```kubectl delete --namespace=kube-system deployment kube-dns```

Then expose Kong and Kafka:
1. ```minikube tunnel``` so Kong can be accessible from outside
2. Expose Kafka only for testing: ```kubectl -n kafka port-forward kafka-0 9094```
3. Expose Zookeeper: ```kubectl -n kafka port-forward pzoo-0 2181```
