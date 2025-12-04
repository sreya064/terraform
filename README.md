🚀 Terraform Installation Guide (Windows, macOS & Linux)

Terraform is an Infrastructure as Code (IaC) tool developed by HashiCorp that allows you to define, provision, and manage cloud and on-premises infrastructure using simple, human-readable configuration files.

This repository provides a step-by-step guide to installing Terraform on Windows, macOS, and Linux, including installation via command line tools.

📌 Official Documentation

🔗 https://developer.hashicorp.com/terraform/install

🪟 Install Terraform on Windows
✅ Method 1: Using Winget (Recommended)

Install Terraform easily using Command Prompt or PowerShell:

winget install HashiCorp.Terraform


Verify installation:

terraform -version

✅ Method 2: Manual Installation

Download the Terraform ZIP file from the official website

Extract the terraform.exe file

Add the extracted folder path to Environment Variables (PATH)

Open Command Prompt and verify installation:

terraform -version

🍎 Install Terraform on macOS
✅ Using Homebrew
brew tap hashicorp/tap
brew install hashicorp/tap/terraform


Verify installation:

terraform -version

🐧 Install Terraform on Linux
✅ Using APT (Ubuntu / Debian)
sudo apt update
sudo apt install terraform

✅ Manual Binary Installation
wget https://releases.hashicorp.com/terraform/<version>/terraform_<version>_linux_amd64.zip
unzip terraform_<version>_linux_amd64.zip
sudo mv terraform /usr/local/bin/


Verify:

terraform -version

💻 Using Terraform via Command Line (CMD / Terminal)

Terraform works through command line interfaces:

terraform -version     # Check installed version
terraform init        # Initialize a Terraform project
terraform plan        # Show execution plan
terraform apply       # Apply infrastructure changes
terraform destroy     # Destroy managed infrastructure

✅ Why Use Terraform?

Infrastructure as Code (IaC)

Cloud-agnostic (AWS, Azure, GCP & more)

Easy version control & automation

Fast, repeatable, and reliable deployments

🔄 Typical Beginner Commands Cheat Sheet
terraform init
terraform validate
terraform plan
terraform apply

🌱 Getting Started

Create your first Terraform file:

terraform {
  required_version = ">= 1.0.0"
}


Initialize the directory:

terraform init

📎 Conclusion

Installing Terraform is the first step toward building scalable and automated infrastructure. This guide makes it simple to get started on any major operating system.

⭐ If this repo helped you, don’t forget to star