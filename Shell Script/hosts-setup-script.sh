#!/bin/bash

# 추가할 호스트 데이터
HOSTS_DATA="\
10.0.1.11 ha-proxy
10.0.11.11 k8s-master1
10.0.11.12 k8s-master2
10.0.11.13 k8s-master3
10.0.11.101 k8s-worker1
10.0.11.102 k8s-worker2
10.0.11.103 k8s-worker3"

# 기존 데이터 삭제 (중복 방지)
for HOST in ha-proxy k8s-master1 k8s-worker1 k8s-worker2; do
    sudo sed -i "/$HOST/d" /etc/hosts
done

# 새로운 데이터 추가
echo "$HOSTS_DATA" | sudo tee -a /etc/hosts