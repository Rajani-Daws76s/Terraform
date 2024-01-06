resource "aws_instance" "rajani" {
  #count  = 11 #count/index is special variable given by teraaform
  count = length(var.instance_names)
  ami           = var.ami-id
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "shipping" || var.instance_names[count.index] == "mysql" ? "t3.small" : "t2.micro"
  tags  = {
  Name  = var.instance_names[count.index] # this will give diferent name for each instance
  } 
}

# this is for creating route 53 records
resource "aws_route53_record" "www" {
  #count  = 11
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}" # interpolation is combination variable and text 
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.rajani[count.index].public_ip : aws_instance.rajani[count.index].private_ip] # aws_instance.rajani this is using for getting the o/p of public and private ip from your terraform script
  } 