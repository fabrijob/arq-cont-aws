resource "aws_security_group" "lb" {
  name   = format("%s-loadbalancer", var.project_name)
  vpc_id = data.aws_ssm_parameter.vpc.value

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "ingress_80" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 80
  to_port           = 80
  description       = "Allow port 80"
  protocol          = "tcp"
  security_group_id = aws_security_group.lb.id
  type              = "ingress"

}

resource "aws_security_group_rule" "ingress_443" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  to_port           = 443
  description       = "Allow port 443"
  protocol          = "tcp"
  security_group_id = aws_security_group.lb.id
  type              = "ingress"

}

resource "aws_lb" "main" {
  name               = format("%s-loadbalancer", var.project_name)
  load_balancer_type = var.Loadbalancer_type
  internal           = var.Loadbalancer_internal
  security_groups = [
    aws_security_group.lb.id
  ]

  enable_cross_zone_load_balancing = false
  enable_deletion_protection       = false

  subnets = [
    data.aws_ssm_parameter.subnet_public_1a.value,
    data.aws_ssm_parameter.subnet_public_1b.value,
    data.aws_ssm_parameter.subnet_public_1c.value
  ]

  tags = {
    Name = format("%s-loadbalancer", var.project_name)
  }

}

resource "aws_lb_listener" "main" {
  load_balancer_arn = aws_lb.main.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      message_body = "LinuxTips"
      status_code  = "200"
    }
  }

}