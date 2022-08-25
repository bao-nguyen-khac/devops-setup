### For the first time run 
```bash
ansible-playbook -i hosts install-docker-k8s.yaml --ssh-common-args='-o StrictHostKeyChecking=no' 
```
### After restart VMs
```bash
ansible-playbook -i hosts swapoff.yaml after restart VM.
```
