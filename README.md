# terraform-aws-vpc-ec2
Terraform project to provision AWS VPC and EC2

# Terraform AWS VPC + EC2

This repository demonstrates how to provision AWS infrastructure using Terraform.

# Terraform AWS VPC + EC2 + Auto Scaling Group

This project demonstrates how to provision scalable AWS infrastructure using Terraform.

## Architecture Overview
- VPC with public subnet
- Internet Gateway and routing
- Security Group allowing SSH
- Launch Template with user-data
- Auto Scaling Group (ASG)
- EC2 instances running Docker & NGINX

## Features
- Infrastructure as Code using Terraform
- High availability using Auto Scaling Group
- Automatic instance bootstrapping via user-data
- Docker-based application deployment

## User Data Configuration
The instances launched via ASG use a user-data script that:
- Updates the OS
- Installs Docker
- Starts Docker service
- Runs an NGINX container on port 80

## Files Explained
- `provider.tf` – AWS provider configuration
- `variables.tf` – Input variables
- `main.tf` – VPC, subnet, networking, security group
- `asg.tf` – Launch Template and Auto Scaling Group
- `userdata.sh` – Instance bootstrapping script
- `outputs.tf` – Output values

## How to Deploy
```bash
terraform init
terraform plan
terraform apply


## Contact
Ashutosh Upadhyay  
Senior DevOps Engineer  
Available for Freelance Work
amu380@gmail.com
9205631571

