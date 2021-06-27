terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.47.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "my-vpc" {
  cidr_block       = var.my-vpc-cidr
  tags = {
    Name = var.vpc_tag
  }
}

resource "aws_subnet" "Public_Subnet" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.pub_subnet_cidr
  availability_zone = var.pub_subnet_az

  tags = {
    Name = var.public_subnet_tag
  }
}

resource "aws_subnet" "Private_Subnet" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.pri_subnet_cidr
  availability_zone = var.pri_subnet_az

  tags = {
    Name = var.private_subnet_tag
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = var.igw_tag
  }
}