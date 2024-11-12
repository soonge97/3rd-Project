# Team No.3
한국 정보 교육원 3rd-Project 

본 프로젝트는 안정적이고 신뢰할 수 있는 펫케어 서비스를 제공하기 위해 AWS 클라우드와 온프레미스 Private 서버를 연동한 하이브리드 클라우드 아키텍처를 도입하였습니다. 이 아키텍처 구축을 위해 다음의 핵심 기술을 활용하였습니다.

Terraform: 인프라 환경을 코드로 관리하기 위해 Terraform을 도입하여 IaC(Infrastructure as Code) 원칙을 실현했습니다. 이를 통해 환경 간 일관성을 유지하며, 인프라 설정을 자동화하고 반복적으로 배포할 수 있게 하여 효율적이고 신뢰성 높은 인프라 구축을 지원했습니다.

Private 서버: 관리자 전용 예약 관리 시스템을 보다 안전하게 운영하기 위해 온프레미스 Private 서버에 해당 시스템을 구축하였습니다. VPN을 활용해 AWS 클라우드와 Private 서버 간 보안 연결을 설정하여, 하이브리드 클라우드 환경에서도 데이터와 시스템의 안정성을 높였습니다.

CI/CD 자동화 배포: ArgoCD, GitHub, Terraform Cloud를 연동하여 CI/CD 자동화 배포 시스템을 구현했습니다. 코드 변경이 발생할 때마다 자동으로 테스트와 배포가 이루어지도록 하여, 업데이트와 배포 주기를 단축시키고 인적 오류를 최소화했습니다. 특히 Terraform과의 통합을 통해 인프라 설정과 배포까지 자동화하여, 더욱 일관되고 안정적인 배포 프로세스를 유지할 수 있었습니다.

AWS DMS(Database Migration Service): 클라우드 전환과 데이터 동기화를 위해 AWS DMS를 활용하였습니다. 실시간으로 데이터베이스를 안전하게 이전하고 동기화할 수 있어, 서비스 중단 없이 마이그레이션을 진행할 수 있었습니다.

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

| 이름 | 최효은 | 구경범 | 노현수 |
| :------------: | :------------: | :------------: | :------------: |
|  | <img src="https://avatars.githubusercontent.com/u/174424101?v=4" width="150" /> | <img src="https://avatars.githubusercontent.com/u/174182609?v=4" width="150" /> | <img src="https://avatars.githubusercontent.com/u/175070823?v=4" width="150" /> |
| 깃허브 | [@hyoeun96](https://github.com/hyoeun96) | [@kku9](https://github.com/kku9) | [@watersooo](https://github.com/watersooo) |
| 역할 | Project Leader | Technology Leader| Engineer|
|  |  |  |  |  |  |

| 이름 | 박현우 | 송태훈 |
| :------------: | :------------: | :------------: |
|  | <img src="https://avatars.githubusercontent.com/u/96418737?v=4" width="150" />| <img src="https://avatars.githubusercontent.com/u/106800250?v=4" width="150" /> |
| 깃허브 | [@hyeeonwoo](https://github.com/hyeeonwoo) | [@SongTaeHoon](https://github.com/SongTaeHoon) |
| 역할 | Engineer | Engineer |



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

