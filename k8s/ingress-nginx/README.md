搭建 ingress-nginx   
参考 https://github.com/kubernetes/ingress-nginx/blob/master/docs/deploy/index.md
``` console
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.42.0/deploy/static/provider/baremetal/deploy.yaml
```
这种情况下创建的ingress端口是随机的，需要改成固定的的
``` console
wget https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.42.0/deploy/static/provider/scw/deploy.yaml
kubectl apply -f deploy.yaml
```