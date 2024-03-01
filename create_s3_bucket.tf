terraform {
        required_providers{
        aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
}
}
required_version = ">=1.2.0"
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "my_s3_bucket" {
       bucket = "rahulsinha99"
       tags= {
              Name ="rahulsinha99"
              Environment= "Dev"
}
}