Terraform Installation Guide (Windows, macOS & Linux)

Terraform is an Infrastructure as Code (IaC) tool by HashiCorp that allows you to define, provision, and manage infrastructure using simple configuration files. This guide explains multiple ways to install Terraform across Windows, macOS, and Linux, including installation via Command Line (CLI).

📌 Official Installation Source

Terraform can be downloaded from the official HashiCorp documentation:
🔗 https://developer.hashicorp.com/terraform/install

🪟 Install Terraform on Windows
✅ Method 1: Using Winget (Recommended)

Install Terraform directly from Command Prompt or PowerShell:

winget install HashiCorp.Terraform

✅ Method 2: Manual Installation

Download the Windows ZIP file from the official site

Extract the terraform.exe file

Add the folder path to Environment Variables > PATH

Open Command Prompt and verify:

terraform -version

  Install Terraform on macOS
✅ Using Homebrew
brew tap hashicorp/tap
brew install hashicorp/tap/terraform


Verify installation:

terraform -version

🐧 Install Terraform on Linux
✅ Using Package Manager (APT – Ubuntu/Debian)
sudo apt update
sudo apt install terraform

✅ Manual Binary Install
wget https://releases.hashicorp.com/terraform/<version>/terraform_<version>_linux_amd64.zip
unzip terraform_<version>_linux_amd64.zip
sudo mv terraform /usr/local/bin/


Verify:

terraform -version

💻 Install Terraform via Command Prompt (CMD)

Terraform can be run directly from CMD, PowerShell, or Terminal after installation.

To check installation:

terraform -version


To initialize a project:

terraform init

✅ Conclusion

Terraform enables developers and DevOps engineers to provision infrastructure efficiently across cloud platforms. Installing Terraform correctly is the first step toward mastering Infrastructure as Code and automated cloud deployments.
