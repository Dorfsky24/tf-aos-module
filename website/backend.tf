#store the terraform state file in s3 bucket
terraform {
  backend "s3" {
    bucket  = "seed-bkt"
    key     = "3tier_vpc"
    region  = "us-east-1"
    profile = "seed1234"
  }
} 