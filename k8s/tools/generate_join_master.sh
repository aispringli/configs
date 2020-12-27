#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo "must be root (or sudo) to run this script"
    exit 1
fi

if [ $# != 1 ]; then
    echo "must input a param master-hostname | master-ip-address"
    echo " e.g.: 192.168.66.66 or k8s.aispring.cloud"
    exit 1
fi
token=$(kubeadm token create)
cert_hash=$(openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //')
echo "Refer the following command to join kubernetes cluster:"
echo "kubeadm join $1:6443 --token ${token} --discovery-token-ca-cert-hash sha256:${cert_hash}"
