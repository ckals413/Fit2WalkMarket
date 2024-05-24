﻿<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
 <link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>신발 등록</title>
</head>
<body>
<fmt:setLocale value='<%= request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message" >

<div class="container py-4">
   <%@ include file="menu.jsp"%>	

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold"><fmt:message key="title" /></h1>
        <p class="col-md-8 fs-4">Work2Fit Addition</p>      
      </div>
    </div>
  
	 <div class="row align-items-md-stretch">	 
   		<div class="text-end"> 
			<a href="?language=ko" >Korean</a> | <a href="?language=en" >English</a>
		</div>	
		<form name="newShoes" action="./processAddShoes.jsp" method="post" enctype ="multipart/form-data">		
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="productId" /></label>
				<div class="col-sm-3">
					<input type="text" name="productId" id="productId" class="form-control" >
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="name" /></label>
				<div class="col-sm-3">
					<input type="text" name="name" id="name" class="form-control" >
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="unitPrice" /></label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" id="unitPrice" class="form-control" >
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="brand" /></label>
				<div class="col-sm-3">
					<input type="text" name="brand"  class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="color" /></label>
				<div class="col-sm-3">
					<input type="text" name="color" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="releaseDate" /></label>
				<div class="col-sm-3">
					<input type="text" name="releaseDate" class="form-control">
				</div>
			</div>
	
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-5">
					<textarea name="description"  id="description" cols="50" rows="2"
						class="form-control" placeholder="100자 이상 적어주세요"></textarea>
				</div>
			</div>			
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="category" /></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" >
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" id="unitsInStock" class="form-control" >
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2"><fmt:message key="condition" /></label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="RealHigh " ><fmt:message key="condition_RealHigh" />
					<input type="radio" name="condition" value="High" > <fmt:message key="condition_High" /> 
					<input type="radio" name="condition" value="MiddleBottom" ><fmt:message key="condition_MiddleBottom" />
				</div>				
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<label class="col-sm-2"><fmt:message key="productImage" /></label>
				</div>
			</div>
					
			<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddShoes()">
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</div>	
</fmt:bundle>
</body>
</html>
