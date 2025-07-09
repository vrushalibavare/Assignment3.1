terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  
  required_version = ">= 1.0.0"
}
provider "aws" {
  region = "ap-southeast-1"
}
resource "aws_s3_bucket" "vrush_bucket" {
  bucket = "vrush-workflow-bucket"

  tags = {
    Name        = "vrush-tfstate-bucket"
    Environment = "Dev"
  }
}