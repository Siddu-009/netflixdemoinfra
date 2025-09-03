provider "aws" {
  region ="us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0360c520857e3138f"
instance_type = "t3.micro"
key_name = "siddu"
vpc_security_group_ids = ["sg-01c91cd3a6719927b"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "s3", "AppServer-1", "AppServer-2", "Monitoring server"]
}
