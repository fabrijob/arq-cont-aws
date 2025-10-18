resource "aws_eip" "vpc_eip" {
  domain = "vpc"

  tags = {
    Name = format("%s-eip", var.project_name)
  }

}

resource "aws_nat_gateway" "vpc_nat" {
  allocation_id = aws_eip.vpc_eip.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = {
    Name = format("%s-nat", var.project_name)
  }
}