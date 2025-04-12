# PROG8870 Final Project: AWS Infrastructure with Terraform

##  Overview

This project provisions AWS infrastructure using Terraform as part of the PROG8870 course final assignment. The infrastructure includes networking, compute, storage, and remote state management with version control and locking.

---

##  Resources Created

| Resource Type      | Name/Tag                  | Description |
|--------------------|---------------------------|-------------|
| S3 Bucket          | puneet891023-tfstate-bucket | Remote backend for terraform.tfstate |
| DynamoDB Table     | terraform-lock            | Enables state locking |
| VPC                | puneet891023-vpc          | Custom Virtual Network |
| Subnet             | puneet891023-subnet       | Public subnet (CIDR 10.0.1.0/24) |
| Internet Gateway   | puneet891023-igw          | Enables internet access |
| Route Table        | puneet891023-rt           | Internet route table (0.0.0.0/0) |
| Security Group     | puneet891023-sg           | SSH (22), HTTP (80), HTTPS (443) |
| EC2 Instance       | puneet891023-ec2          | t2.micro Linux instance |

---

## Files in This Repo

- `main.tf`: Infrastructure configuration
- `variables.tf`: Variable definitions
- `terraform.tfvars`: Variable values (non-sensitive)
- `backend.tf`: Configures remote backend (S3 + DynamoDB)
- `README.md`: Project documentation

---

##  Commands Used

```bash
terraform init
terraform plan
terraform apply
