# Terraform 활용한 하이브리드 클라우드 3-Tier 웹 서비스 구축

한국정보교육원 3rd-Project

## 🖥️ 프로젝트 소개

본 프로젝트는 안정적이고 신뢰할 수 있는 펫케어 서비스를 제공하는 웹 서비스 구축을 목표로 합니다.

Terraform을 사용해 인프라를 코드로 관리하고, AWS 클라우드 서버와 On-Premise 서버를 연동한 하이브리드 클라우드 아키텍처를 도입하여 고객 수요 증가와 데이터 보안을 동시에 만족하는 안정적인 인프라를 설계했습니다.

예기치 않은 트래픽 증가나 장애 상황에서도 서비스가 안정적으로 유지되도록 CA와 HPA를 적용해 서버 자원을 자동 확장하고, JMeter 부하 테스트를 통해 고부하 상황에서도 성능을 최적화할 수 있음을 검증했습니다. ALB를 이용한 트래픽 관리와 RDS 및 Redis의 이중화 설정을 통해 데이터베이스의 안정성도 강화했습니다.

서비스 할인 이벤트나 상품 정보 변경 등으로 인해 업데이트가 필요할 경우, ArgoCD를 통해 롤링 업데이트와 롤백이 가능하도록 구성하였으며, GitHub Actions와 Terraform Cloud를 연동하여 인프라의 자동 배포 파이프라인을 구축했습니다.

이와 같은 고가용성과 자동화된 배포 시스템을 통해 변화에 유연하게 대응하며 안정적인 서비스를 제공할 수 있는 인프라를 구축했습니다.



## 🙂팀원 소개

| Name | 임희진 | 이재혁 | 황기창 |
| :------------: | :------------: | :------------: | :------------: |
|  | <img src="https://avatars.githubusercontent.com/u/174424101?v=4" width="150" /> | <img src="https://avatars.githubusercontent.com/u/174182609?v=4" width="150" /> | <img src="https://avatars.githubusercontent.com/u/175070823?v=4" width="150" /> |
| __Position__ | Project Leader | Technology Leader| Engineer|



## 🚀핵심 기술
| Technology            | Description          |
|-----------------------|---------------------------------------------------------------------------------------------------|
| **Terraform**         | 인프라를 코드로 관리하기 위해 Terraform을 도입하여 IaC를 실현하고, 인프라 설정 자동화 및 반복 배포를 지원합니다. |
| **Hybrid Cloud**      | 클라우드와 온프레미스 서버를 통합한 하이브리드 구성으로 데이터 보안과 접근 제어가 강화되었으며, 확장성과 유연성 있는 인프라 관리가 가능합니다. |
| **Private Server**    | 관리자 전용 예약 관리 시스템을 위해 온프레미스에 프라이빗 서버를 구축하여 보안성을 확보했습니다. |
| **Site-to-Site VPN** | OpenSwan을 이용해 AWS 클라우드와 온프레미스 간 Site-to-Site VPN을 구축하여 안전한 네트워크 통신을 가능하게 했습니다. |
| **DMS**            | 온프레미스 데이터베이스를 AWS로 이전하고 실시간 동기화를 위해 AWS DMS를 활용하여 서비스 중단 없이 안정적으로 마이그레이션을 완료했습니다. |
| **CI/CD Pipeline** | ArgoCD, GitHub, GitHub Actions, Terraform Cloud를 연동하여 자동화된 CI/CD 배포 시스템을 구축해 빠르고 안정적인 배포를 지원합니다. |
| **High Availability** | 클러스터 가용성을 위해 CA와 HPA를 적용하여 트래픽 증가 시 서버 자원이 자동으로 확장되도록 구성했습니다. 또한, JMeter 부하 테스트를 통해 고부하 상황에서도 안정성을 검증하였으며, RDS와 Redis를 이중화(R/W, R/O)하여 장애 시에도 안정적인 운영이 가능하도록 했습니다. |



## 🛠기술 스택

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


## 🧱아키텍처
![architecture.png](images/architecture.png)







## 🌐PAGE
--PAGE
![index.jpeg](images/index.jpeg) ![rollingupdate.jpeg](images/rollingupdate.jpeg)
![signup.jpeg](images/signup.jpeg) ![login.jpeg](images/login.jpeg)
![admin.jpeg](images/admin.jpeg) ![introduce.jpeg](images/introduce.jpeg)
![category.jpeg](images/category.jpeg)

