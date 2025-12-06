 terraform {

  backend "s3" {
    bucket = "sreyaaaa-terraorm-state"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    use_lockfile = true
  }
 required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create S3 bucket
resource "aws_s3_bucket" "dev_bucket" {
  bucket = "my-tf-sreya-04-954837761329-dev"

  tags = {
    Name        = "My bucket2.0"
    Environment = "Dev"
  }
}