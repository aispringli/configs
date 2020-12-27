USER=root
PORT=2222
CONTROL_PLANE_IPS="server01"
for host in ${CONTROL_PLANE_IPS}; do
    ssh ${USER}@$host -p ${PORT} "mkdir /etc/kubernetes/pki/etcd"
    scp -P ${PORT} /etc/kubernetes/pki/ca.* ${USER}@$host:/etc/kubernetes/pki/
    scp -P ${PORT} /etc/kubernetes/pki/sa.* ${USER}@$host:/etc/kubernetes/pki/
    scp -P ${PORT} /etc/kubernetes/pki/front­proxy­ca.* ${USER}@$host:/etc/kubernetes/pki/
    scp -P ${PORT} /etc/kubernetes/pki/etcd/ca.* ${USER}@$host:/etc/kubernetes/pki/etcd/
    scp -P ${PORT} /etc/kubernetes/admin.conf ${USER}@$host:/etc/kubernetes/
done
