<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Shoes"%>
<%@ page import="dao.ShoesRepository"%>

<html>
<head>
 <link href = "./resources/css/bootstrap.min.css" rel="stylesheet">

<title>신발 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>


</head>
<body>
<div class="container py-4">
   <%@ include file="menu.jsp"%>	

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">신발정보</h1>
        <p class="col-md-8 fs-4">ShoeInfo</p>      
      </div>
    </div>
	
	<%
		String id = request.getParameter("id");
			    ShoesRepository dao = ShoesRepository.getInstance();
			    Shoes shoes = dao.getShoesById(id);
		%>
	 <div class="row align-items-md-stretch">	 	
			<div class="col-md-5">
				<img src="./resources/images/<%=shoes.getFilename()%>" style="width: 70%">
			</div>
			<div class="col-md-6">
				<h3><b><%=shoes.getName()%></b></h3>
				<p><%=shoes.getDescription()%>
				<p><b>신발코드 : </b><span class="badge text-bg-danger"> <%=shoes.getProductId()%></span>							
				<p><b>브랜드</b> : <%=shoes.getBrand()%>	
				<p><b>색상</b> : <%=shoes.getColor()%>	
				<p><b>발매일</b> : <%=shoes.getReleaseDate()%>					
				<p><b>분류</b> : <%=shoes.getCategory()%>
				<p><b>재고수</b> : <%=shoes.getUnitsInStock()%>
				<h4><%=shoes.getUnitPrice()%>원</h4>
				
				<p><form name="addForm" action="./addCart.jsp?id=<%=shoes.getProductId()%>" method="post"><a href="#" class="btn btn-info" onclick="addToCart()"> 신발주문 &raquo;</a> 
				    <a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>		
				
					<a href="./shoes.jsp" class="btn btn-secondary"> 신발목록 &raquo;</a>
					</form>
			</div>
		</div>
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>
