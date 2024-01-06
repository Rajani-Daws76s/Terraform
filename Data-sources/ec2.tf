resource "aws_instance" "web" {
  ami           = data.aws_ami.aws-linux-2.id
  instance_type = "t2.small"
  tags = {
    Name = "data-source-awslinux"
  }
}