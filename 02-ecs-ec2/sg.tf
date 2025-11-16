resource "aws_security_group" "main" {
  name        = format("%s", var.project_name)
  description = "Allow SSH, HTTP, HTTPS, and MySQL traffic"
  vpc_id      = data.aws_ssm_parameter.vpc.value

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "subnet_ranges" {
  security_group_id = aws_security_group.main.id
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["10.0.0.0/16"]
  description       = "Liberando trafego VPC"
}