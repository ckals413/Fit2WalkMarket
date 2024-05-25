<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>

<html>
<head>
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
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

    <%@ include file="dbconn.jsp" %>
    <div class="row align-items-md-stretch">
        <%
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            String shoeId = request.getParameter("id"); // Get shoe ID from URL parameter

            String sql = "SELECT * FROM shoes WHERE b_id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, shoeId);
            rs = pstmt.executeQuery();
            rs.next();
        %>
        <div class="col-md-5">
            <img src="./resources/images/<%=rs.getString("b_filename")%>" style="width: 350px; height: 350px;"/>
        </div>
        <div class="col-md-6">
            <h3><b><%=rs.getString("b_name")%> </b></h3>
            <p><%=rs.getString("b_description")%>
            <p><b>신발코드 :</b><span class="badge text-bg-danger"> <%=rs.getString("b_id")%></span>
            <p><b>브랜드</b> :<%=rs.getString("b_brand")%>
            <p><b>색상</b> : <%=rs.getString("b_color")%>
            <p><b>발매일</b> : <%=rs.getString("b_releaseDate")%>
            <p><b>분류</b> : <%=rs.getString("b_category")%>
            <p><b>재고수</b> : <%=rs.getString("b_unitsInStock")%>
            <h4><%=rs.getString("b_unitPrice")%>원</h4>

            <p>
                <form name="addForm" action="./addCart.jsp?id=<%=shoeId%>" method="post">
                    <a href="#" class="btn btn-info" onclick="addToCart()"> 신발주문 &raquo;</a>
                    <a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
                    <a href="./shoes.jsp" class="btn btn-secondary"> 신발목록 &raquo;</a>
                </form>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>
