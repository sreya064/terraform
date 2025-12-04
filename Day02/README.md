 🚀 Terraform AWS Provider and VPC Setup

Terraform is an **Infrastructure as Code (IaC)** tool that allows you to define and manage cloud infrastructure using configuration files.  
This repository demonstrates how to configure the AWS Provider in Terraform and create a basic **Virtual Private Cloud (VPC)**.

This example helps beginners understand how Terraform communicates with AWS and provisions infrastructure.

---

📌 What This Project Covers

- What a Terraform Provider is and its role  
- How to configure the AWS Provider  
- Importance of provider versioning  
- Creating a basic AWS VPC using Terraform  
- Running core Terraform commands to preview and apply changes  

---

 🔹 Terraform Provider Configuration

The `terraform` block specifies the required provider and locks its version to ensure stable and predictable infrastructure behavior.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
🔹 Provider versioning avoids unexpected breaking changes and keeps deployments consistent.

🔹 AWS Provider Setup
The AWS provider block tells Terraform which cloud provider to use and in which region resources should be created.

hcl
Copy code
provider "aws" {
  region = "us-east-1"
}
Terraform uses this configuration to connect to AWS APIs.

🔹 AWS VPC Resource
This configuration creates a Virtual Private Cloud (VPC) with a custom CIDR block.

hcl
Copy code
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
VPC Details:
Resource Name: example

CIDR Block: 10.0.0.0/16

Region: us-east-1

💻 How to Run This Project
1️⃣ Initialize Terraform
Downloads the AWS provider and prepares the working directory.


terraform init
2️⃣ Preview Changes
Shows what Terraform plans to create.


terraform plan
📂 Project Files

main.tf – Terraform configuration file

.terraform.lock.hcl – Provider version lock file

✅ Why This Matters

Demonstrates real-world Terraform usage

Shows provider configuration best practices

Serves as a foundation for building AWS infrastructure

📎 Conclusion

This project demonstrates how Terraform uses the AWS Provider to create cloud infrastructure.
Understanding providers and basic resources like VPCs is essential for mastering Terraform and Cloud Automation.