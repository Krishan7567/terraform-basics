terraform {
  backend "s3" {
    bucket  = "mybucket-tf-test"
    key     = "tf-bucket/terraform.tfstate"
    region  = "us-east-1"
    
  }
}