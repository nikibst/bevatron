# Build docker images
# docker build fpm -t my-php-app:1.0.0
# docker build nginx -t my-nginx:1.0.0

# Create service
kubectl apply -f tickets-service.yaml

# Create ConfigMap
kubectl apply -f tickets-config.yaml

# Create Secrets
kubectl apply -f tickets-secrets.yaml

# create HPA

# Create Deployment

# Create Cron

# Create Volumes

# RBAC

# Logs

# Deployment
kubectl apply -f tickets-deployment.yaml