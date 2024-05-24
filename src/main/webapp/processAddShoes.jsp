<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Shoes"%>
<%@ page import="dao.ShoesRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>

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
	
	ShoesRepository dao = ShoesRepository.getInstance();

	Shoes newShoes = new Shoes();
	newShoes.setProductId(productId);
	newShoes.setName(name);
	newShoes.setUnitPrice(price);
	newShoes.setBrand(brand);
	newShoes.setColor(color);
	newShoes.setReleaseDate(releaseDate);
	newShoes.setDescription(description);
	newShoes.setCategory(category);
	newShoes.setUnitsInStock(stock);
	newShoes.setCondition(condition);
	newShoes.setFilename(fileName);

	dao.addShoes(newShoes);

	response.sendRedirect("shoes.jsp");
%>
