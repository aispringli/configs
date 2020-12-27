获取登录密码

``` console
kubectl -n rook-ceph get secret rook-ceph-dashboard-password -o jsonpath="{['data']['password']}" | base64 --decode && echo
```

修改密码，先导出secret，可以看见password，然后修改密码重新应用一下
``` console
kubectl -n rook-ceph get secret rook-ceph-dashboard-password -o yaml > rook-ceph-dashboard-password.yaml
vim rook-ceph-dashboard-password.yaml
kubectl apply -f rook-ceph-dashboard-password.yaml
```
