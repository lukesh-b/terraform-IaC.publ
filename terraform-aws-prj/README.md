# Terraform AWS Associate Project

This repository contains AWS infrastructure project built using Terraform.

## Project Overview

The infrastructure provisions:

- A custom VPC
- A public subnet
- Internet Gateway and routing
- Security Group with SSH and HTTP access
- EC2 instance
- Elastic IP associated with the instance

This project focuses on:
- Terraform workflow (`init`, `plan`, `apply`, `destroy`)
- Providers
- Resources
- Variables and outputs
- State management (local)

---

## Prerequisites

- Terraform >= 1.3
- AWS Account
- AWS CLI configured (`aws configure`)
- An existing EC2 key pair in AWS

---

## Project Structure
├── providers.tf # AWS provider configuration
├── versions.tf # Terraform version constraints
├── variables.tf # Input variables
├── terraform.tfvars.example
├── vpc.tf # Networking resources
├── security.tf # Security group
├── ec2.tf # EC2 and Elastic IP
├── outputs.tf # Output values
└── README.md


