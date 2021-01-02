## Gitlab
### 配置信息
```console
kubectl create -f gitlab-config.yaml
```

### 配置密码
```console
kubectl create -f gitlab-secret.yaml
```

### 部署实例
```console
kubectl create -f gitlab-deployment.yaml
```

### 部署服务
```console
kubectl create -f gitlab-service.yaml
```

### 部署应用
```console
kubectl create -f gitlab-web.yaml
```

## Gitlab Runner
### 部署Gitlab Runner
```console
kubectl create -f gitlab-runner-namespace.yaml
kubectl create -f gitlab-runner-config.yaml
kubectl create -f gitlab-runner-deployment.yaml
```