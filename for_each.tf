terraform {
required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
}
}
        required_version = ">= 1.2.0"
}

provider "aws" {
region = "us-east-1"
}

locals {
        instances = {"Rahul":"ami-0b0dcb5067f052a63","Kumar":"ami-08c40ec9ead489470","Sinha":"ami-08c40ec9ead489470","Rahul2":"ami-0b0dcb5067f052a63"}
}

resource "aws_instance" "aws_ec2_test" {
        for_each = local.instances
        ami = each.value
        instance_type = "t2.micro"
        tags = {
     Name = each.key
  }
}
