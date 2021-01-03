## Gitlab
### 配置信息
```console
kubectl create -f gitlab-config.yaml
```

### 配置密码
```console
kubectl create -f gitlab-secret.yaml
```

### PostgreSQL 设置 gitlab用户和数据库
```console
CREATE DATABASE gitlab;
CREATE ROLE gitlab superuser PASSWORD '123456' login;
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