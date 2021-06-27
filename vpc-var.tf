variable "my-vpc-cidr" {
    type = string
    description = " vpc cidr"
}

variable "pub_subnet_az" {
    type = string
    description = "public subnet az"

}

variable "pri_subnet_az" {
    type = string
    description = "private subnet az"

}
variable "pub_subnet_cidr" {
    type = string
    description = "public subnet cidr"
}
variable "pri_subnet_cidr" {
    type = string
    description = "private subnet cidr"
}

variable "vpc_tag" {
    type = string
    description = "vpc tag"
}
variable "public_subnet_tag" {
    type = string
    description = "public subnet tag"
}
variable "private_subnet_tag" {
    type = string
    description = "private subnet tag"
}
variable "igw_tag" {
    type = string
    description = "igw tag"
}
