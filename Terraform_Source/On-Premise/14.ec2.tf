# HAProxy
resource "aws_instance" "ON-PREMISE-PUB-HAProxy-1A" {
  count                       = 2
  ami                         = "ami-03a4942b8fcc1f29d"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.ON-PREMISE-SG-HAPROXY.id]
  subnet_id                   = aws_subnet.ON-PREMISE-PUB-1A.id
  key_name                    = "soonge97-virgin"
  associate_public_ip_address = true

  # 특정 프라이빗 IP 주소 할당
  private_ip = element(
    ["10.240.1.11", "10.240.1.12"],
    count.index
  )

  tags = {
    Name = "HAProxy${count.index + 1}" # Name 태그에 인덱스를 사용하여 1부터 시작
  }
}

# Master Node
resource "aws_instance" "k8s_master" {
  count                  = 3
  ami                    = "ami-03a4942b8fcc1f29d"
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.ON-PREMISE-PRI-1A.id
  vpc_security_group_ids = [aws_security_group.ON-PREMISE-SG-MASTERNODE.id]
  key_name               = "soonge97-virgin"

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
  count                  = 2
  ami                    = "ami-03a4942b8fcc1f29d"
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.ON-PREMISE-PRI-1A.id
  vpc_security_group_ids = [aws_security_group.ON-PREMISE-SG-WORKERNODE.id]
  key_name               = "soonge97-virgin"

  # 특정 프라이빗 IP 주소 할당
  private_ip = element(
    ["10.240.2.101", "10.240.2.102"],
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
  key_name               = "soonge97-virgin"
  private_ip             = "10.240.2.201"

  root_block_device {
    volume_size = "8"
    volume_type = "gp2"
    tags = {
      "Name" = "MariaDB-Master"
    }
  }

  tags = {
    Name = "MariaDB-Master"
  }
}


resource "aws_instance" "MariaDB-Slave" {
  ami                    = "ami-03a4942b8fcc1f29d"
  instance_type          = "t2.medium"
  vpc_security_group_ids = [aws_security_group.ON-PREMISE-SG-DB.id]
  subnet_id              = aws_subnet.ON-PREMISE-PRI-1A.id
  key_name               = "soonge97-virgin"
  private_ip             = "10.240.2.202"

  root_block_device {
    volume_size = "8"
    volume_type = "gp2"
    tags = {
      "Name" = "MariaDB-Slave"
    }
  }

  tags = {
    Name = "MariaDB-Slave"
  }
}