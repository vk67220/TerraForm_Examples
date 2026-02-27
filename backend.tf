terraform {
  backend "s3" {
    bucket         = "my-terraform-state-us-east-1"   # Must already exist
    key            = "s3-project/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terra-locks"                    # Must already exist
    encrypt        = true
  }
}