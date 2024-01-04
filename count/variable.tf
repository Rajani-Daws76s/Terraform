variable "instance_names" {
    type = list
    default =[ "mongodb", "cart", "shipping","catalogue", "payment","redis", "rabbitmq","user","mysql","dispatch","web"]
}

variable "ami-id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "zone_id" {
    type = string
    default = "Z0335932384ZIMGUA0JCN"
}

variable "domain_name" {
    type = string
    default = "aadhyuar2105.online"
}

