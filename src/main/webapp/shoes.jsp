<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>

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
  <%@ include file="dbconn.jsp" %> 
      
    <div class="row align-items-md-stretch text-center">       
    <%
    	PreparedStatement pstmt = null;
			ResultSet rs = null;
	
			String sql = "select * from shoes";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
    %>
        <div class="col-md-4">
            <div class="h-100 p-2">	
       			<img src="./resources/images/<%=rs.getString("b_filename")%>" style="width: 250; height:250" />		
				<h5><b><%=rs.getString("b_name")%></b></h5>
				<p><%=rs.getString("b_brand")%>
				<br> <%=rs.getString("b_color")%> | <%=rs.getString("b_unitPrice")%>원
				<p> <%=rs.getString("b_description").substring(0,20)%>....
				<p><%=rs.getString("b_unitPrice")%>원
				<p><a href="./shoe.jsp?id=<%=rs.getString("b_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>	
			</div>	
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
    </div>   
    <%@ include file="footer.jsp"%>   
  </div>
</body>
</html>