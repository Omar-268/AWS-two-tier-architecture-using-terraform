resource "aws_subnet" "pub-sub-1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pub_subnet1_cidr
  availability_zone       = var.subnet1_az
  map_public_ip_on_launch = true 
}

resource "aws_subnet" "pub-sub-2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pub_subnet2_cidr
  availability_zone       = var.subnet2_az
  map_public_ip_on_launch = true 
}

resource "aws_subnet" "pri-sub-1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pri_subnet1_cidr
  availability_zone       = var.subnet1_az
  map_public_ip_on_launch = true 
}

resource "aws_subnet" "pri-sub-2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pri_subnet2_cidr
  availability_zone       = var.subnet2_az
  map_public_ip_on_launch = true 
}