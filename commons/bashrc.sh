#!/bin/bash

# .bashrc is used when every tab; profile is worked on every login.

# golang
export GOROOT=/usr/local/go
export GOPATH=/Users/jnh/workspaces/golang
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN:$GOROOT/bin
#export GOPROXY=https://goproxy.cn
#export GOPROXY=https://mirrors.aliyun.com/goproxy,https://goproxy.cn,direct
# GO111MODULE 有三个值，off、on、auto，off 和 on 即关闭和开启，auto 则会根据当前目录下是否有 go.mod 文件来判断是否使用 modules 功能。
export GO111MODULE=auto
#export PATH=$PATH:/Users/nian/Program/golang


# Kubernetes/Istio...
export PATH=$PATH:/Users/jnh/bin/istio-1.18.0/bin

# aliaes for Docker
alias drm='docker rm -f $(docker ps -aq) '
alias drmi='docker rmi $(docker images -f "dangling=true" -q)'


# Alias for Kubernetes
alias k="kubectl"
alias kv="echo -e '\nkubectl version: ' && kubectl version && echo -e '\nistioctl version: ' && istioctl version && echo && minikube status "
alias ka="kubectl apply -f "
alias kg="kubectl get "
alias kgs="kubectl get services "
alias kgd="kubectl get deployments "
alias kgp="kubectl get pods "
alias kl="kubectl logs "
alias kdes="kubectl describe "
alias kdel="kubectl delete "
alias ke="kubectl exec -it "

alias iv="istioctl version"

# terraform commands
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfaf="terraform apply -auto-approve" 
alias tfd="terraform destroy"
