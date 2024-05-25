<%@ page contentType="text/html; charset=utf-8"%>

<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ include file="dbconn.jsp" %>

<%
request.setCharacterEncoding("UTF-8");

	
	String filename = "";
	String realFolder = "C:\\Users\\ckals\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Fit2WalkMarket\\resources\\images";
	//뒤에 부분도 Fit2WalkMarket변경해줘야함

	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
	String encType = "utf-8"; //인코딩 타입
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String brand = multi.getParameter("brand");
	String color = multi.getParameter("color");
	String releaseDate = multi.getParameter("releaseDate");	
	String description = multi.getParameter("description");	
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	
	
	int price;

	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);

	long stock;

	if (unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	PreparedStatement pstmt = null;	
	
	String sql = "insert into shoes values(?,?,?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	pstmt.setString(2, name);
	pstmt.setInt(3, price);
	pstmt.setString(4, brand);
	pstmt.setString(5, description);
	pstmt.setString(6, color);
	pstmt.setString(7, category);
	pstmt.setLong(8, stock);
	pstmt.setString(9, releaseDate);	
	pstmt.setString(10, condition);
	pstmt.setString(11, fileName);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

	response.sendRedirect("shoes.jsp");
%>
