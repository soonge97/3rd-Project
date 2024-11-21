# ON-PREMISE public subnet
resource "aws_subnet" "ON-PREMISE-PUB-1A" {
  vpc_id                  = aws_vpc.ON-PREMISE-VPC.id
  cidr_block              = "10.240.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = {
    "Name" = "ON-PREMISE-PUB-1A"
  }
}

# ON-PREMISE pirvate subnet
resource "aws_subnet" "ON-PREMISE-PRI-1A" {
  vpc_id            = aws_vpc.ON-PREMISE-VPC.id
  cidr_block        = "10.240.2.0/24"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "ON-PREMISE-PRI-1A"
  }
}