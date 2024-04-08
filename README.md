# anisbletf

```
export AWS_REGION=us-west-2
terraform init
terraform plan
terraform apply
ansible-playbook -u ansible/ubuntu_inventory.py ubuntu.yml
ansible-playbook -u ansible/prom_inventory.py prom.yml
```

Configure the static targets to the terraform outputs, this can be achieved with more scripting that needs to be maintained.  
