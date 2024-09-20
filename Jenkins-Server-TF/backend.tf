terraform {
  backend "s3" {
    bucket         = "hussain-mern-deployment"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "dynamodb-lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
