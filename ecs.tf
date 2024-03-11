terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "5.38.0" }
  }
}
provider "aws" {
//  profile = "default"
  region  = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket = "pfrda-terraform"
    key    = "ecs_pfrda_app/terraform.tfstate"
    region = "ap-south-1"
  }
}
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-t0e0s7t-b1u2c3k4e5t67"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
