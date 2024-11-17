
resource "aws_vpc_peering_connection" "prd-dev-peering" {
  vpc_id      = aws_vpc.PRD-VPC.id
  peer_vpc_id = aws_vpc.DEV-VPC.id

  tags = {
    Name = "PRD-DEV Connection"
  }
}

