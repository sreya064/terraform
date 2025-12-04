🚀 Terraform AWS S3 Bucket Management

This project demonstrates how to use **Terraform with AWS** to create, update, and destroy an **S3 bucket**.  
It covers provider configuration, resource creation, modifying resource attributes, and cleanly destroying infrastructure.

---

## 📌 What This Project Covers

- Configuring the AWS provider with Terraform  
- Creating an AWS S3 bucket using Terraform  
- Updating the S3 bucket name in configuration files  
- Understanding how Terraform detects and applies changes  
- Destroying AWS resources to avoid unnecessary costs  

---

## 🔹 Terraform Provider Configuration

The `terraform` block specifies the required AWS provider and locks its version for stability.

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
🔹 AWS Provider Configuration
The AWS provider block defines the region where the S3 bucket is created.

hcl
Copy code
provider "aws" {
  region = "us-east-1"
}
🔹 AWS S3 Bucket Resource
This configuration creates an S3 bucket with a specified name and tags.

hcl
Copy code
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-sreya-04"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
✅ Changes Made
Updated the bucket name in the Terraform configuration

Applied the changes using Terraform commands

Observed how Terraform tracks modifications

💻 How to Run This Project
1️⃣ Initialize Terraform
bash
Copy code
terraform init
Downloads the required provider and prepares the working directory.

2️⃣ Preview Changes
bash
Copy code
terraform plan
Shows whether the bucket will be created, modified, or destroyed.

3️⃣ Apply Configuration
bash
Copy code
terraform apply
Creates or updates the S3 bucket based on configuration changes.

4️⃣ Destroy Resources
bash
Copy code
terraform destroy
Deletes the S3 bucket and cleans up AWS resources.

📂 Project Files
main.tf – Terraform configuration

.terraform.lock.hcl – Provider version lock file

✅ Key Learnings
Terraform automatically detects resource changes

Changing the bucket name results in resource replacement

terraform plan helps avoid unintended actions

terraform destroy is essential for cost control

📎 Conclusion
This project demonstrates the complete lifecycle of an AWS S3 bucket using Terraform — from creation to modification and destruction.
It reinforces best practices for managing cloud resources using Infrastructure as Code.

