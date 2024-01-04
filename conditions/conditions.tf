resource "aws_instance" "rajani" {
  ami           = var.ami-id
  instance_type = var.instance_name == "mongodb" ? "t3.small" : "t2.micro" 
}
