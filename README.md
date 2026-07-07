# terraform-iac

Infrastructure-as-Code with Terraform for AWS. This repository builds real, repeatable cloud infrastructure, from single-resource examples up to a modular, multi-environment web application stack with remote state.

## What's inside

| Path | What it provisions |
|------|--------------------|
| `terraform-aws-webapp/` | **Main project.** A modular web-app stack (VPC, security groups, EC2, Application Load Balancer) split into reusable modules and `dev` / `prod` environments, with S3 + DynamoDB remote state. |
| `terraform-aws-prj/` | A single-project VPC + EC2 + security group + EIP build in a flat layout. A good starting point. |
| `basics/` | Small single-resource examples (EIP, EC2, security group) kept for reference. |

## terraform-aws-webapp (the main project)

```
terraform-aws-webapp/
├── modules/
│   ├── network/         # VPC, public subnets, IGW, route tables
│   ├── security/        # security groups (ALB + EC2)
│   ├── compute/         # EC2 instance
│   └── load_balancer/   # Application Load Balancer + target group
└── environments/
    ├── dev/             # dev backend + variables
    └── prod/            # prod backend + variables
```

Practices demonstrated:
- **Reusable modules** composed together (network to security to compute to load_balancer), with outputs wired between them.
- **Remote state** in S3 with a **DynamoDB lock table** and encryption, so state is shared and protected from concurrent runs.
- **Environment separation** (dev / prod) with independent state keys and variables.
- **Pinned versions** (`required_version >= 1.6.0`, `aws ~> 5.0`).

## Usage

```bash
cd terraform-aws-webapp/environments/dev   # or prod
terraform init      # configures the S3 backend
terraform plan      # review the change
terraform apply     # provision
terraform destroy   # tear down
```

Requires AWS credentials (`aws configure` or environment variables) and an existing S3 bucket + DynamoDB table for the backend (see each environment's `backend.tf`).

## Notes
- Copy any `*.tfvars.example` to `*.tfvars` and set your own values.
- Never commit real `*.tfvars` or `*.tfstate` files.
