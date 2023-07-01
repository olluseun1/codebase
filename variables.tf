variable "ec2_ami" {
  description = "This is a variable to manage ec2 AMI type"
  type        = string
  default     = "ami-00b1c9efd33fda707"

}


variable "ec2_key_name" {
  description = "This is a variable to manage key"
  type        = string
  default     = "newkey"

}

variable "ec2_instance_type" {
  description = "This is a variable to manage instance type"
  type        = string
  default     = "t2.micro"
}

variable "default_tags" {
  description = "This is a variable to manage ec2 tags"
  type        = map(any)
  default = {
    "Name" = "Some node"
    "dept" = "development"
  }
}

variable "bucket" {}
variable "key" {}
variable "sg_name" {
  
}