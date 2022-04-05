data "aws_ami" "ami_centos" {
  owners      = ["125523088429"]
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS 7*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}