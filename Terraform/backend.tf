terraform {
  backend "s3" {
    bucket         = BACKEND_S3_BUCKET
    key            = "vpc_securitygroup_sample/terraform.tfstate"
    region         = REGION
    dynamodb_table = LOCK_DYNAMODB
    encrypt        = true
  }
}