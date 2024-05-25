<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Shoes"%>
<%@ page import="dao.ShoesRepository"%>
<html>
<head>
 <link href = "./resources/css/bootstrap.min.css" rel="stylesheet">
 <title>신발 목록</title>
 <!--사용자 정의 CSS -->
 <style>
    .custom-btn {
        background-color: #4CAF50; 
        color: white;
    }
    
 </style>
</head>
<body>
<div class="container py-4">
   <%@ include file="menu.jsp"%>   
   
   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">신발목록</h1>
        <p class="col-md-8 fs-4">ShoeList</p>      
      </div>
    </div>
   <%
   ShoesRepository dao = ShoesRepository.getInstance();
   ArrayList<Shoes> listOfShoes = dao.getAllShoes();
   %>   
      
    <div class="row align-items-md-stretch text-center">       
    <%
       for (int i = 0; i < listOfShoes.size(); i++) {
          Shoes shoes = listOfShoes.get(i);
    %>
        <div class="col-md-4">
            <div class="h-100 p-2">	
       			<img src="./resources/images/<%=shoes.getFilename()%>" style="width: 250; height:250" />		    
            <h5><b><%=shoes.getName()%></b></h5>
            <p><%=shoes.getBrand()%>
            <br> <%=shoes.getColor()%> | <%=shoes.getUnitPrice()%>원
            <p> <%=shoes.getDescription().substring(0,25)%>...
            <p><%=shoes.getUnitPrice()%>원
            
            <!--사용자 정의 CSS -->
            <p><a href="./shoe.jsp?id=<%=shoes.getProductId()%>" class="btn custom-btn" role="button"> 상세 정보 &raquo;</a>
         </div>   
      </div>         
    <%
      }
    %>   
    </div>   
    <%@ include file="footer.jsp"%>   
  </div>
</body>
</html>