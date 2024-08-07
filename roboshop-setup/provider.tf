terraform {
  backend "s3" {
    bucket  = "mybucket-tf-test"
    key     = "tf-bucket1/terraform.tfstate"
    region  = "us-east-1"
    
  }
}

provider "aws" {
  region = "us-east-1"
}
