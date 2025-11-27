resource "aws_vpc" "myvpc" {
  cidr_block       =  var.vpc-cidr
  instance_tenancy = "default"

  tags = {
    Name = "var.vpc-name"
  }
} 
