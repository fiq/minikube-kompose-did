#Status

Work in progress

#Intent

A working docker-in-docker example automated with docker-compose, deployed to k8s with kompose

#FIXME

## To automate:

* REPLACE this with the subtree: curl -L https://github.com/kubernetes/kompose/releases/download/v1.16.0/kompose-linux-amd64 -o kompose
* kubectl config set-cluster test-cluster --server=https://localhost:8443 --certificate-authority=/path/to/ca.cert
* kubectl config set-context test-cluster --cluster=test-cluster --user=minikube
* kubectl config set-credentials minikube --client-key=/path/to/client.key --client-certificate=/path/to/client.crt
