<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Shoes"%>
<%@ page import="dao.ShoesRepository"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("books.jsp");
		return;
	}

	ShoesRepository dao = ShoesRepository.getInstance();
	
	Shoes shoes = dao.getShoesById(id);
	if (shoes == null) {
		//response.sendRedirect("exceptionNoBookId.jsp"); 아직 없음.. 
	}

	ArrayList<Shoes> cartList = (ArrayList<Shoes>) session.getAttribute("cartlist");
	Shoes goodsQnt = new Shoes();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cart.jsp");
%>
