从文件创建

```console
kubectl -n aispring  create secret generic aispring-https-certs --from-file=tls.key=cert.key --from-file=tls.crt=cert.cer
```

用yaml文件创建
```console
kubectl create -f aispring-https-cert.yaml
```