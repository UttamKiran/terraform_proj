provider "aws"{
  region = "ap-south-1"
}



resource "aws_vpc" "my_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "JavaHome"
    Environment = "Dev"
  }
}

output "vpc_cidr" {

   value="${aws_vpc.my_vpc.cidr_block}"
}

output "vpc_owner" {

   value="${aws_vpc.my_vpc.owner_id}"

}
