resource "aws_eip" "myeip" {
  vpc = true
}

resource "aws_security_group" "mysg" {
  name = "mysg"


  //   ingress {
  //     from_port   = 22
  //     to_port     = 22
  //     protocol    = "tcp"
  //     cidr_blocks = ["0.0.0.0/0"]
  //   }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}