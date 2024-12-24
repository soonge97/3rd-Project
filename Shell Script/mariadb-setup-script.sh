#!/bin/bash

# 방화벽 비활성화
sudo ufw disable

# DEBIAN_FRONTEND를 noninteractive로 설정하여 자동화
export DEBIAN_FRONTEND=noninteractive

# MariaDB 설치
sudo apt-get update -y
sudo apt-get install -y mariadb-server curl libcurl4-openssl-dev

# MariaDB 서비스 시작
sudo systemctl start mariadb
sudo systemctl enable mariadb