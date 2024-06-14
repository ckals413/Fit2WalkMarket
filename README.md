
# 👟 JSP - 신발 구매 쇼핑몰 👟
<details>
    <summary>🌐<strong>시스템 구성도🌐</strong></summary>
    <p> 
        <img src="https://github.com/ckals413/Fit2WalkMarket/assets/124526270/316d8ab2-9a9c-4c31-bafc-85befae4f9c5" alt="image">
         <img src="https://github.com/ckals413/Fit2WalkMarket/assets/124526270/961949ea-bc88-4253-97c3-a0ace672d810" alt="image">
    </p>
    </p>
</details>

<details>
    <summary><strong>📣 프로젝트 개요 📣</strong></summary>
    <p>
        <strong>시스템 환경</strong><br>
        - 프로세서: Intel(R) Core(TM) Ultra 7 155H 3.80 GHz<br>
        - 운영 체제: 64비트 운영 체제, x64 기반 프로세서<br>
        - 설치된 RAM: 32GB
    </p>
    <p>
        <strong>설치된 JAR 파일 버전</strong><br>
        - mysql-connector-j-8.0.33.jar<br>
        - jstl-1.2_2.jar<br>
        - cos_2.jar
    </p>
    <p>
        <strong>서버 버전</strong><br>
        - Apache Tomcat 10.1.12
    </p>
    <p>
        <strong>개발 도구</strong><br>
        - 이클립스 버전: Eclipse 4.31<br>
        - JDK 버전: JDK 22
    </p>
    <p>
        <strong>프로젝트 설정</strong><br>
        1. 프로젝트를 클론 또는 다운로드합니다.<br>
        2. 이클립스에서 프로젝트를 가져옵니다.<br>
        3. 필요한 JAR 파일들을 프로젝트의 <code>lib</code> 폴더에 추가합니다.<br>
        4. Apache Tomcat 10.1.12 서버를 설정합니다.<br>
        5. 프로젝트의 빌드 경로를 설정하고, <code>mysql-connector-j-8.0.33.jar</code>, <code>jstl-1.2_2.jar</code>, <code>cos_2.jar</code> 파일들을 빌드 경로에 추가합니다.<br>
        6. 프로젝트를 실행합니다.
    </p>
    <p>
        <strong>데이터베이스 설정</strong><br>
        1. MySQL 데이터베이스를 설치하고 실행합니다.<br>
        2. 필요한 데이터베이스와 테이블을 생성합니다.<br>
        3. 프로젝트의 데이터베이스 연결 설정을 수정하여, 로컬 MySQL 인스턴스에 연결합니다.
    </p>
    <p>
        <strong>주의 사항</strong><br>
        - 모든 라이브러리와 서버 버전이 일치해야 정상적으로 작동합니다.<br>
        - JDK와 이클립스 버전도 프로젝트와 호환되는 최신 버전을 사용하는 것이 좋습니다.
    </p>
</details>




### 실행화면
welcome.jsp 페이지 화면
-	상단에 신발목록, 신발등록, 신발수정, 신발삭제를 클릭하면 해당 페이지로 넘어간다. 


![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/652e7a40-ac7f-4edd-8404-337624cdc853)


shoes.jsp 페이지 화면
-	등록된 신발목록 전체를 보여준다. 

![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/24fddcc9-d041-447b-b30a-ec87e6991185)


![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/c7f7c106-c785-4b07-884c-57da486798d3)



shoe.jsp (신발 상세정보 화면)
-	신발의 상세정보를 보여주고, 버튼을 클릭하면 주문, 장바구니, 신발목록 페이지로 넘어간다. 



![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/29449caa-b03a-4bab-90e5-1a7734218136)
shoe.jsp화면 
– 신발주문 버튼 클릭 시 

![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/731922b1-b770-438d-8803-1a09a9d19f4e)

cart.jsp – 장바구니 화면
![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/636cad59-7e2f-46e9-a09e-66851d352b37)
신발 등록 후 shoes.jsp 화면 
(샘플신발 등록)

![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/c7c319f6-7b70-43ce-acbe-ed0d1528efdc)
등록 후 shoe.jsp 상세정보 화면 
-	서버를 종료 후 다시 실행해도 삭제되지 않음

![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/d3a18a23-6741-4fe2-9adb-9bf5facd7b08)
editShoes (신발 삭제) 페이지 
-	등록되어 있던 신발 정보를 삭제한다. 

![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/1ea2194a-96ed-44a4-820b-c0372ab5a5b2)
![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/5f047003-3d63-4321-aa08-840b21e07f35)

editShoes (신발 수정) 페이지 
-	등록된 신발의 정보를 수정한다. 

![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/07750ce4-82cc-4e1a-add7-2876afd3266e)
![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/ce8bbf02-b998-46f9-a39f-bbc7cf2985b6)
![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/3e2daabb-0a72-4d09-a865-e6411811dcff)

shippingInfo.jsp 화면 (배송지를 등록한다)
![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/a1a2d6a1-2ddd-4d24-ad66-3e134b57706a)

orderConfirmation.jsp 화면 (주문 전에 장바구니에서 선택한 목록을 보여준다.)
![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/25304004-e18f-4dc1-a390-2c8ed4478d40)
thankCustomer.jsp (주문완료를 보여준다.)
![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/9eab9504-c2f4-4dac-8c54-83e73bb8599d)
주문 시 장바구니 비우기 
![image](https://github.com/ckals413/Fit2WalkMarket/assets/124526270/3d4bea62-4221-4ec7-8da0-c5d525aede5d)




