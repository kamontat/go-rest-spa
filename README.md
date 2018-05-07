# go-rest-spa

## pre condition

1. create account google cloud 
2. create project google cloud 
3. create kubernete clutters `gcloud container clusters create restapi --num-nodes=3`

## Run

1. change docker location 
2. `export PROJECT_ID="$(gcloud config get-value project -q)"`
3. run `docker build -t gcr.io/$PROJECT_ID/restapi .`
4. run `gcloud docker -- push gcr.io/$PROJECT_ID/restapi`
5. create runner `kubectl create -f kubectl.yaml`
6. create service `kubectl create -f kubectl-service.yaml`
7. verify kubernetes `kubectl describe service rest-spa` (might need to wait a minutes)
8. on **LoadBalancer Ingress:** session, that is public IP
