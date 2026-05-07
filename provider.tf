# configure aws provider
provider "aws" {
  region = var.region
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "eks-tf-statefile-b4"
    key            = "aws-eks-terraform.tfstate"
    region         = "ap-south-1"
    # dynamodb_table = "terraform_state"
  }
}
