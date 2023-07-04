terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.16"
    }
  }
  backend "s3" {
    # bucket = "techbleat-terraform-statefile"
    bucket = var.bucket
    # key    = "dev/terraform.tfstate"
    key = var.key
    region = "eu-west-1"
  }
}

provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "eu-west-1"
}
