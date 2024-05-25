<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />

<title>신발 수정</title>
</head>
<body>
<div class="container py-4">
   <%@ include file="menu.jsp"%>	

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">신발 수정</h1>
        <p class="col-md-8 fs-4">Shoes Updating</p>      
      </div>
    </div>
  <%@ include file="dbconn.jsp"%>
  <%
		String productId = request.getParameter("id");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "select * from shoes where b_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>		
	 <div class="row align-items-md-stretch">	  	
		
		<div class="col-md-5">
				<img src="./resources/images/<%=rs.getString("b_filename")%>" alt="image" style="width: 100%" />
			</div>
		<div class="col-md-7">	
		<form name="newShoes" action="./processUpdateShoes.jsp" method="post" enctype ="multipart/form-data">
		
			
			<div class="mb-3 row">
				<label class="col-sm-2">신발코드</label>
				<div class="col-sm-5">
					<input type="text" name="productId" id="productId" class="form-control" value='<%=rs.getString("b_id")%>'>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">신발명</label>
				<div class="col-sm-5">
					<input type="text" name="name" id="name" class="form-control" value='<%=rs.getString("b_name")%>'>
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-5">
					<input type="text" name="unitPrice"  id="unitPrice"class="form-control" value='<%=rs.getString("b_unitPrice")%>'>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">브랜드</label>
				<div class="col-sm-5">
					<input type="text" name="brand" class="form-control" value='<%=rs.getString("b_brand")%>'>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">색상</label>
				<div class="col-sm-5">
					<input type="text" name="color" class="form-control" value='<%=rs.getString("b_color")%>'>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">발매일</label>
				<div class="col-sm-5">
					<input type="text" name="releaseDate" class="form-control" value='<%=rs.getString("b_releaseDate")%>'>
				</div>
			</div>
	
			<div class="mb-3 row">
				<label class="col-sm-2">상세정보</label>
				<div class="col-sm-8">
					<textarea  name="description" id="description" cols="50" rows="2"
						class="form-control" placeholder="100자 이상 적어주세요"><%=rs.getString("b_description")%></textarea>
				</div>
			</div>			
			<div class="mb-3 row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-5">
					<input type="text" name="category" class="form-control" value='<%=rs.getString("b_category")%>'>
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2">재고수</label>
				<div class="col-sm-5">
					<input type="text" name="unitsInStock" id="unitsInStock"class="form-control" value='<%=rs.getString("b_unitsInStock")%>'>
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-8">
					<input type="radio" name="condition" value="RealHigh " >최상 
					<input type="radio" name="condition" value="High" >상
					<input type="radio" name="condition" value="MiddleBottom" >중/하
				</div>				
			</div>		
			
			<div class="mb-3 row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-8">
					<input type="file" name="shoesImage" class="form-control">
				</div>
			</div>
			
			<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록 " >
				</div>
			</div>
		</form>
	</div>
	<%
		}
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
	<jsp:include page="footer.jsp" />
</div>	

</body>
</html>
