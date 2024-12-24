#!/bin/bash 

# 방화벽 비활성화
echo "y" | sudo -S ufw disable

# net.ipv4.ip_forward 설정 추가
echo 'net.ipv4.ip_forward = 1' | sudo tee -a /etc/sysctl.conf

# sysctl 적용
sudo sysctl -p

# 필수 패키지 설치
sudo add-apt-repository -y ppa:vbernat/haproxy-1.5
sudo apt-get update
sudo apt-get install -f

# HAProxy 설치
sudo apt-get install -y haproxy

# HAProxy 설정 파일 수정
cat <<EOT | sudo tee -a /etc/haproxy/haproxy.cfg
frontend kubernetes-frontend
  bind *:6443
  mode tcp
  default_backend kubernetes-backend

backend kubernetes-backend
  mode tcp
  balance roundrobin
  server master1 10.240.2.11:6443 check
  server master2 10.240.2.12:6443 check
  server master3 10.240.2.13:6443 check

frontend http-frontend
  bind *:80
  mode tcp
  default_backend http-backend

backend http-backend
  mode tcp
  balance roundrobin
  server master1 10.240.2.11:30100 check
  server master2 10.240.2.12:30100 check
  server master3 10.240.2.13:30100 check
EOT

# HAProxy 서비스 활성화 및 재시작
sudo systemctl enable haproxy
sudo systemctl restart haproxy
