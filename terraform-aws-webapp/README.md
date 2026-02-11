# Terraform AWS Web Infrastructure

## Overview

This is a personal infrastructure project built to demonstrate practical Terraform skills.
The infrastructure provisions a simple production-style web stack on AWS:

* Custom VPC with public subnets
* Internet Gateway and routing
* EC2 instance running Apache
* Elastic IP attached to EC2
* Application Load Balancer
* Properly scoped Security Groups
* Environment separation (dev / prod)
* Modular Terraform design

---

## Architecture

Internet
→ Application Load Balancer
→ EC2 Instance (Apache)
→ Elastic IP

All resources are deployed inside a custom VPC.

---

## Key Concepts Demonstrated

* Terraform modules and reusable components
* Input variables and outputs
* Data sources (latest Amazon Linux AMI)
* Local values for tagging strategy
* Resource dependency handling
* Environment separation (dev/prod)
* Remote backend support (S3 ready)
* Security group least-privilege rules

---

## Project Structure

* `modules/network` → VPC, subnets, routing
* `modules/security` → ALB & EC2 security groups
* `modules/compute` → EC2 instance + Elastic IP
* `modules/load_balancer` → ALB, listener, target group
* `environments/` → Environment-specific deployments

---

## How to Deploy

```bash
cd environments/dev
terraform init
terraform plan
terraform apply
```

---

## Design Decisions

* Used modules to separate networking, compute, and security
* Explicit tagging strategy via locals
* ALB forwards traffic to EC2 instead of exposing EC2 directly
* Elastic IP allows stable public access for debugging
* Security groups restrict EC2 access to ALB only (HTTP)

---

## Future Improvements

* HTTPS using ACM
* Auto Scaling Group instead of single EC2
* Private subnets for compute layer
* CI/CD pipeline via GitHub Actions
* Remote state with S3 + DynamoDB locking

---

This project reflects my hands-on practice building AWS infrastructure using Terraform in a modular and production-conscious way.

