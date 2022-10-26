# Steps to init k8s cluster (include init k8s dashboard)
## After create local VM with Vagrant and install docker k8s with Ansible: 
### In master node
- kubeadm init --apiserver-advertise-address=192.168.56.101 --pod-network-cidr=172.16.0.0/16
- vi /etc/systemd/system/kubelet.service.d/10-kubeadm.conf => add '--node-ip 192.168.56.101' to KUBELET_CONFIG_ARGS
- systemctl daemon-reload
- systemctl restart kubelet
- kubectl get node -o wide
- kubectl apply -f calico.yaml
- kubeadm token create --print-join-command

### In worker nodes
- get script in master node and run
- vi /etc/systemd/system/kubelet.service.d/10-kubeadm.conf => add '--node-ip 192.168.56.102' to KUBELET_CONFIG_ARGS
- systemctl daemon-reload
- systemctl restart kubelet

### In master node
- kubectl get node -o wide 
- kubectl get pod -A -o wide
- kubectl apply -f dashboard-v2.5.yaml
- kubectl create secret generic kubernetes-dashboard-certs --from-file=certs -n kubernetes-dashboard
- kubectl get pod -A -o wide
- kubectl apply -f dashboard-adminuser.yaml
- kubectl create -n kubernetes-dashboard token admin-user
