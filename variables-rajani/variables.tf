variable "ami-id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
      Name = "Hello Tearraform"
      Project = "roboshop"
      Environment = "dev"
      component = "web"
      Terraform = "true"
    }
}

variable "sg-name" {
    type = string
    default = "roboshop-all-aws1"
}

variable "sg-description" {
    type = string
    default = "allow all ports"
}

variable "inbound-from-port" {
    type = string
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}