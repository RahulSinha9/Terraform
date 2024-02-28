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

resource "aws_instance" "my_ec2_instance"{ 
   ami="ami-0c7217cdde317cfec"
   count = 5
   instance_type="t2.micro"
   tags = {
          name = "Terraform-Test"
}
}
