# Team No.3
__한국정보교육원 3rd-Project__ 

__Terraform을 활용한 AWS 3Tier 웹서비스 구축__


본 프로젝트는 안정적이고 신뢰할 수 있는 펫케어 서비스를 제공하는 웹서비스 구축을 목표로 하였습니다. AWS 클라우드 서버와 On-Premise 서버를 연동한 하이브리드 클라우드 아키텍처를 도입하여 고객 수요 증가와 데이터 보안을 동시에 충족할 수 있도록 설계했습니다.

특히, 예기치 않은 트래픽 증가나 장애 상황에도 서비스를 안정적으로 유지하기 위해 **Cluster Autoscaler(CA)**와 Horizontal Pod Autoscaler(HPA) 기능을 적용하여 서버 자원을 자동으로 확장하고, JMeter를 통해 부하 테스트를 실시하여 고부하 상황에서도 성능을 최적화할 수 있음을 검증했습니다.

또한, 서비스 할인 이벤트나 상품 정보 변경 등으로 인해 업데이트가 필요할 경우, ArgoCD를 통해 롤링 업데이트와 롤백이 가능하도록 구성하여, 코드나 구성의 변경이 서비스에 영향을 주지 않도록 했습니다.

이와 같은 고가용성과 자동화된 배포 시스템을 통해 언제든지 변화에 유연하게 대응하며 안정적인 서비스를 제공할 수 있는 인프라를 구축했습니다.

이 아키텍처 구축을 위해 다음의 핵심 기술을 활용하였습니다.

| Technology            | Description          |
|-----------------------|---------------------------------------------------------------------------------------------------|
| **Terraform**         | 인프라를 코드로 관리하기 위해 Terraform을 도입하여 IaC를 실현하였으며, 인프라 설정을 자동화하고 반복 배포를 지원합니다. |
| **Hybrid Cloud**      | 클라우드와 온프레미스 서버를 통합한 하이브리드 서버 구성을 통해 데이터 보안과 시스템 접근 제어가 강화되었으며, 확장성과 유연성 있는 인프라 관리가 가능해졌습니다. |
| **Private Server**      | 관리자 전용 예약 관리 시스템을 위해 온프레미스 Private 서버에 서버을 구축하고, 보안 강화를 위해 클라우드와 VPN으로 연동하였습니다. |
| **AWS DMS**           | 데이터베이스를 AWS로 이전 및 실시간 동기화하기 위해 AWS DMS를 활용하여, 서비스 중단 없이 마이그레이션을 진행하였습니다. |
| **CI/CD Pipeline** | ArgoCD, GitHub, Terraform Cloud를 연동하여 자동화된 CI/CD 배포 시스템을 구현하여 빠르고 신뢰성 있는 배포를 지원합니다. |
| **HA** | 클러스터의 가용성을 높이기 위해 CA와 HPA를 적용하여, 트래픽이 증가할 때 자동으로 서버 자원을 확장하도록 구성하였습니다. JMeter를 활용해 부하 테스트를 수행하여 고부하 상황에서도 안정적인 서비스 운영이 가능함을 검증했습니다. |

## ✈ 배포주소

개발 버전 : version 1.0.0.0 </br>
도메인 주소 : www..store </br>

## ✌️버전
| Version | Description | Date |
| --- | --- | --- |
| 0.1.1 | - AWS 서버 구축 | 2024.09.23 |
| 0.1.2 | - ON-Premise 서버 구축 | 2024.09.26 |
| 1.0.0 | - 서버 연동 완료 | 2024.09.30 |



## 🧑‍💻팀원 소개

| Name | 임희진 | 이재혁 | 황기창 |
| :------------: | :------------: | :------------: | :------------: |
|  | <img src="https://avatars.githubusercontent.com/u/174424101?v=4" width="150" /> | <img src="https://avatars.githubusercontent.com/u/174182609?v=4" width="150" /> | <img src="https://avatars.githubusercontent.com/u/175070823?v=4" width="150" /> |
| __Position__ | Project Leader | Technology Leader| Engineer|



## 📌 프로젝트 소개


### 프로젝트 기획 배경



## 🛠기술 스택

<table>
<tr>
 <td align="center">언어</td>
 <td>
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=ffffff"/>
  <img src="https://img.shields.io/badge/Java-orange?style=for-the-badge&logo=Java&logoColor=white"/>
  <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"> 	 
  <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"/>
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=Python&logoColor=white">
  <img src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=Node.js&logoColor=white">
 </td>
</tr>
	
<tr>
 <td align="center">프레임워크</td>
 <td>
  <img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=Spring&logoColor=ffffff"/> 
</tr>

<tr>
 <td align="center">인프라</td>
 <td>
  <img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white"/>
  <img src="https://img.shields.io/badge/tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black">
	<img src="https://img.shields.io/badge/nginx-009639?style=for-the-badge&logo=nginx&logoColor=white">
  <img src="https://img.shields.io/badge/docker-2496ED?style=for-the-badge&logo=docker&logoColor=ffffff"/>
  <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
  <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">
  <img src="https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white"/>
  <img src="https://img.shields.io/badge/Redis-DC382D?style=for-the-badge&logo=Redis&logoColor=white"> 
  <img src="https://img.shields.io/badge/Amazon%20EC2-FF9900?style=for-the-badge&logo=Amazon%20EC2&logoColor=white">
  <img src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=Ubuntu&logoColor=white"/>
  <img src="https://img.shields.io/badge/amazonrds-000000?style=for-the-badge&logo=amazonrds&logoColor=#527FFF"/>
  <img src="https://img.shields.io/badge/amazonroute53-000000?style=for-the-badge&logo=amazonroute53&logoColor=#8C4FFF"/>
  <img src="https://img.shields.io/badge/amazoneks-000000?style=for-the-badge&logo=amazoneks53&logoColor=#FF9900"/>
  
  
<tr>
 <td align="center">협업툴</td>
 <td>
    <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/>
    <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>
    <img src="https://img.shields.io/badge/GitHub Actions-2088FF?style=for-the-badge&logo=GitHub Actions&logoColor=white">
    <img src="https://img.shields.io/badge/terraform-000000?style=for-the-badge&logo=terraform&logoColor=#844FBA"/>

   
 </td>
</tr>
<tr>
 <td align="center">기타</td>
 <td>
    <img src="https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=Notion&logoColor=white"/>
    <img src="https://img.shields.io/badge/JSON-000000?style=for-the-badge&logo=json&logoColor=white"/>
</tr>
</table>

## 🧱아키텍처
![architecture.png](images/architecture.png)







## 🗂PAGE
--PAGE
![index.jpeg](images/index.jpeg) ![rollingupdate.jpeg](images/rollingupdate.jpeg)
![signup.jpeg](images/signup.jpeg) ![login.jpeg](images/login.jpeg)
![admin.jpeg](images/admin.jpeg) ![introduce.jpeg](images/introduce.jpeg)
![category.jpeg](images/category.jpeg)

