1. Initialize terraform
```bash
terraform init
```

2. Apply
```bash
terraform apply
```

3. Destroy (Ensure you destroy if you don't want to be charged !!!)
```bash
terraform destroy -auto-approve
```

#Note:
```
instance_type: t2.micro is free tier eligible
Region: us-east-1 or can choose your preference
AMI is hard-coded for clarity
Security group is taken as AWS default
```
