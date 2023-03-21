# 이젠아카데미 1차 팀프로젝트  
## 개요  
1) 교육과정 : AWS환경 데이터 분석 플랫폼 풀스택 개발 (2022.09.22 ~ 2023.04.18)  
2) 프로젝트명 : 코드그린 (유기농 프리미엄 쇼핑몰)  
3) 목표 : 교육과정에서 배운 프로그래밍 언어와 프레임워크를 활용하여 쇼핑몰 사이트와 쇼핑몰 관리 사이트 개발  
4) 기획의도 1 : 직관적이고 간단한 UI로 이용이 쉬운 관리자 페이지 구성  
5) 기획의도 2 : 유기농, 초록색이라는 컨셉에 맞춰 소비자 입장에서 고려한 화면 설계  
6) 기간 : 2023.02.10 ~ 2023.03.20  

## 프로젝트  
1) 미리보기  
소비자 페이지  
![preview_front](https://user-images.githubusercontent.com/109140000/226315503-7e3bcc3e-8a38-4de1-a0ec-d57e53a1d0b8.png)  
관리자 페이지  
![preview_back png](https://user-images.githubusercontent.com/109140000/226315474-b1fc1f2a-3e2b-4b7b-8ccf-abfd77228b08.jpg)  

2) 개발 환경  
Back : Java(SE11), Spring MVC(Spring Legacy), MyBatis  
Front : HTML5 & JSP, CSS3, Bootstrap 5, JavaScript(ES6) & jQuery, Vue.js(Vue3)  
APIs : chart.js, Google chart tools, DAUM 주소 API  
DB : MySQL 8.0 (AWS)  
Server : Apache Tomcat 9.0, Node.js  
Tool : STS, VS code  
OS : Windows 10, Mac OS  

3) 나의 역할 / 작업 내용  
소비자에게 직접적으로 노출되는 페이지들을 제작하는 역할을 맡았으며 페이지 구성부터 기능 구현까지의 작업 전반을 진행했다. '소비자 입장에서 고려한 화면 설계'라는 기획 의도에 따라 Vue.js로 SPA를 제작하여, 빠른 반응 속도와 페이지 이동시 발생하지 않는 랜더링, 통일된 UX 등을 제공하여 사용자의 편의를 증대하고자 했다. 추가로 DB에서 조건에 맞는 상품들을 추출하여 페이지에 전시함으로써 소비자의 입장에서 유용한 정보를 전달하고자 했다. 프로젝트 내에서 구현된 정보는 주문량 기준 누적 판매량 상위 10개 품목이며, 이 정보를 페이지에 전시하기 위한 모든 작업도 본인이 진행했다. 페이지 내의 구성 요소들 중 광고 배너 캐러셀은 Bootstrap을 활용하여 제작했으며, 가로/세로 내비게이션바, 인기 상품 전시 캐러셀, 실시간 검색어 순위 등의 나머지 구성 요소들은 JavaScript를 활용하여 직접 구현했다.  
주요 기능 구현에 있어서는 로그인과 회원가입을 담당했다. 로그인의 경우 클라이언트와 서버 사이의 자료 송수신은 Axios 라이브러리를 사용하였고, 서버로부터 클라이언트에 전달된 결과값에 대해서는 Vuex와 Vuex-Persistedstate를 통해 실질적인 로그인 기능 구현에 활용했다. 회원가입의 경우 로그인과는 달리 JSP로 페이지를 제작했으며, 클라이언트와 서버 사이의 자료 송수신은 AJAX를 활용했다. 사용자 입력값은 서버로 전송하기 전 정규식과 조건문을 활용하여 입력값의 유효성(형식, 길이 등)을 검사했으며, 배송지의 경우 DAUM 주소 API를 활용하여 값을 입력받았다.  
구체적인 개인 작업내용과 프로젝트 종료 이후 추가적으로 진행한 작업(카카오 API 활용한 로그인) 내용에 대해서는 아래의 깃허브 레포지토리에서 확인 가능하다.  
https://github.com/SiHoonChris/TeamProject_FrontEnd  
https://github.com/SiHoonChris/TeamProject_BackEnd  

## 참고   
1) 팀 작업 내용  
https://github.com/DaEunPark/GreenerFront/tree/main  
https://github.com/DaEunPark/Greener/tree/develop  

2) PPT 자료  
https://docs.google.com/presentation/d/1O7X9-Eavk8PvPwM02AdQtwmApgGUPKeb/edit?usp=share_link&ouid=109528451537616400787&rtpof=true&sd=true  

3) 동영상  
https://drive.google.com/file/d/1Pf-pWj-N6gtzlNigYJjpZXxakRkpybir/view?usp=share_link  
