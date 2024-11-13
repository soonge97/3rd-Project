# Terraform 활용한 하이브리드 클라우드 3-Tier 웹 서비스 구축

## 📑목차
[1. 프로젝트 소개](#-프로젝트-소개)  
[2. 팀원 소개](#-팀원-소개)  
[3. 핵심 기술](#-핵심-기술)  
[4. 기술 스택](#-기술-스택)  
[5. 아키텍처](#-아키텍처)  
[6. PAGE](#-page)  
[7. 테스트 영상](#-테스트-영상)  
[8. 산출물](#-산출물)

## 🖥️ 프로젝트 소개

본 프로젝트는 안정적이고 신뢰할 수 있는 펫케어 서비스를 제공하는 웹 서비스 구축을 목표로 합니다.

Terraform을 사용해 인프라를 코드로 관리하고, AWS 클라우드 서버와 On-Premise 서버를 연동한 하이브리드 클라우드 아키텍처를 도입하여 고객 수요 증가와 데이터 보안을 동시에 만족하는 안정적인 인프라를 설계했습니다.

예기치 않은 트래픽 증가나 장애 상황에서도 서비스가 안정적으로 유지되도록 CA와 HPA를 적용해 서버 자원을 자동 확장하고, JMeter 부하 테스트를 통해 고부하 상황에서도 성능을 최적화할 수 있음을 검증했습니다. ALB를 이용한 트래픽 관리와 RDS 및 Redis의 이중화 설정을 통해 데이터베이스의 안정성도 강화했습니다.

서비스 할인 이벤트나 상품 정보 변경 등으로 인해 업데이트가 필요할 경우, ArgoCD를 통해 롤링 업데이트와 롤백이 가능하도록 구성하였으며, GitHub Actions와 Terraform Cloud를 연동하여 인프라의 자동 배포 파이프라인을 구축했습니다.

이와 같은 고가용성과 자동화된 배포 시스템을 통해 변화에 유연하게 대응하며 안정적인 서비스를 제공할 수 있는 인프라를 구축했습니다.



## 🙂 팀원 소개

| Name | 임희진 | 이재혁 | 황기창 |
| :------------: | :------------: | :------------: | :------------: |
|  | ![임희진4](https://github.com/user-attachments/assets/685032f2-ef80-4e27-b0e4-b1e7c1de232b) | ![이재혁4](https://github.com/user-attachments/assets/ae5f9148-cb99-4322-8563-c120e89a7b8f) | ![황기창4](https://github.com/user-attachments/assets/7d7f190c-9ed3-4109-8361-b85141b9f88e) |
| __Position__ | Project Leader | Technology Leader| Engineer|



## 🚀 핵심 기술
| Technology            | Description          |
|-----------------------|---------------------------------------------------------------------------------------------------|
| **Terraform**         | 인프라를 코드로 관리하기 위해 Terraform을 도입하여 IaC를 실현하고, 인프라 설정 자동화 및 반복 배포를 지원합니다. |
| **Hybrid Cloud**      | 클라우드와 온프레미스 서버를 통합한 하이브리드 구성으로 데이터 보안과 접근 제어가 강화되었으며, 확장성과 유연성 있는 인프라 관리가 가능합니다. |
| **Private Server**    | 관리자 전용 예약 관리 시스템을 위해 온프레미스에 프라이빗 서버를 구축하여 보안성을 확보했습니다. |
| **Site-to-Site VPN** | OpenSwan을 이용해 AWS 클라우드와 온프레미스 간 Site-to-Site VPN을 구축하여 안전한 네트워크 통신을 가능하게 했습니다. |
| **DMS**            | 온프레미스 데이터베이스를 AWS로 이전하고 실시간 동기화를 위해 AWS DMS를 활용하여 서비스 중단 없이 안정적으로 마이그레이션을 완료했습니다. |
| **CI/CD Pipeline** | ArgoCD, GitHub, GitHub Actions, Terraform Cloud를 연동하여 자동화된 CI/CD 배포 시스템을 구축해 빠르고 안정적인 배포를 지원합니다. |
| **High Availability** | 클러스터 가용성을 위해 CA와 HPA를 적용하여 트래픽 증가 시 서버 자원이 자동으로 확장되도록 구성했습니다. 또한, JMeter 부하 테스트를 통해 고부하 상황에서도 안정성을 검증하였으며, RDS와 Redis를 이중화(R/W, R/O)하여 장애 시에도 안정적인 운영이 가능하도록 했습니다. |



## 🛠 기술 스택

<table>
<tr>
 <td align="center">프로그래밍 언어</td>
 <td>
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=ffffff"/> <!--Java Script-->  
  <img src="https://img.shields.io/badge/Java-orange?style=for-the-badge&logo=Java&logoColor=white"/> <!--Java-->  
  <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"/> <!--Html-->   
  <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"/> <!--Css-->  
  <img src="https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white"/> <!--Sql-->  
 </td>
</tr>

<tr>
 <td align="center">프레임워크</td>
 <td>
  <img src="https://img.shields.io/badge/JSP-FF5F00?style=for-the-badge&logo=Java&logoColor=white"/> <!--Jsp-->  
  <img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=Spring&logoColor=ffffff"/> <!--Spring-->  
 </td>
</tr>

<tr>
 <td align="center">인프라</td>
 <td>
  <img src="https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white"/> <!--AWS-->  
  <img src="https://img.shields.io/badge/terraform-000000?style=for-the-badge&logo=terraform&logoColor=#844FBA"/> <!--Terraform-->
  <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=Kubernetes&logoColor=white"/> <!--Kubernetes-->  
  <img src="https://img.shields.io/badge/amazoneks-000000?style=for-the-badge&logo=amazoneks53&logoColor=#FF9900"/> <!--EKS-->
  <img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=Ubuntu&logoColor=white"/> <!--Ubuntu-->   
  <img src="https://img.shields.io/badge/docker-2496ED?style=for-the-badge&logo=docker&logoColor=ffffff"/> <!--Docker-->
  <img src="https://img.shields.io/badge/nginx-009639?style=for-the-badge&logo=nginx&logoColor=white"/> <!--Nginx-->
  <img src="https://img.shields.io/badge/tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black"/> <!--Tomcat--> 
  <img src="https://img.shields.io/badge/amazonrds-000000?style=for-the-badge&logo=amazonrds&logoColor=#527FFF"/> <!--RDS-->  
  <img src="https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=Redis&logoColor=white"/> <!--Redis-->  
  <img src="https://img.shields.io/badge/Amazon%20EC2-FF9900?style=for-the-badge&logo=Amazon%20EC2&logoColor=white"/> <!--EC2-->
  <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black"/> <!--Linux--> 
  <img src="https://img.shields.io/badge/OpenSwan-006F7A?style=for-the-badge&logo=OpenSwan&logoColor=white"/> <!--OpenSwan-->
  <img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white"/> <!--MariaDB-->
  <img src="https://img.shields.io/badge/amazonroute53-000000?style=for-the-badge&logo=amazonroute53&logoColor=#8C4FFF"/> <!--Route53-->
  <img src="https://img.shields.io/badge/AWS%20ALB-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white"/> <!--ALB-->
 </td>
</tr>

<tr>
 <td align="center">협업툴</td>
 <td>
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/> <!--Git-->  
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/> <!--GitHub-->  
  <img src="https://img.shields.io/badge/GitHub Actions-2088FF?style=for-the-badge&logo=GitHub Actions&logoColor=white"/> <!--GitHub Action-->  
  <img src="https://img.shields.io/badge/Terraform%20Cloud-7B42BC?style=for-the-badge&logo=terraform&logoColor=white"/> <!--Terraform Cloud-->  
 </td>
</tr>

<tr>
 <td align="center">기타</td>
 <td>
  <img src="https://img.shields.io/badge/WhaTap-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" alt="WhaTap"/> <!--WhaTap--> 
  <img src="https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=Notion&logoColor=white"/> <!--Notion-->  
  <img src="https://img.shields.io/badge/JSON-000000?style=for-the-badge&logo=json&logoColor=white"/> <!--Json-->  
 </td>
</tr>
</table>



## 🧱 아키텍처
![3차_3조전체시방서](https://github.com/user-attachments/assets/afa3839c-6442-4190-8153-7a8bcc13f981)



## 🌐 PAGE
* 메인
![main](https://github.com/user-attachments/assets/96d12c60-303f-43aa-878d-529cfa3af879)

* 회원가입
![signup](https://github.com/user-attachments/assets/71703698-b275-4023-8522-18d7b6ccf3a6)

* 로그인
![login](https://github.com/user-attachments/assets/9677e526-100e-4d74-b66b-da97f03ea029)

* 주문
![order1](https://github.com/user-attachments/assets/398a3a1b-84e2-44d7-9fac-27a0a931407d)
![order2](https://github.com/user-attachments/assets/38142566-6c7a-49b3-92e1-209ba20982f2)

* 예약
![reservation1](https://github.com/user-attachments/assets/611ceb9d-7467-4364-a23b-c77bd22181d9)

* 관리자 전용 페이지
![reservation2](https://github.com/user-attachments/assets/7ca37b6d-2539-4af0-8878-598bf6df85e9)

## 🧪 테스트 영상

테스트 영상은 용량 문제로 화질이 낮아 산출물에 따로 첨부합니다.

* Redis 적용

![Redis](https://github.com/user-attachments/assets/e6cbeb7d-da8b-49da-b6d5-b97a80e2be3b)

* 롤링업데이트 및 롤백
  
![롤백](https://github.com/user-attachments/assets/254cafa6-b660-42e1-a24c-b1d705033493)

* 부하테스트 및 Whatap 모니터링

![부하테스트 및 Whatap 모니터링](https://github.com/user-attachments/assets/fa3cd54d-1fa3-499f-bafc-88482725109b)


## 📦 산출물
* WBS
* 관리대장
* Terraform 소스코드
* Dockerfile
* yaml
* 테스트 영상
* 기술보고서
