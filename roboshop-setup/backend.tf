terraform {
  backend "s3" {
    bucket  = "mybucket-tf-test"
    key     = "tf-bucket2/terraform.tfstate"
    region  = "us-east-1"
    
  }
}
