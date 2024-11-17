# HAProxy
resource "aws_instance" "ON-PREMISE-PUB-HAProxy-1A" {
  ami                         = "ami-03a4942b8fcc1f29d"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.ON-PREMISE-SG-HAPROXY.id]
  subnet_id                   = aws_subnet.ON-PREMISE-PUB-1A.id
  key_name                    = "changus"
  associate_public_ip_address = true


  root_block_device {
    volume_size = "8"
    volume_type = "gp2"
    tags = {
      "Name" = "ON-PREMISE-PUB-HAProxy-1A"
    }
  }
}

# Master Node
resource "aws_instance" "k8s_master" {
  count                  = 3
  ami                    = "ami-03a4942b8fcc1f29d"
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.ON-PREMISE-PRI-1A.id
  vpc_security_group_ids = [aws_security_group.ON-PREMISE-SG-MASTERNODE.id]
  key_name               = "changus"

  # 특정 프라이빗 IP 주소 할당
  private_ip = element(
    ["10.240.2.11", "10.240.2.12", "10.240.2.13"],
    count.index
  )

  tags = {
    Name = "k8s-master${count.index + 1}" # Name 태그에 인덱스를 사용하여 1부터 시작
  }
}

# Worker Node
resource "aws_instance" "k8s_worker" {
  count                  = 3
  ami                    = "ami-03a4942b8fcc1f29d"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.ON-PREMISE-PRI-1A.id
  vpc_security_group_ids = [aws_security_group.ON-PREMISE-SG-WORKERNODE.id]
  key_name               = "changus"

  # 특정 프라이빗 IP 주소 할당
  private_ip = element(
    ["10.240.2.101", "10.240.2.102", "10.240.2.103"],
    count.index
  )

  tags = {
    Name = "k8s-worker${count.index + 1}" # Name 태그에 인덱스를 사용하여 1부터 시작
  }
}

resource "aws_instance" "MariaDB-Master" {
  ami                    = "ami-03a4942b8fcc1f29d"
  instance_type          = "t2.medium"
  vpc_security_group_ids = [aws_security_group.ON-PREMISE-SG-DB.id]
  subnet_id              = aws_subnet.ON-PREMISE-PRI-1A.id
  key_name               = "changus"
  private_ip             = "10.240.2.201"

  root_block_device {
    volume_size = "8"
    volume_type = "gp2"
    tags = {
      "Name" = "MariaDB-Master"
    }
  }
}

# OpenSwan package 설치할 Instance
resource "aws_instance" "ON-PREMISE-PUB-Openswan-1A" {
  ami                         = "ami-0e54eba7c51c234f6"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.ON-PREMISE-SG-OPENSWAN.id]
  subnet_id                   = aws_subnet.ON-PREMISE-PUB-1A.id
  key_name                    = "changus"
  associate_public_ip_address = true
  root_block_device {
    volume_size = "8"
    volume_type = "gp2"
    tags = {
      "Name" = "ON-PREMISE-PUB-Openswan-1A"
    }
  }

  tags = {
    "Name" = "ON-PREMISE-PUB-Openswan-1A"
  }
}

