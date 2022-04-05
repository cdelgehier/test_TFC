resource "aws_instance" "myec2" {
  ami             = data.aws_ami.ami_centos.image_id
  instance_type   = var.instance_type
  security_groups = ["${aws_security_group.mysg.name}"]

  tags = {
    Name = "test_TFC"
  }
}