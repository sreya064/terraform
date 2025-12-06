🌱 Terraform Remote Backend with AWS S3 (Dev Environment)

This project demonstrates how to use **Terraform with a remote backend on AWS S3**, along with creating an **S3 bucket using Terraform**.  
It follows best practices for **state management, encryption, and locking** to ensure safe and scalable infrastructure provisioning.

---

## 📌 What This Project Covers

✅ Configuration of **Terraform S3 remote backend**  
✅ Secure **Terraform state storage** in AWS S3  
✅ **State locking** to avoid concurrent updates  
✅ AWS provider configuration with version pinning  
✅ Creating and tagging an **AWS S3 bucket for Dev environment**

---

## 🧱 Terraform Backend Configuration (S3)

Terraform stores its state remotely in an AWS S3 bucket for better collaboration and security.

terraform {
  backend "s3" {
    bucket         = "sreyaaaa-terraorm-state"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    use_lockfile   = true
  }
}
🔐 Why Use Remote Backend?
Prevents state loss

Enables team collaboration

Encrypts sensitive infrastructure data

Prevents accidental overwrites using locking

🔌 AWS Provider Configuration
The AWS provider is configured with version constraints to ensure stable deployments.


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
📦 AWS S3 Bucket Resource (Dev)
An Amazon S3 bucket is created and tagged for the Dev environment.


resource "aws_s3_bucket" "dev_bucket" {
  bucket = "my-tf-sreya-04-954837761329-dev"

  tags = {
    Name        = "My bucket2.0"
    Environment = "Dev"
  }
}
🚀 How to Run This Project
1️⃣ Initialize Terraform (downloads providers & configures backend)
terraform init

2️⃣ Review the execution plan
terraform plan

3️⃣ Apply the configuration

terraform apply

4️⃣ (Optional) Destroy resources
terraform destroy

❌ Files NOT Committed (Best Practice)
.terraform/

terraform.tfstate

terraform.tfstate.backup

AWS credentials

🌟 Key Takeaways
Remote S3 backend keeps Terraform state secure

Versioned providers improve reliability

State locking avoids infrastructure conflicts

Infrastructure as Code enables repeatable deployments