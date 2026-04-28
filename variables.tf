variable "region" {
  description = "Value for region"
}

variable "vpc_cidr" {
  description = "Value for VPC CIDR block"
}

variable "vpc_name" {
  description = "Name for VPC"
}

variable "subnet1_az" {
  description = "Value for Subnet-1 availability zone"
}

variable "subnet2_az" {
  description = "Value for Subnet-2 availability zone"
}

variable "pub_subnet1_cidr" {
  description = "Value for public Subnet-1 CIDR block"
}

variable "pub_subnet2_cidr" {
  description = "Value for public Subnet-2 CIDR block"
}

variable "ig_name" {
  description = "Name for Internet gateway"
}

variable "pub_rt_name" {
  description = "Name for public route table"
}

variable "pri_subnet1_cidr" {
  description = "Value for private Subnet-1 CIDR block"
}

variable "pri_subnet2_cidr" {
  description = "Value for private Subnet-2 CIDR block"
}

variable "ami_id" {
  description = "Value for ami-id"
}

variable "instance_type" {
  description = "Value for instance type"
}

variable "db_subnet" {
  description = "Name for db subnet group"
}

variable "lb_sg_name" {
  description = "Name for Load balancer Security group"
}

variable "lb_name" {
  description = "Name for Load Balancer"
}

variable "sg_name" {
  description = "Name for Security group"
}

variable "tg_name" {
  description = "Name for Target group"
}

variable "db_username" {
  description = "Username for db instance"
}

variable "db_password" {
  description = "Password for db instance"
}

variable "db_sg_name" {
  description = "Name for db security group"
}

variable "key_name" {
  description = "value for key-name"
}

variable "access_key" {
  description = "AWS IAM access key"
  type        = string
  sensitive   = true
}
variable "secret_key" {
  description = "AWS IAM secret key"
  type        = string
  sensitive   = true
}