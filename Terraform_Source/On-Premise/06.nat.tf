resource "aws_eip" "ON-PREMISE-EIP" {
  domain = "vpc"
}

resource "aws_nat_gateway" "ON-PREMISE-NGW" {
  allocation_id = aws_eip.ON-PREMISE-EIP.id
  subnet_id     = aws_subnet.ON-PREMISE-PUB-1A.id
  tags = {
    "Name" = "ON-PREMISE-NGW"
  }
}