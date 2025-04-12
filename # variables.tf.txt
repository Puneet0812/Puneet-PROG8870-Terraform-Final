# variables.tf

# AWS Region to deploy resources
variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
}

# Name of the S3 bucket to store Terraform state
variable "bucket_name" {
  description = "Name of the S3 bucket used for storing the Terraform state file"
  type        = string
}

# Type of EC2 instance (t2.micro is free-tier eligible)
variable "instance_type" {
  description = "Type of EC2 instance to launch"
  type        = string
}

# Amazon Machine Image (AMI) ID for EC2
variable "ami_id" {
  description = "AMI ID to use for launching the EC2 instance"
  type        = string
}
